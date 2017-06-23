unit Dictionaries;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ADODB, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxGridBandedTableView, StdCtrls, ComCtrls, Mask, dxBar,
  cxGridDBBandedTableView;

type
  TfrmDictionaries = class(TForm)
    gr_DictionariesListDBTableView1: TcxGridDBTableView;
    gr_DictionariesListLevel1: TcxGridLevel;
    gr_DictionariesList: TcxGrid;
    sp_DictionariesList: TADOStoredProc;
    ds_DictionariesList: TDataSource;
    sp_DictionariesListDictionaries_ID: TAutoIncField;
    sp_DictionariesListName: TStringField;
    sp_DictionariesListTableName: TStringField;
    gr_DictionariesListDBTableView1Dictionaries_ID: TcxGridDBColumn;
    gr_DictionariesListDBTableView1Name: TcxGridDBColumn;
    gr_DictionariesListDBTableView1TableName: TcxGridDBColumn;
    ds_AcademicYears: TDataSource;
    sp_ClassRooms: TADOStoredProc;
    ds_ClassRooms: TDataSource;
    sp_DictionariesListViewName: TStringField;
    sp_AcademicYears: TADOStoredProc;
    sp_DaysType: TADOStoredProc;
    sp_Groups: TADOStoredProc;
    sp_Institutes: TADOStoredProc;
    sp_LessonNumber: TADOStoredProc;
    sp_LessonType: TADOStoredProc;
    sp_SemestrsType: TADOStoredProc;
    sp_Subjects: TADOStoredProc;
    sp_Teachers: TADOStoredProc;
    ds_DaysType: TDataSource;
    ds_Groups: TDataSource;
    ds_Institutes: TDataSource;
    ds_LessonNumber: TDataSource;
    ds_LessonType: TDataSource;
    ds_SemestrsType: TDataSource;
    ds_Subjects: TDataSource;
    ds_Teachers: TDataSource;
    sp_Weeks_Type: TADOStoredProc;
    ds_Weeks_Type: TDataSource;
    sp_AcademicYearsAcademic_Years_ID: TAutoIncField;
    sp_AcademicYearsYear_Begin: TIntegerField;
    sp_AcademicYearsYear_End: TIntegerField;
    sp_AcademicYearsAcademicYears: TStringField;
    sp_ClassRoomsClassRooms_ID: TAutoIncField;
    sp_ClassRoomsName: TStringField;
    sp_GroupsGroups_ID: TAutoIncField;
    sp_GroupsName: TStringField;
    sp_InstitutesInstitutes_ID: TAutoIncField;
    sp_InstitutesName: TStringField;
    sp_LessonNumberLesson_Number_ID: TAutoIncField;
    sp_LessonNumberNumber: TIntegerField;
    sp_LessonNumberTimeBegin: TWideStringField;
    sp_LessonNumberTimeEnd: TWideStringField;
    sp_LessonTypeLesson_Type_ID: TAutoIncField;
    sp_LessonTypeName: TStringField;
    sp_LessonTypeSymbol: TStringField;
    sp_SemestrsTypeSemestrs_ID: TAutoIncField;
    sp_SemestrsTypeName: TStringField;
    sp_SubjectsSubjects_ID: TAutoIncField;
    sp_SubjectsName: TStringField;
    sp_TeachersTeachers_ID: TAutoIncField;
    sp_TeachersName: TStringField;
    sp_Weeks_TypeSymbol: TStringField;
    popupDictionaries: TdxBarPopupMenu;
    sp_Weeks_TypeWeeks_Type_ID: TAutoIncField;
    sp_Weeks_TypeName: TStringField;
    DataSource1: TDataSource;
    sp_Semestrs: TADOStoredProc;
    ds_Semestrs: TDataSource;
    sp_SemestrsSemestrs_ID: TAutoIncField;
    sp_SemestrsAcademic_Years_ID: TIntegerField;
    sp_SemestrsAcademic_Years: TStringField;
    sp_SemestrsNumber: TIntegerField;
    sp_SemestrsDate_Begin: TWideStringField;
    sp_SemestrsDate_End: TWideStringField;
    sp_SemestrsSemestrs_Type_ID: TIntegerField;
    sp_SemestrsSemestrs_Type: TStringField;
    cxGrid2: TcxGrid;
    v_AcademicYears: TcxGridDBTableView;
    v_AcademicYearsAcademic_Years_ID: TcxGridDBColumn;
    v_AcademicYearsYear_Begin: TcxGridDBColumn;
    v_AcademicYearsYear_End: TcxGridDBColumn;
    v_AcademicYearsAcademicYears: TcxGridDBColumn;
    v_ClassRooms: TcxGridDBTableView;
    v_ClassRoomsClassRooms_ID: TcxGridDBColumn;
    v_ClassRoomsName: TcxGridDBColumn;
    v_Days: TcxGridDBTableView;
    v_DaysDays_ID: TcxGridDBColumn;
    v_DaysName: TcxGridDBColumn;
    v_Groups: TcxGridDBTableView;
    v_GroupsGroups_ID: TcxGridDBColumn;
    v_GroupsName: TcxGridDBColumn;
    v_Institutes: TcxGridDBTableView;
    v_InstitutesInstitutes_ID: TcxGridDBColumn;
    v_InstitutesName: TcxGridDBColumn;
    v_LessonNumber: TcxGridDBTableView;
    v_LessonNumberLesson_Number_ID: TcxGridDBColumn;
    v_LessonNumberNumber: TcxGridDBColumn;
    v_LessonNumberTimeBegin: TcxGridDBColumn;
    v_LessonNumberTimeEnd: TcxGridDBColumn;
    v_LessonType: TcxGridDBTableView;
    v_LessonTypeLesson_Type_ID: TcxGridDBColumn;
    v_LessonTypeName: TcxGridDBColumn;
    v_LessonTypeSymbol: TcxGridDBColumn;
    v_SemestrsType: TcxGridDBTableView;
    v_SemestrsTypeSemestrs_ID: TcxGridDBColumn;
    v_SemestrsTypeName: TcxGridDBColumn;
    v_Subjects: TcxGridDBTableView;
    v_SubjectsSubjects_ID: TcxGridDBColumn;
    v_SubjectsName: TcxGridDBColumn;
    v_Teachers: TcxGridDBTableView;
    v_TeachersTeachers_ID: TcxGridDBColumn;
    v_TeachersName: TcxGridDBColumn;
    v_WeeksType: TcxGridDBTableView;
    v_WeeksTypeWeeks_Type_ID: TcxGridDBColumn;
    v_WeeksTypeName: TcxGridDBColumn;
    v_WeeksTypeSymbol: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    v_Semestrs: TcxGridDBBandedTableView;
    v_SemestrsSemestrs_ID: TcxGridDBBandedColumn;
    v_SemestrsAcademic_Years_ID: TcxGridDBBandedColumn;
    v_SemestrsAcademic_Years: TcxGridDBBandedColumn;
    v_SemestrsNumber: TcxGridDBBandedColumn;
    v_SemestrsDate_Begin: TcxGridDBBandedColumn;
    v_SemestrsDate_End: TcxGridDBBandedColumn;
    v_SemestrsSemestrs_Type_ID: TcxGridDBBandedColumn;
    v_SemestrsSemestrs_Type: TcxGridDBBandedColumn;
    sp_DaysTypeDays_Type_ID: TAutoIncField;
    sp_DaysTypeName: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender : TObject);
    procedure gr_DictionariesListDBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure RecordEdit(cxView : TcxGridDBTableView);
    procedure RecordDelete(cxView : TcxGridDBTableView);
    procedure InsertRecord(cxView : TcxGridDBTableView);
    procedure v_AcademicYearsCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v_ClassRoomsCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v_DaysCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v_GroupsCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v_InstitutesCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v_LessonNumberCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v_LessonTypeCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v_SemestrsTypeCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v_SubjectsCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v_TeachersCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v_WeeksTypeCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDictionaries: TfrmDictionaries;
  frmEdit : TForm;
  Act : Integer;

