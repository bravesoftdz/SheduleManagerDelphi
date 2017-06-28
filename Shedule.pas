unit Shedule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, ADODB,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxBar;

type
  TfrmShedule = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    SaveShedule: TdxBarButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ds_Shedule: TDataSource;
    sp_Shedule: TADOStoredProc;
    sp_Shedule_Shedules_ID: TAutoIncField;
    sp_SheduleУчебныйгод: TStringField;
    sp_Shedule_AcademicYearsID: TIntegerField;
    sp_SheduleИнститут: TStringField;
    sp_Shedule_InstitutID: TIntegerField;
    sp_SheduleСеместр: TStringField;
    sp_Shedule_SemestrID: TIntegerField;
    sp_Shedule_Shedules_Detail_ID: TAutoIncField;
    sp_SheduleДеньнедели: TStringField;
    sp_Shedule_A6_Days: TIntegerField;
    sp_SheduleГруппа: TStringField;
    sp_Shedule_A8_Groups: TIntegerField;
    sp_SheduleНомерпары: TIntegerField;
    sp_SheduleВремяначала: TStringField;
    sp_SheduleВремяокончания: TStringField;
    sp_Shedule_A9_Lesson_Number: TIntegerField;
    sp_SheduleВидзанятия: TStringField;
    sp_Shedule_A10_Lesson_Type: TIntegerField;
    sp_SheduleПредмет: TStringField;
    sp_SheduleA11_Subject: TIntegerField;
    sp_SheduleПреподаватель: TStringField;
    sp_Shedule_A13_Teachers: TIntegerField;
    sp_SheduleТипнедели: TStringField;
    sp_Shedule_A5_Weeks: TIntegerField;
    sp_SheduleАудитория: TStringField;
    sp_SheduleA16_ClassRooms: TIntegerField;
    cxGrid1DBTableView1_Shedules_ID: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn: TcxGridDBColumn;
    cxGrid1DBTableView1_AcademicYearsID: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1_InstitutID: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1_SemestrID: TcxGridDBColumn;
    cxGrid1DBTableView1_Shedules_Detail_ID: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1_A6_Days: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid1DBTableView1_A8_Groups: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn6: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn7: TcxGridDBColumn;
    cxGrid1DBTableView1_A9_Lesson_Number: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn8: TcxGridDBColumn;
    cxGrid1DBTableView1_A10_Lesson_Type: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn9: TcxGridDBColumn;
    cxGrid1DBTableView1A11_Subject: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn10: TcxGridDBColumn;
    cxGrid1DBTableView1_A13_Teachers: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn11: TcxGridDBColumn;
    cxGrid1DBTableView1_A5_Weeks: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn12: TcxGridDBColumn;
    cxGrid1DBTableView1A16_ClassRooms: TcxGridDBColumn;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmShedule: TfrmShedule;

implementation

{$R *.dfm}

uses MainData, Main;



end.
