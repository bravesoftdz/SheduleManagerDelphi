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
    sp_SheduleShedules_ID: TAutoIncField;
    sp_SheduleAcademicYears: TStringField;
    sp_SheduleInstitutName: TStringField;
    sp_SheduleSemestrName: TStringField;
    sp_SheduleShedules_Detail_ID: TAutoIncField;
    sp_SheduleDayName: TStringField;
    sp_SheduleGroupName: TStringField;
    sp_SheduleLessonNumber: TIntegerField;
    sp_SheduleTimeBegin: TWideStringField;
    sp_SheduleTimeEnd: TWideStringField;
    sp_SheduleLessonTypeName: TStringField;
    sp_SheduleSubjectName: TStringField;
    sp_SheduleTeacherName: TStringField;
    sp_SheduleWeekName: TStringField;
    sp_SheduleClassRoomName: TStringField;
    cxGrid1DBTableView1Shedules_ID: TcxGridDBColumn;
    cxGrid1DBTableView1AcademicYears: TcxGridDBColumn;
    cxGrid1DBTableView1InstitutName: TcxGridDBColumn;
    cxGrid1DBTableView1SemestrName: TcxGridDBColumn;
    cxGrid1DBTableView1Shedules_Detail_ID: TcxGridDBColumn;
    cxGrid1DBTableView1DayName: TcxGridDBColumn;
    cxGrid1DBTableView1GroupName: TcxGridDBColumn;
    cxGrid1DBTableView1LessonNumber: TcxGridDBColumn;
    cxGrid1DBTableView1TimeBegin: TcxGridDBColumn;
    cxGrid1DBTableView1TimeEnd: TcxGridDBColumn;
    cxGrid1DBTableView1LessonTypeName: TcxGridDBColumn;
    cxGrid1DBTableView1SubjectName: TcxGridDBColumn;
    cxGrid1DBTableView1TeacherName: TcxGridDBColumn;
    cxGrid1DBTableView1WeekName: TcxGridDBColumn;
    cxGrid1DBTableView1ClassRoomName: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
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

procedure TfrmShedule.FormActivate(Sender: TObject);
begin
  frmMain.SetDownFormButton(self);
end;

procedure TfrmShedule.FormCreate(Sender: TObject);
begin
  frmMain.CreateFormButton(self);
end;

end.