implementation

{$R *.dfm}

uses MainData, Main;

procedure TfrmDictionaries.FormActivate(Sender: TObject);
begin
  frmMain.SetDownFormButton(self);
end;

procedure TfrmDictionaries.FormCreate(Sender: TObject);
begin
  frmMain.CreateFormButton(self);
end;

procedure TfrmDictionaries.gr_DictionariesListDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  ViewName : String;
  spADO : TADOStoredProc;
begin
  ViewName := sp_DictionariesListViewName.AsString;
  spADO := (frmDictionaries.FindComponent('sp_' + ViewName) as TADOStoredProc);
  if (not spADO.Active) then spADO.Active := True;
  cxGrid2Level1.GridView := (frmDictionaries.FindComponent('v_' + ViewName) as TcxCustomGridView);
end;

procedure TfrmDictionaries.btnCancelClick(Sender : TObject);
begin
  frmEdit.Close;
end;

procedure TfrmDictionaries.RecordEdit(cxView : TcxGridDBTableView);
var
  i, formWidth : integer;
  edEdit : TEdit;
  tTime : TMaskEdit;
  btnSave, btnCancel : TButton;
  lb : TLabel;
begin
  if (frmEdit <> nil) then
  begin
    frmEdit.Destroy;
  end;
  Application.CreateForm(TForm, frmEdit);
  frmEdit.Position := poScreenCenter;
  for i := 0 to cxView.ColumnCount-1 do
  begin
    if (FindComponent('lb_' + cxView.DataController.DataSource.DataSet.Fields[i].FieldName) = nil) then lb := TLabel.Create(frmEdit)
    else lb := (FindComponent('lb_' + cxView.DataController.DataSource.DataSet.Fields[i].FieldName) as TLabel);

    lb.Parent := frmEdit;
    lb.Left := 10;
    lb.Caption := cxView.Columns[i].Caption + ': ';
    lb.Top := (i * 25) + 10;
    lb.Name := 'lb_' + cxView.DataController.DataSource.DataSet.Fields[i].FieldName;

    if AnsiPos('Time', cxView.DataController.DataSource.DataSet.Fields[i].FieldName) > 0 then
    begin
      if (FindComponent('tp_' + cxView.DataController.DataSource.DataSet.Fields[i].FieldName) = nil) then tTime := TMaskEdit.Create(frmEdit)
      else tTime := (FindComponent('tp_' + cxView.DataController.DataSource.DataSet.Fields[i].FieldName) as TMaskEdit);
      tTime.Parent := frmEdit;
      tTime.Left := lb.Width + 20;
      tTime.EditMask := '!90:00:00;1;_';
      tTime.Text := VarToStr(cxView.DataController.DataSource.DataSet.Fields[i].Value);
      tTime.Top := (i * 25) + 10;
      tTime.Name := 'tp_' + cxView.DataController.DataSource.DataSet.Fields[i].FieldName;
    end
    else
    begin
      if (FindComponent('ed_' + cxView.DataController.DataSource.DataSet.Fields[i].FieldName) = nil) then edEdit := TEdit.Create(frmEdit)
      else edEdit := (FindComponent('ed_' + cxView.DataController.DataSource.DataSet.Fields[i].FieldName) as TEdit);
      edEdit.Parent := frmEdit;
      edEdit.Left := lb.Width + 20;
      edEdit.Text := VarToStr(cxView.DataController.DataSource.DataSet.Fields[i].Value);
      edEdit.Top := (i * 25) + 10;
      edEdit.Name := 'ed_' + cxView.DataController.DataSource.DataSet.Fields[i].FieldName;
    end;
  end;
  btnSave := TButton.Create(frmEdit);
  btnSave.Parent := frmEdit;
  btnSave.Name := 'btnSave';
  btnSave.Caption := 'Сохранить';
  btnSave.Left := 10;
  btnSave.Top := (cxView.ColumnCount+1) * 25 + 10;
  Act := 2;
  btnSave.OnClick := btnSaveClick;

  btnCancel := TButton.Create(frmEdit);
  btnCancel.Parent := frmEdit;
  btnCancel.Name := 'btnCancel';
  btnCancel.Caption := 'Отменить';
  btnCancel.Left := btnSave.Width + 20;
  btnCancel.Top := (cxView.ColumnCount+1) * 25 + 10;
  btnCancel.OnClick := btnCancelClick;

  formWidth := 10;
  for i := 0 to frmEdit.ComponentCount - 1 do
  begin
    if (frmEdit.Components[i] is TEdit) then
      if (frmEdit.Components[i] as TEdit).Left + (frmEdit.Components[i] as TEdit).Width > formWidth then
        formWidth := (frmEdit.Components[i] as TEdit).Left + (frmEdit.Components[i] as TEdit).Width
    else if (frmEdit.Components[i] as TMaskEdit).Left + (frmEdit.Components[i] as TMaskEdit).Width > formWidth then
        formWidth := (frmEdit.Components[i] as TMaskEdit).Left + (frmEdit.Components[i] as TMaskEdit).Width
  end;
  frmEdit.Width := formWidth;

  frmEdit.ShowModal;
