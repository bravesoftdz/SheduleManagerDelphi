unit ShedulesList;

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
  cxDataStorage, cxEdit, DB, cxDBData, ADODB, ExtCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxCheckBox, dxSkinsdxBarPainter, dxBar, cxDBLookupComboBox;

type
  TfrmShedulesList = class(TForm)
    cxGridShedulesListDBTableView1: TcxGridDBTableView;
    cxGridShedulesListLevel1: TcxGridLevel;
    cxGridShedulesList: TcxGrid;
    Panel1: TPanel;
    ds_ShedulesList: TDataSource;
    sp_ShedulesList: TADOStoredProc;
    sp_ShedulesListShedules_ID: TAutoIncField;
    sp_ShedulesListFileName: TStringField;
    sp_ShedulesListFileDate: TDateTimeField;
    sp_ShedulesListInstitut: TStringField;
    sp_ShedulesListSemestr: TStringField;
    cxGridShedulesListDBTableView1Shedules_ID: TcxGridDBColumn;
    cxGridShedulesListDBTableView1FileName: TcxGridDBColumn;
    cxGridShedulesListDBTableView1FileDate: TcxGridDBColumn;
    cxGridShedulesListDBTableView1Institut: TcxGridDBColumn;
    cxGridShedulesListDBTableView1Semestr: TcxGridDBColumn;
    sp_ShedulesListIs_Actual: TBooleanField;
    cxGridShedulesListDBTableView1Is_Actual: TcxGridDBColumn;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btnSave: TdxBarButton;
    sp_ShedulesListAcademicYears: TStringField;
    cxGridShedulesListDBTableView1AcademicYears: TcxGridDBColumn;
    dxBarPopupMenu1: TdxBarPopupMenu;
    btnRecordEdit: TdxBarButton;
    btnSheduleOpen: TdxBarButton;
    btnRecordDelete: TdxBarButton;
    sp_ShedulesList_AcademicYearsID: TAutoIncField;
    sp_ShedulesList_InstitutID: TAutoIncField;
    sp_ShedulesList_SemestrID: TAutoIncField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGridShedulesListDBTableView1KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure OpenShedule;
    procedure btnSheduleOpenClick(Sender: TObject);
    procedure RecordEdit;
    procedure btnRecordEditClick(Sender: TObject);
    procedure cxGridShedulesListDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure RecordDelete;
    procedure btnRecordDeleteClick(Sender: TObject);

  private

  public
    { Public declarations }
  end;

var
  frmShedulesList: TfrmShedulesList;

implementation

{$R *.dfm}

uses MainData, Main, Shedule, SheduleListEdit;


procedure TfrmShedulesList.btnRecordDeleteClick(Sender: TObject);
begin
  RecordDelete;
end;

procedure TfrmShedulesList.btnRecordEditClick(Sender: TObject);
begin
  RecordEdit;
end;

procedure TfrmShedulesList.btnSheduleOpenClick(Sender: TObject);
begin
  OpenShedule;
end;

procedure TfrmShedulesList.cxGridShedulesListDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   RecordEdit;
end;

procedure TfrmShedulesList.cxGridShedulesListDBTableView1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key = VK_RETURN) then OpenShedule;
end;

procedure TfrmShedulesList.OpenShedule;
begin
  Application.CreateForm(TfrmShedule, frmShedule);
  frmShedule.sp_Shedule.Active := False;
  frmShedule.sp_Shedule.Parameters.ParamByName('@Shedules_ID').Value :=
    cxGridShedulesListDBTableView1.DataController.DataSource.DataSet.FieldByName('Shedules_ID').AsInteger;
  frmShedule.sp_Shedule.Active := True;
  frmShedule.Caption := 'Расписание занятий ' + frmShedule.sp_Shedule.FieldByName('InstitutName').AsString
    + ' на ' + frmShedulesList.sp_ShedulesList.FieldByName('AcademicYears').AsString;
  frmShedule.Show;
end;

procedure TfrmShedulesList.FormActivate(Sender: TObject);
begin
  frmMain.SetDownFormButton(self);
end;

procedure TfrmShedulesList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmMain.DeleteFormButton(self);
  Action    := caFree;
  frmShedulesList := nil;
end;

procedure TfrmShedulesList.FormCreate(Sender: TObject);
begin
   frmMain.CreateFormButton(self);
end;

procedure TfrmShedulesList.FormShow(Sender: TObject);
begin
  sp_ShedulesList.Close;
  sp_ShedulesList.Active := True;
end;

procedure TfrmShedulesList.RecordEdit;
begin
  if (frmSheduleListEdit = nil) then Application.CreateForm(TfrmSheduleListEdit, frmSheduleListEdit);
  DM.sp_AcademicYears.Active := False;
  MainData.DM.sp_AcademicYears.Active := True;
  if (not(frmSheduleListEdit.sp_AcademicYears.Active)) then frmSheduleListEdit.sp_AcademicYears.Active := True;
  if (not(frmSheduleListEdit.sp_Institut.Active)) then frmSheduleListEdit.sp_Institut.Active := True;
  if (not(frmSheduleListEdit.sp_Semestrs.Active)) then frmSheduleListEdit.sp_Semestrs.Active := True;
  frmSheduleListEdit.lcb_AcademicYears.EditValue := sp_ShedulesList.FieldByName('_AcademicYearsID').AsInteger;
  frmSheduleListEdit.lcb_Institut.EditValue := sp_ShedulesList.FieldByName('_InstitutID').AsInteger;
  frmSheduleListEdit.lcb_Semestr.EditValue := sp_ShedulesList.FieldByName('_SemestrID').AsInteger;
  frmSheduleListEdit.SheduleID := sp_ShedulesListShedules_ID.AsInteger;
  frmSheduleListEdit.ShowModal;
end;

procedure TfrmShedulesList.RecordDelete();
var
  sp_Delete : TADOStoredProc;
begin
  if (MessageDlg('Удалить запись?', mtError, mbYesNo, 0) = mrYes) then
  begin
    sp_Delete := TADOStoredProc.Create(nil);
    sp_Delete.Connection := DM.ADOConnection;
    sp_Delete.Close;
    sp_Delete.ProcedureName := 'p_Shedule_Delete';
    sp_Delete.Parameters.Refresh;
    sp_Delete.Parameters.ParamByName('@Shedule_ID').Value := sp_ShedulesListShedules_ID.AsInteger;
    sp_Delete.ExecProc;
    sp_ShedulesList.Close;
    sp_ShedulesList.Open;
    sp_Delete.Free;
  end;
end;





end.
