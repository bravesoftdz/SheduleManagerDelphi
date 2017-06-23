unit DictColumnsEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  DB, ADODB, StdCtrls, Menus, cxButtons;

type
  TfrmDictColumnsEdit = class(TForm)
    sp_ColumnType: TADOStoredProc;
    ds_ColumnType: TDataSource;
    sp_ColumnTypeColumn_Type_ID: TAutoIncField;
    sp_ColumnTypeColumn_Type_Name: TStringField;
    lcb_ColumnType: TcxLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    lcb_Field: TcxLookupComboBox;
    te_Name: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Label3: TLabel;
    lcb_DictType: TcxLookupComboBox;
    Label4: TLabel;
    sp_DictType: TADOStoredProc;
    ds_DictType: TDataSource;
    sp_DictTypeDict_Type_ID: TAutoIncField;
    sp_DictTypeDict_Name: TStringField;
    sp_Fields: TADOStoredProc;
    ds_Fields: TDataSource;
    sp_FieldsNumber: TIntegerField;
    sp_FieldsName: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure lcb_ColumnTypePropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    DictTypeID : Integer;
    Action : Integer;
    DictColumnsID : Integer;
  end;

var
  frmDictColumnsEdit: TfrmDictColumnsEdit;

implementation

{$R *.dfm}

uses MainData, DictColumns;

procedure TfrmDictColumnsEdit.cxButton1Click(Sender: TObject);
var
  buttonSelected : Integer;
  sp_Save : TADOStoredProc;
begin
  if te_Name.Text = '' then
    buttonSelected := MessageDlg('Поле "Название" не заполнено', mtWarning, [mbOK], 0);
  if lcb_Field.EditText = '' then
    buttonSelected := MessageDlg('Поле "Поле в БД" не заполнено', mtWarning, [mbOK], 0);
  if lcb_ColumnType.EditText = '' then
    buttonSelected := MessageDlg('Поле "Тип поля" не заполнено', mtWarning, [mbOK], 0);
  sp_Save := TADOStoredProc.Create(nil);
  sp_Save.Close;
  sp_Save.Connection := DM.ADOConnection;
  sp_Save.ProcedureName := 'dbo.p_Dict_Columns_Save';
  sp_Save.Parameters.Clear;
  sp_Save.Parameters.Refresh;
  sp_Save.Parameters.ParamByName('@Action').Value := Action;
  if Action <> 1 then
    sp_Save.Parameters.ParamByName('@Dict_Columns_ID').Value := DictColumnsID;
  sp_Save.Parameters.ParamByName('@Dict_Type_ID').Value := DictTypeID;
  sp_Save.Parameters.ParamByName('@Field').Value := lcb_Field.EditText;
  sp_Save.Parameters.ParamByName('@Column_Name').Value := te_Name.Text;
  sp_Save.Parameters.ParamByName('@Column_Type').Value := lcb_ColumnType.EditValue;
  if lcb_ColumnType.EditValue = 5 then
    sp_Save.Parameters.ParamByName('@Dict_Link').Value := lcb_DictType.EditValue;
  try
    sp_Save.ExecProc;
  finally
    sp_Save.Free;
  end;
end;

procedure TfrmDictColumnsEdit.FormShow(Sender: TObject);
begin
  sp_ColumnType.Close;
  sp_ColumnType.Open;
  lcb_Field.Enabled := False;
  lcb_DictType.Enabled := False;
  if Action = 2 then
  begin
    te_Name.Text := frmDictColumns.sp_DictTypeColumns.FieldByName('Column_Name').AsString;
    sp_ColumnType.Close;
    sp_ColumnType.Open;
    lcb_ColumnType.EditValue := frmDictColumns.sp_DictTypeColumns.FieldByName('Column_Type').AsInteger;
    sp_Fields.Close;
    sp_Fields.Open;
    //sp_Fields.Locate('Name', frmDictColumns.sp_DictTypeColumns.FieldByName('Field').AsString, []);

    lcb_Field.EditValue :=
      sp_Fields.Lookup('Name', frmDictColumns.sp_DictTypeColumns.FieldByName('Field').AsString, 'Number');


    if frmDictColumns.sp_DictTypeColumns.FieldByName('Column_Type').AsInteger = 5 then
    begin
      lcb_DictType.EditValue := frmDictColumns.sp_DictTypeColumns.FieldByName('Dict_Link').AsInteger;
    end;



  end;
end;

procedure TfrmDictColumnsEdit.lcb_ColumnTypePropertiesChange(Sender: TObject);
begin
  sp_Fields.Close;
  sp_Fields.Parameters.Clear;
  sp_Fields.Parameters.Refresh;
  sp_Fields.Parameters.ParamByName('@Dict_Type_ID').Value := DictTypeID;
  sp_Fields.Parameters.ParamByName('@Column_Type_ID').Value := lcb_ColumnType.EditValue;
  if Action = 2 then
    sp_Fields.Parameters.ParamByName('@Dict_Columns_ID').Value := DictColumnsID;

  sp_Fields.Open;
  sp_Fields.First;
  lcb_Field.EditValue := sp_Fields.FieldByName('Number').AsInteger;
  case lcb_ColumnType.EditValue of
    // Текстовое
    1: begin
      lcb_Field.Enabled := True;
      lcb_DictType.Enabled := False;
    end;
    // Целое число
    2: begin
      lcb_Field.Enabled := True;
      lcb_DictType.Enabled := False;
    end;
    // Дата/время
    3: begin
      lcb_Field.Enabled := True;
      lcb_DictType.Enabled := False;
    end;
    // Да/Нет
    4: begin
      lcb_Field.Enabled := True;
      lcb_DictType.Enabled := False;
    end;
    // Ссылка на справочник
    5: begin
      sp_DictType.Close;
      sp_DictType.Open;
      lcb_Field.Enabled := True;
      lcb_DictType.Enabled := True;
    end;
  end;

end;

end.