end;

procedure TfrmDictionaries.InsertRecord(cxView : TcxGridDBTableView);
var
  i : integer;
  edEdit : TEdit;
  tTime : TMaskEdit;
  btnSave, btnCancel : TButton;
  lb : TLabel;
begin
  if (frmEdit <> nil) then
  begin
    frmEdit.Destroy;
  end;
  Application.CreateForm(TForm, frmEdit);
  frmEdit.Position := poScreenCenter;
  for i := 0 to cxView.ColumnCount-1 do
  begin
    if (FindComponent('lb_' + cxView.DataController.DataSource.DataSet.Fields[i].FieldName) = nil) then lb := TLabel.Create(frmEdit)
    else lb := (FindComponent('lb_' + cxView.DataController.DataSource.DataSet.Fields[i].FieldName) as TLabel);

    lb.Parent := frmEdit;
    lb.Left := 10;
    lb.Caption := cxView.Columns[i].Caption + ': ';
    lb.Top := (i * 25) + 10;
    lb.Name := 'lb_' + cxView.DataController.DataSource.DataSet.Fields[i].FieldName;

    if AnsiPos('Time', cxView.DataController.DataSource.DataSet.Fields[i].FieldName) > 0 then
    begin
      if (FindComponent('tp_' + cxView.DataController.DataSource.DataSet.Fields[i].FieldName) = nil) then tTime := TMaskEdit.Create(frmEdit)
      else tTime := (FindComponent('tp_' + cxView.DataController.DataSource.DataSet.Fields[i].FieldName) as TMaskEdit);
      tTime.Parent := frmEdit;
      tTime.Left := lb.Width + 20;
      tTime.EditMask := '!90:00:00;1;_';
      //tTime.Text := VarToStr(cxView.DataController.DataSource.DataSet.Fields[i].Value);
      tTime.Top := (i * 25) + 10;
      tTime.Name := 'tp_' + cxView.DataController.DataSource.DataSet.Fields[i].FieldName;
    end
    else
    begin
      if (FindComponent('ed_' + cxView.DataController.DataSource.DataSet.Fields[i].FieldName) = nil) then edEdit := TEdit.Create(frmEdit)
      else edEdit := (FindComponent('ed_' + cxView.DataController.DataSource.DataSet.Fields[i].FieldName) as TEdit);
      edEdit.Parent := frmEdit;
      edEdit.Left := lb.Width + 20;
      edEdit.Top := (i * 25) + 10;
      edEdit.Name := 'ed_' + cxView.DataController.DataSource.DataSet.Fields[i].FieldName;
      edEdit.Text := '';
      if i = 0 then edEdit.Enabled := False;
    end;
  end;
  btnSave := TButton.Create(frmEdit);
  btnSave.Parent := frmEdit;
  btnSave.Name := 'btnSave';
  btnSave.Caption := 'Сохранить';
  btnSave.Left := 10;
  btnSave.Top := (cxView.ColumnCount+1) * 25 + 10;
  Act := 1;
  btnSave.OnClick := btnSaveClick;

  btnCancel := TButton.Create(frmEdit);
  btnCancel.Parent := frmEdit;
  btnCancel.Name := 'btnCancel';
  btnCancel.Caption := 'Отменить';
  btnCancel.Left := btnSave.Width + 20;
  btnCancel.Top := (cxView.ColumnCount+1) * 25 + 10;
  btnCancel.OnClick := btnCancelClick;
  frmEdit.ShowModal;
