unit DictColumns;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ADODB, Menus;

type
  TfrmDictColumns = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    sp_DictTypeColumns: TADOStoredProc;
    ds_DictTypeColumns: TDataSource;
    sp_DictTypeColumnsDict_Columns_ID: TAutoIncField;
    sp_DictTypeColumnsField: TStringField;
    sp_DictTypeColumnsColumn_Name: TStringField;
    sp_DictTypeColumnsColumn_Type: TIntegerField;
    sp_DictTypeColumnsDict_Link: TIntegerField;
    cxGrid1DBTableView1Dict_Columns_ID: TcxGridDBColumn;
    cxGrid1DBTableView1Field: TcxGridDBColumn;
    cxGrid1DBTableView1Column_Name: TcxGridDBColumn;
    cxGrid1DBTableView1Column_Type: TcxGridDBColumn;
    cxGrid1DBTableView1Dict_Link: TcxGridDBColumn;
    sp_DictTypeColumnsColumn_Type_Name: TStringField;
    cxGrid1DBTableView1Column_Type_Name: TcxGridDBColumn;
    pm_DictColumns: TPopupMenu;
    n_Insert: TMenuItem;
    n_Edit: TMenuItem;
    N3: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure n_InsertClick(Sender: TObject);
    procedure n_EditClick(Sender: TObject);
  private
    { Private declarations }
  public
    DictTypeID : Integer;
  end;

var
  frmDictColumns: TfrmDictColumns;

implementation

{$R *.dfm}

uses MainData, DictType, DictColumnsEdit;

procedure TfrmDictColumns.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if (frmDictColumnsEdit = nil) then Application.CreateForm(TfrmDictColumnsEdit, frmDictColumnsEdit);
   frmDictColumnsEdit.Show;
end;

procedure TfrmDictColumns.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmDictColumns := nil;
end;

procedure TfrmDictColumns.FormShow(Sender: TObject);
begin
  sp_DictTypeColumns.Close;
  DictTypeID := frmDictType.sp_DictType.FieldByName('Dict_Type_ID').AsInteger;
  sp_DictTypeColumns.Parameters.ParamByName('@Dict_Type_ID').Value := DictTypeID;
  sp_DictTypeColumns.Open;
end;

procedure TfrmDictColumns.n_EditClick(Sender: TObject);
begin
  if (frmDictColumnsEdit = nil) then Application.CreateForm(TfrmDictColumnsEdit, frmDictColumnsEdit);
  frmDictColumnsEdit.DictTypeID := DictTypeID;
  frmDictColumnsEdit.Action := 2;
  frmDictColumnsEdit.DictColumnsID := sp_DictTypeColumns.FieldByName('Dict_Columns_ID').AsInteger;
  frmDictColumnsEdit.Caption := 'Изменение поля [' + sp_DictTypeColumnsColumn_Name.AsString + ']';
  frmDictColumnsEdit.ShowModal;
  if frmDictColumnsEdit.ModalResult = mrOk then
  begin
    sp_DictTypeColumns.Close;
    sp_DictTypeColumns.Open;
  end;
  frmDictColumnsEdit.Free;
  frmDictColumnsEdit := nil;
end;

procedure TfrmDictColumns.n_InsertClick(Sender: TObject);
begin
  if (frmDictColumnsEdit = nil) then Application.CreateForm(TfrmDictColumnsEdit, frmDictColumnsEdit);
  frmDictColumnsEdit.DictTypeID := DictTypeID;
  frmDictColumnsEdit.Action := 1;
  frmDictColumnsEdit.Caption := 'Добавление нового поля';
  frmDictColumnsEdit.ShowModal;
  if frmDictColumnsEdit.ModalResult = mrOk then
  begin
    sp_DictTypeColumns.Close;
    sp_DictTypeColumns.Open;
    frmDictColumnsEdit.Free;
    frmDictColumnsEdit := nil;
  end;
end;

end.
