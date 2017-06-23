unit Dict;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, Menus,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid;

type
  TfrmDict = class(TForm)
    gr_DictView: TcxGridDBTableView;
    gr_DictLevel1: TcxGridLevel;
    gr_Dict: TcxGrid;
    sp_Dict: TADOStoredProc;
    ds_Dict: TDataSource;
    pm_Dict: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gr_DictViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure RecordEdit(act: Integer);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    DictTypeID : Integer;
    Action: Integer;
  end;

var
  frmDict: TfrmDict;

implementation

{$R *.dfm}

uses MainData, DictTypeEdit, DictType, DictEdit;

procedure TfrmDict.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmDict := nil;
end;

procedure TfrmDict.FormCreate(Sender: TObject);
begin
  sp_Dict.Close;
  sp_Dict.Parameters.Clear;
  sp_Dict.Parameters.Refresh;
  sp_Dict.Parameters.ParamByName('@Dict_Type_ID').Value := frmDictType.sp_DictTypeDict_Type_ID.AsInteger;
  DictTypeID := frmDictType.sp_DictTypeDict_Type_ID.AsInteger;
  sp_Dict.Open;
  sp_Dict.Refresh;
  gr_DictView.ClearItems;
  gr_DictView.DataController.CreateAllItems();
end;

procedure TfrmDict.FormShow(Sender: TObject);
begin
{
  sp_Dict.Close;
  sp_Dict.Parameters.Clear;
  sp_Dict.Parameters.Refresh;
  sp_Dict.Parameters.ParamByName('@Dict_Type_ID').Value := DictTypeID;
  sp_Dict.Open;
  sp_Dict.Refresh;
  gr_DictView.ClearItems;
  gr_DictView.DataController.CreateAllItems();
  }
end;

procedure TfrmDict.gr_DictViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  RecordEdit(2);
end;

procedure TfrmDict.RecordEdit(act: Integer);
begin
  try
    if frmDictEdit = nil then Application.CreateForm(TfrmDictEdit, frmDictEdit);
    Action := act;
    frmDictEdit.ShowModal;
  finally
    frmDictEdit.Free;
    frmDictEdit := nil;
  end;

end;


procedure TfrmDict.N1Click(Sender: TObject);
begin
  RecordEdit(2);
end;

procedure TfrmDict.N2Click(Sender: TObject);
begin
  RecordEdit(1);
end;

procedure TfrmDict.N3Click(Sender: TObject);
var
  buttonSelected: Integer;
  sp_Delete: TADOStoredProc;
begin
  if (MessageDlg('Удалить текущую запись?', mtConfirmation, mbYesNo, 0) = mrYes) then
  begin
    sp_Delete := TADOStoredProc.Create(nil);
    sp_Delete.Close;
    sp_Delete.Connection := DM.ADOConnection;
    sp_Delete.ProcedureName := 'dbo.p_Dict_Delete';
    sp_Delete.Parameters.Clear;
    sp_Delete.Parameters.Refresh;
    sp_Delete.Parameters.ParamByName('@Dict_Type_ID').Value := DictTypeID;
    sp_Delete.Parameters.ParamByName('@ID_Dict').Value := sp_Dict.FieldByName('Код').AsInteger;
    try
      sp_Delete.ExecProc;
      sp_Dict.Close;
      sp_Dict.Open;
      buttonSelected := MessageDlg('Запись успешно удалена!', mtInformation, [mbOK], 0);
    finally
      sp_Delete.Free;
    end;
  end;
end;

end.
