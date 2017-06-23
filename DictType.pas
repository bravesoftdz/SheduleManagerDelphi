unit DictType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Menus;

type
  TfrmDictType = class(TForm)
    gr_DictTypeDBTableView1: TcxGridDBTableView;
    gr_DictTypeLevel1: TcxGridLevel;
    gr_DictType: TcxGrid;
    sp_DictType: TADOStoredProc;
    ds_DictType: TDataSource;
    sp_DictTypeDict_Type_ID: TAutoIncField;
    sp_DictTypeDict_Name: TStringField;
    gr_DictTypeDBTableView1Dict_Type_ID: TcxGridDBColumn;
    gr_DictTypeDBTableView1Dict_Name: TcxGridDBColumn;
    pm_DictType: TPopupMenu;
    n_Insert: TMenuItem;
    n_Edit: TMenuItem;
    n_Delete: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure n_DeleteClick(Sender: TObject);
    procedure n_InsertClick(Sender: TObject);
    procedure gr_DictTypeDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure n_EditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDictType: TfrmDictType;

implementation

{$R *.dfm}

uses MainData, DictTypeEdit, Dict, DictColumns, Main;

procedure TfrmDictType.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmDictType := nil;
end;

procedure TfrmDictType.FormShow(Sender: TObject);
begin
  sp_DictType.Close;
  sp_DictType.Open;
end;

procedure TfrmDictType.gr_DictTypeDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Application.CreateForm(TfrmDict, frmDict);
  frmDict.Caption := 'Справочник ' + sp_DictType.FieldByName('Dict_Type_ID').AsString
    + ' - ' + sp_DictType.FieldByName('Dict_Name').AsString;
  frmDict.DictTypeID := sp_DictType.FieldByName('Dict_Type_ID').AsInteger;
  frmMain.AdvOfficeMDITabSet1.AddTab(frmDict);
  frmDict.Show;

end;

procedure TfrmDictType.n_DeleteClick(Sender: TObject);
var
  sp_DictTypeDelete : TADOStoredProc;
  buttonSelected : Integer;
  dictNumber : Integer;
begin
  dictNumber := sp_DictType.FieldByName('Dict_Type_ID').AsInteger;
  if (MessageDlg('Вы уверены, что хотите удалить справочник [' + IntToStr(dictNumber) + ']?',
    mtConfirmation, mbYesNo, 0)) = mrYes then
  begin
    try
      sp_DictTypeDelete := TADOStoredProc.Create(nil);
      sp_DictTypeDelete.Active := False;
      sp_DictTypeDelete.Connection := DM.ADOConnection;
      sp_DictTypeDelete.ProcedureName := 'dbo.p_Dict_Type_Delete';
      sp_DictTypeDelete.Parameters.Clear;
      sp_DictTypeDelete.Parameters.Refresh;
      sp_DictTypeDelete.Parameters.ParamByName('@Dict_Type_ID').Value :=
        sp_DictType.FieldByName('Dict_Type_ID').AsInteger;
      sp_DictTypeDelete.ExecProc;
      buttonSelected := MessageDlg('Справочник успешно удален!', mtInformation, [mbOk], 0);
      sp_DictType.Close;
      sp_DictType.Open;
    finally
      sp_DictTypeDelete.Free;
    end;
  end;
end;

procedure TfrmDictType.n_EditClick(Sender: TObject);
begin
  if (frmDictColumns <> nil) then frmDictColumns.Free;
  Application.CreateForm(TfrmDictColumns, frmDictColumns);
  frmDictColumns.DictTypeID := sp_DictType.FieldByName('Dict_Type_ID').AsInteger;
  frmDictColumns.Caption := 'Настройка справочника [' + sp_DictType.FieldByName('Dict_Type_ID').AsString + ']';
  frmMain.AdvOfficeMDITabSet1.AddTab(frmDictColumns);
  frmDictColumns.Show;
end;

procedure TfrmDictType.n_InsertClick(Sender: TObject);
var
  buttonSelected : Integer;
begin
  if (frmDictTypeEdit = nil) then Application.CreateForm(TfrmDictTypeEdit, frmDictTypeEdit);
  frmDictTypeEdit.ShowModal;
  if (frmDictTypeEdit.ModalResult = mrOk) then
  begin
    buttonSelected := MessageDlg('Справочник успешно создан!', mtInformation, [mbOK], 0);
    sp_DictType.Close;
    sp_DictType.Open;
  end;
end;

end.
