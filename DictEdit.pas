unit DictEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxCheckBox, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, Menus, cxButtons;

type
  TfrmDictEdit = class(TForm)
    sp_Columns: TADOStoredProc;
    ds_Columns: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    Action: Integer;
    DictTypeID: Integer;
  end;

var
  frmDictEdit: TfrmDictEdit;

implementation

{$R *.dfm}

uses MainData, Dict, Main;

procedure TfrmDictEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmDictEdit := nil;
end;

procedure TfrmDictEdit.FormCreate(Sender: TObject);
var
  i: Integer;
  columnType: Integer;
  te_Edit: TcxTextEdit;
  cx_Date: TcxDateEdit;
  cx_Check: TcxCheckBox;
  cx_Lookup: TcxLookupComboBox;
  sp_Dict: TADOStoredProc;
  ds_Dict: TDataSource;
  top: Integer;
  left: Integer;
  lbl_Field: TLabel;
  cx_Btn: TcxButton;
begin
  sp_Columns.Close;
  sp_Columns.Parameters.Clear;
  sp_Columns.Parameters.Refresh;
  sp_Columns.Parameters.ParamByName('@Dict_Type_ID').Value := frmMain.DictTypeID;
  if frmMain.Action = 2 then
    sp_Columns.Parameters.ParamByName('@ID_Dict').Value := frmDict.sp_Dict.FieldByName('Код').AsInteger;
  sp_Columns.Open;
  sp_Columns.First;
  top := 10;
  left := 170;
  for i := 0 to sp_Columns.RecordCount - 1 do
  begin
    columnType := sp_Columns.FieldByName('Column_Type').AsInteger;
    case columnType of
      // Текстовое поле
      1: begin
        lbl_Field := TLabel.Create(frmDictEdit);
        lbl_Field.Parent := frmDictEdit;
        lbl_Field.Caption := sp_Columns.FieldByName('Column_Name').AsString;
        lbl_Field.Top := top;
        lbl_Field.Left := 10;
        lbl_Field.Width := 100;

        te_Edit := TcxTextEdit.Create(frmDictEdit);
        te_Edit.Parent := frmDictEdit;
        te_Edit.Name := sp_Columns.FieldByName('Field').AsString;
        if frmMain.Action = 2 then
          te_Edit.Text := sp_Columns.FieldByName('Value').AsString
        else te_Edit.Text := '';
        te_Edit.Top := top;
        te_Edit.Left := left;
        te_Edit.Width := 200;
        top := top + te_Edit.Height + 10;
      end;
      // Целое число
      2: begin
        lbl_Field := TLabel.Create(frmDictEdit);
        lbl_Field.Parent := frmDictEdit;
        lbl_Field.Caption := sp_Columns.FieldByName('Column_Name').AsString;
        lbl_Field.Top := top;
        lbl_Field.Left := 10;
        lbl_Field.Width := 100;

        te_Edit := TcxTextEdit.Create(frmDictEdit);
        te_Edit.Parent := frmDictEdit;
        te_Edit.Name := sp_Columns.FieldByName('Field').AsString;
        if frmMain.Action = 2 then
          te_Edit.Text := sp_Columns.FieldByName('Value').AsString
        else te_Edit.Text := '';
        te_Edit.Top := top;
        te_Edit.Left := left;
        te_Edit.Width := 200;
        top := top + te_Edit.Height + 10;
      end;
      // Дата/Время
      3: begin
        lbl_Field := TLabel.Create(frmDictEdit);
        lbl_Field.Parent := frmDictEdit;
        lbl_Field.Caption := sp_Columns.FieldByName('Column_Name').AsString;
        lbl_Field.Top := top;
        lbl_Field.Left := 10;
        lbl_Field.Width := 100;

        cx_Date := TcxDateEdit.Create(frmDictEdit);
        cx_Date.Parent := frmDictEdit;
        cx_Date.Name := sp_Columns.FieldByName('Field').AsString;
        if frmMain.Action = 2 then
          cx_Date.Date := StrToDate(sp_Columns.FieldByName('Value').AsString);
        cx_Date.Top := top;
        cx_Date.Left := left;
        cx_Date.Width := 200;
        top := top + cx_Date.Height + 10;
      end;
      // Да/Нет
      4: begin
        cx_Check := TcxCheckBox.Create(frmDictEdit);
        cx_Check.Parent := frmDictEdit;
        cx_Check.Name := sp_Columns.FieldByName('Field').AsString;
        cx_Check.Caption := sp_Columns.FieldByName('Column_Name').AsString;
        if frmMain.Action = 2 then
          cx_Check.Checked := sp_Columns.FieldByName('Value').AsBoolean;

        cx_Check.Top := top;
        cx_Check.Left := left;
        top := top + cx_Check.Height + 10;
      end;
      // Ссылка на справочник
      5: begin
        lbl_Field := TLabel.Create(frmDictEdit);
        lbl_Field.Parent := frmDictEdit;
        lbl_Field.Caption := sp_Columns.FieldByName('Column_Name').AsString;
        lbl_Field.Top := top;
        lbl_Field.Left := 10;
        lbl_Field.Width := 100;

        cx_Lookup := TcxLookupComboBox.Create(frmDictEdit);
        cx_Lookup.Parent := frmDictEdit;
        cx_Lookup.Name := sp_Columns.FieldByName('Field').AsString;
        sp_Dict := TADOStoredProc.Create(frmDictEdit);
        sp_Dict.Name := 'sp_' + sp_Columns.FieldByName('Field').AsString;
        sp_Dict.Close;
        sp_Dict.Connection := DM.ADOConnection;
        sp_Dict.ProcedureName := 'dbo.p_Dict';
        sp_Dict.Parameters.Clear;
        sp_Dict.Parameters.Refresh;
        sp_Dict.Parameters.ParamByName('@Dict_Type_ID').Value := sp_Columns.FieldByName('Dict_Link').AsInteger;
        sp_Dict.Open;
        ds_Dict := TDataSource.Create(frmDictEdit);
        ds_Dict.Name := 'ds_' + sp_Columns.FieldByName('Field').AsString;
        ds_Dict.DataSet := sp_Dict;
        cx_Lookup.Properties.ListSource := ds_Dict;
        cx_Lookup.Properties.KeyFieldNames := 'Код';
        cx_Lookup.Properties.ListFieldNames := 'Наименование';
        if frmMain.Action = 2 then
          if not(sp_Columns.FieldByName('Value').IsNull) then
            cx_Lookup.EditValue := sp_Columns.FieldByName('Value').AsString;
        cx_Lookup.Top := top;
        cx_Lookup.Left := left;
        cx_Lookup.Width := 200;
        top := top + cx_Lookup.Height + 10;
      end;
    end;
    sp_Columns.Next;
  end;

  // Кнопка "Сохранить"
  cx_Btn := TcxButton.Create(frmDictEdit);
  cx_Btn.Parent := frmDictEdit;
  cx_Btn.Name := 'btnSave';
  cx_Btn.ModalResult := mrOk;
  cx_Btn.Caption := 'Сохранить';
  cx_Btn.Top := top + 10;
  cx_Btn.Left := 85;
  cx_Btn.OnClick := btnSaveClick;

    // Кнопка "Отмена"
  cx_Btn := TcxButton.Create(frmDictEdit);
  cx_Btn.Parent := frmDictEdit;
  cx_Btn.Name := 'btnCancel';
  cx_Btn.ModalResult := mrCancel;
  cx_Btn.Caption := 'Отмена';
  cx_Btn.Top := top + 10;
  cx_Btn.Left := 240;
  top := top + cx_Btn.Height + 10;

  frmDictEdit.Height := top + 50;
  if frmMain.Action = 1 then frmDictEdit.Caption := 'Добавление записи'
  else if frmMain.Action = 2 then frmDictEdit.Caption := 'Редактирование записи';