end;

procedure TfrmDictionaries.btnSaveClick(Sender: TObject);
var
  spSave, spFields : TADOStoredProc;
  fieldName : String;
  i : Integer;
  Time : TTime;
begin
  spSave := TADOStoredProc.Create(nil);
  spSave.Close;
  spSave.Connection := DM.ADOConnection;
  spFields := TADOStoredProc.Create(nil);
  spFields := ((cxGrid2.ActiveView as TcxGridDBTableView).DataController.DataSource.DataSet as TADOStoredProc);
  spSave.ProcedureName := StringReplace(spFields.ProcedureName, ';1', '', [rfReplaceAll, rfIgnoreCase]) + '_Save';
  spSave.Parameters.Refresh;
  for i := 0 to frmEdit.ComponentCount-1 do
  begin
    if (AnsiPos('tp_', frmEdit.Components[i].Name) > 0) then
    begin
      fieldName := StringReplace(frmEdit.Components[i].Name, 'tp_', '', [rfReplaceAll, rfIgnoreCase]);
      spSave.Parameters.ParamByName('@' + fieldName).Value := (frmEdit.FindComponent('tp_' + fieldName) as TMaskEdit).Text;
    end
    else if (AnsiPos('ed_', frmEdit.Components[i].Name) > 0) then
    begin
      fieldName := StringReplace(frmEdit.Components[i].Name, 'ed_', '', [rfReplaceAll, rfIgnoreCase]);
      if (frmEdit.FindComponent('ed_' + fieldName) as TEdit).Text = '' then spSave.Parameters.ParamByName('@' + fieldName).Value := Null
      else spSave.Parameters.ParamByName('@' + fieldName).Value := (frmEdit.FindComponent('ed_' + fieldName) as TEdit).Text;
    end;
  end;
  spSave.Parameters.ParamByName('@Action').Value := Act;
  spSave.ExecProc;
  spFields.Close;
  spFields.Open;
  frmEdit.Close;
