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
  cxGrid, cxGridBandedTableView;

type
  TfrmDictionaries = class(TForm)
    gr_DictionariesListDBTableView1: TcxGridDBTableView;
    gr_DictionariesListLevel1: TcxGridLevel;
    gr_DictionariesList: TcxGrid;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    sp_DictionariesList: TADOStoredProc;
    ds_DictionariesList: TDataSource;
    sp_DictionariesListDictionaries_ID: TAutoIncField;
    sp_DictionariesListName: TStringField;
    sp_DictionariesListTableName: TStringField;
    gr_DictionariesListDBTableView1Dictionaries_ID: TcxGridDBColumn;
    gr_DictionariesListDBTableView1Name: TcxGridDBColumn;
    gr_DictionariesListDBTableView1TableName: TcxGridDBColumn;
    v_AcademicYears: TcxGridDBTableView;
    ds_AcademicYears: TDataSource;
    v_AcademicYearsAcademic_Years_ID: TcxGridDBColumn;
    v_AcademicYearsYear_Begin: TcxGridDBColumn;
    v_AcademicYearsYear_End: TcxGridDBColumn;
    v_AcademicYearsAcademicYears: TcxGridDBColumn;
    sp_ClassRooms: TADOStoredProc;
    v_ClassRooms: TcxGridDBTableView;
    ds_ClassRooms: TDataSource;
    v_ClassRoomsClassRooms_ID: TcxGridDBColumn;
    v_ClassRoomsName: TcxGridDBColumn;
    sp_DictionariesListViewName: TStringField;
    sp_AcademicYears: TADOStoredProc;
    v_Days: TcxGridDBTableView;
    v_Groups: TcxGridDBTableView;
    v_Institutes: TcxGridDBTableView;
    v_LessonNumber: TcxGridDBTableView;
    v_LessonType: TcxGridDBTableView;
    v_Semestrs: TcxGridDBTableView;
    v_Subjects: TcxGridDBTableView;
    v_Teachers: TcxGridDBTableView;
    v_Weeks: TcxGridDBTableView;
    sp_Days: TADOStoredProc;
    sp_Groups: TADOStoredProc;
    sp_Institutes: TADOStoredProc;
    sp_LessonNumber: TADOStoredProc;
    sp_LessonType: TADOStoredProc;
    sp_Semestrs: TADOStoredProc;
    sp_Subjects: TADOStoredProc;
    sp_Teachers: TADOStoredProc;
    ds_Days: TDataSource;
    ds_Groups: TDataSource;
    ds_Institutes: TDataSource;
    ds_LessonNumber: TDataSource;
    ds_LessonType: TDataSource;
    ds_Semestrs: TDataSource;
    ds_Subjects: TDataSource;
    ds_Teachers: TDataSource;
    sp_Weeks: TADOStoredProc;
    ds_Weeks: TDataSource;
    sp_AcademicYearsAcademic_Years_ID: TAutoIncField;
    sp_AcademicYearsYear_Begin: TIntegerField;
    sp_AcademicYearsYear_End: TIntegerField;
    sp_AcademicYearsAcademicYears: TStringField;
    sp_ClassRoomsClassRooms_ID: TAutoIncField;
    sp_ClassRoomsName: TStringField;
    sp_DaysDays_ID: TAutoIncField;
    sp_DaysName: TStringField;
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
    sp_SemestrsSemestrs_ID: TAutoIncField;
    sp_SemestrsName: TStringField;
    sp_SubjectsSubjects_ID: TAutoIncField;
    sp_SubjectsName: TStringField;
    sp_TeachersTeachers_ID: TAutoIncField;
    sp_TeachersName: TStringField;
    sp_WeeksWeeks_ID: TAutoIncField;
    sp_WeeksName: TStringField;
    sp_WeeksSymbol: TStringField;
    v_WeeksWeeks_ID: TcxGridDBColumn;
    v_WeeksName: TcxGridDBColumn;
    v_WeeksSymbol: TcxGridDBColumn;
    v_TeachersTeachers_ID: TcxGridDBColumn;
    v_TeachersName: TcxGridDBColumn;
    v_SubjectsSubjects_ID: TcxGridDBColumn;
    v_SubjectsName: TcxGridDBColumn;
    v_SemestrsSemestrs_ID: TcxGridDBColumn;
    v_SemestrsName: TcxGridDBColumn;
    v_LessonTypeLesson_Type_ID: TcxGridDBColumn;
    v_LessonTypeName: TcxGridDBColumn;
    v_LessonTypeSymbol: TcxGridDBColumn;
    v_LessonNumberLesson_Number_ID: TcxGridDBColumn;
    v_LessonNumberNumber: TcxGridDBColumn;
    v_LessonNumberTimeBegin: TcxGridDBColumn;
    v_LessonNumberTimeEnd: TcxGridDBColumn;
    v_InstitutesInstitutes_ID: TcxGridDBColumn;
    v_InstitutesName: TcxGridDBColumn;
    v_GroupsGroups_ID: TcxGridDBColumn;
    v_GroupsName: TcxGridDBColumn;
    v_DaysDays_ID: TcxGridDBColumn;
    v_DaysName: TcxGridDBColumn;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gr_DictionariesListDBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDictionaries: TfrmDictionaries;

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

end.