end;

procedure TfrmDictEdit.btnSaveClick(Sender: TObject);
var
  sp_Save: TADOStoredProc;
  i: Integer;
begin
  sp_Save := TADOStoredProc.Create(nil);
  sp_Save.Close;
  sp_Save.Connection := DM.ADOConnection;
  sp_Save.ProcedureName := 'dbo.p_Dict_Save';
  sp_Save.Parameters.Clear;
  sp_Save.Parameters.Refresh;
  sp_Save.Parameters.ParamByName('@Action').Value := frmMain.Action;
  sp_Save.Parameters.ParamByName('@Dict_Type_ID').Value := frmMain.DictTypeID;
  if frmMain.Action = 2 then
      sp_Save.Parameters.ParamByName('@ID_Dict').Value := frmDict.sp_Dict.FieldByName('Код').AsInteger;
  for i := 0 to frmDictEdit.ComponentCount - 1 do
  begin
    with frmDictEdit do
    begin
      if (Components[i] is TcxTextEdit) then
      begin
          if (Components[i] as TcxTextEdit).Text <> '' then
          begin
            sp_Save.Parameters.ParamByName('@'+(Components[i] as TcxTextEdit).Name).Value := (Components[i] as TcxTextEdit).Text;
          end;
      end
      else if (Components[i] is TcxDateEdit) then
      begin
          if VarToStr((Components[i] as TcxDateEdit).EditValue) <> '' then
          begin
            sp_Save.Parameters.ParamByName('@'+(Components[i] as TcxDateEdit).Name).Value := (Components[i] as TcxDateEdit).Date;
          end;
      end
      else if (Components[i] is TcxLookupComboBox) then
      begin
          if (Components[i] as TcxLookupComboBox).EditText <> '' then
          begin
            sp_Save.Parameters.ParamByName('@'+(Components[i] as TcxLookupComboBox).Name).Value := (Components[i] as TcxLookupComboBox).EditValue;
          end;
      end
    end;
  end;
  try
    sp_Save.ExecProc;
    frmDict.sp_Dict.Close;
    frmDict.sp_Dict.Open;
    if frmMain.Action = 1 then ShowMessage('Запись успешно добавлена');
  finally
    sp_Save.Free;
  end;
end;

end.