end;

procedure TfrmDictionaries.RecordDelete(cxView : TcxGridDBTableView);
var
  q_Delete : TADOQuery;
  tableName, sqlText : String;
begin
  if (MessageDlg('Удалить запись?', mtError, mbYesNo, 0) = mrYes) then
  begin
    try
      try
        q_Delete := TADOQuery.Create(nil);
        q_Delete.Close;
        q_Delete.Connection := DM.ADOConnection;
        q_Delete.SQL.Clear;
        tableName := StringReplace((cxView.DataController.DataSource.DataSet as TADOStoredProc).ProcedureName, 'p_', '', [rfReplaceAll, rfIgnoreCase]);
        tableName := StringReplace(tableName, ';1', '', [rfReplaceAll, rfIgnoreCase]);
        sqlText := 'delete from dbo.t_' + tableName + ' where ' + tableName + '_ID = ' + (cxView.DataController.DataSource.DataSet as TADOStoredProc).FieldByName(tableName + '_ID').AsString;
        q_Delete.SQL.Text := sqlText;
        q_Delete.ExecSQL;
        cxView.DataController.DataSource.DataSet.Close;
        cxView.DataController.DataSource.DataSet.Open;
        ShowMessage('Запись успешно удалена');
      except on e : Exception do
        ShowMessage('Ошибка: ' + e.Message);
      end;
    finally
      q_Delete.Free;
    end;
  end;
end;

procedure TfrmDictionaries.v_AcademicYearsCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  RecordEdit((cxGrid2.ActiveView as TcxGridDBTableView));
end;

procedure TfrmDictionaries.v_ClassRoomsCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  RecordEdit((cxGrid2.ActiveView as TcxGridDBTableView));
end;

procedure TfrmDictionaries.v_DaysCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  RecordEdit((cxGrid2.ActiveView as TcxGridDBTableView));
end;

procedure TfrmDictionaries.v_GroupsCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  RecordEdit((cxGrid2.ActiveView as TcxGridDBTableView));
end;

procedure TfrmDictionaries.v_InstitutesCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  RecordEdit((cxGrid2.ActiveView as TcxGridDBTableView));
end;

procedure TfrmDictionaries.v_LessonNumberCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  RecordEdit((cxGrid2.ActiveView as TcxGridDBTableView));
end;

procedure TfrmDictionaries.v_LessonTypeCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  RecordEdit((cxGrid2.ActiveView as TcxGridDBTableView));
end;

procedure TfrmDictionaries.v_SemestrsTypeCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  RecordEdit((cxGrid2.ActiveView as TcxGridDBTableView));
end;

procedure TfrmDictionaries.v_SubjectsCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  RecordEdit((cxGrid2.ActiveView as TcxGridDBTableView));
end;

procedure TfrmDictionaries.v_TeachersCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  RecordEdit((cxGrid2.ActiveView as TcxGridDBTableView));
end;

procedure TfrmDictionaries.v_WeeksTypeCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  RecordEdit((cxGrid2.ActiveView as TcxGridDBTableView));

end;

end.
