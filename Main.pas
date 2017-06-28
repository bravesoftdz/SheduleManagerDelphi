unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Inifiles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxBar, cxClasses, ADODB, DB, cxTextEdit,
  StdCtrls, cxGridDBTableView, AdvOfficeTabSet, AdvOfficeTabSetStylers,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxMaskEdit, cxButtonEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Menus, cxButtons, frxADOComponents, frxClass,
  frxDCtrl;

type
  TfrmMain = class(TForm)
    dxBarManager: TdxBarManager;
    dxMainMenuBar1: TdxBar;
    btnLoadSheduleFile: TdxBarLargeButton;
    btn_ShedulesList: TdxBarLargeButton;
    btnDictionaries: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    btnEdit: TdxBarButton;
    btnDelete: TdxBarButton;
    btnInsert: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxReportList: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    AdvOfficeMDITabSet1: TAdvOfficeMDITabSet;
    AdvOfficeTabSetOfficeStyler1: TAdvOfficeTabSetOfficeStyler;
    btn_Settings: TdxBarLargeButton;
    btn_Exit: TdxBarLargeButton;
    dxListReports: TdxBarListItem;
    btn_FormList: TdxBarLargeButton;
    btn_Calendar: TdxBarLargeButton;
    frxReport1: TfrxReport;
    frxDialogControls1: TfrxDialogControls;
    btn_Reports: TdxBarLargeButton;
    pm_Reports: TdxBarPopupMenu;
    procedure FormCreate(Sender: TObject);
    procedure btnLoadSheduleFileClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure btn_ShedulesListClick(Sender: TObject);
    procedure btnDictionariesClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure btn_ExitClick(Sender: TObject);
    procedure btn_SettingsClick(Sender: TObject);
    procedure dxListReportsClick(Sender: TObject);
    procedure PrepareReport(filePath: String);
    procedure btn_FormListClick(Sender: TObject);
    procedure btn_CalendarClick(Sender: TObject);
  private
    iButtonsCount:integer;
    act: Integer;
    procedure dxBarButtonClick(Sender: TObject);
    procedure listReportFill(pathDir: String);
  public
    fileType: Integer;
    ReportsDirPath: String;
    Action: Integer;
    DictTypeID: Integer;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses MainData, ShedulesList, Dictionaries, DictionariesEdit, Wait, Dict, DictType, Load, FormsList,
  Calendar;

procedure TfrmMain.btnDeleteClick(Sender: TObject);
begin
  frmDictionaries.RecordDelete((frmDictionaries.cxGrid2.ActiveView as TcxGridDBTableView));
end;

procedure TfrmMain.btnDictionariesClick(Sender: TObject);
begin
if (frmDictType = nil) then Application.CreateForm(TfrmDictType, frmDictType);
  AdvOfficeMDITabSet1.AddTab(frmDictType);
  frmDictType.Show;
end;

procedure TfrmMain.btnEditClick(Sender: TObject);
begin
   frmDictionaries.RecordEdit((frmDictionaries.cxGrid2.ActiveView as TcxGridDBTableView));
end;

procedure TfrmMain.btnInsertClick(Sender: TObject);
begin
  frmDictionaries.InsertRecord(frmDictionaries.cxGrid2.ActiveView as TcxGridDBTableView);
end;

procedure TfrmMain.btnLoadSheduleFileClick(Sender: TObject);
var
  FilePath : String;
  sp_LoadFileShedule : TADOStoredProc;
  i : integer;
begin
  fileType := 1;
  Application.CreateForm(TfrmLoad, frmLoad);
{
  if (DM.OpenFileDialog.Execute()) then
    if (DM.OpenFileDialog.Files.Count > 0) then
    begin
      frmWait.Show;
      Application.ProcessMessages;
      for i := 1 to DM.OpenFileDialog.Files.Count do
      begin
        Application.ProcessMessages;
        FilePath := DM.OpenFileDialog.FileName;
        try
          sp_LoadFileShedule := TADOStoredProc.Create(nil);
          sp_LoadFileShedule.Connection := DM.ADOConnection;
          sp_LoadFileShedule.Active := False;
          sp_LoadFileShedule.ProcedureName := 'p_Shedule_Parse';
          sp_LoadFileShedule.Parameters.Clear;
          sp_LoadFileShedule.Parameters.CreateParameter('@FilePath', ftString, pdInput, 1024, 0);
          sp_LoadFileShedule.Parameters.ParamValues['@FilePath'] := FilePath;
          sp_LoadFileShedule.ExecProc;
          Application.ProcessMessages;
        finally
          sp_LoadFileShedule.Free;
          Application.ProcessMessages;
          frmWait.Close;
        end;
      end;
      ShowMessage('Загрузка завершена');
      if (frmShedulesList <> nil) then
      begin
        frmShedulesList.sp_ShedulesList.Close;
        frmShedulesList.sp_ShedulesList.Open;
      end;
    end;
    }
end;

procedure TfrmMain.btn_CalendarClick(Sender: TObject);
begin
  if (frmCalendar = nil) then Application.CreateForm(TfrmCalendar, frmCalendar);
  AdvOfficeMDITabSet1.AddTab(frmCalendar);
end;

procedure TfrmMain.btn_ExitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMain.btn_FormListClick(Sender: TObject);
begin
  if (frmFormsList = nil) then Application.CreateForm(TfrmFormsList, frmFormsList)
  else
  begin
    frmFormsList.sp_FormsList.Close;
    frmFormsList.sp_FormsList.Open;
  end;
  AdvOfficeMDITabSet1.AddTab(frmFormsList);
  frmFormsList.Show;
end;

procedure TfrmMain.btn_SettingsClick(Sender: TObject);
begin
  ShowMessage('В разработке...');
end;

procedure TfrmMain.btn_ShedulesListClick(Sender: TObject);
begin
  if (frmShedulesList = nil) then Application.CreateForm(TfrmShedulesList, frmShedulesList)
  else
  begin
    frmShedulesList.sp_ShedulesList.Close;
    frmShedulesList.sp_ShedulesList.Open;
  end;
  AdvOfficeMDITabSet1.AddTab(frmShedulesList);
  frmShedulesList.Show;
end;

procedure TfrmMain.dxBarButton1Click(Sender: TObject);
var
  frmEdit : TForm;
  component : TcxTextEdit;
  Edit : TEdit;
begin
   if (frmWait = nil) then Application.CreateForm(TfrmWait, frmWait);
  if frmWait.Showing then frmWait.Close
  else frmWait.Show;





end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  IniFile : TIniFile;
  ConnectionString : String;
begin
  iButtonsCount := 0;
  ReportsDirPath := ExtractFileDir(ParamStr(0)) + '\Reports';
  //Открываем файл настроек
  IniFile := TiniFile.Create(extractfilepath(paramstr(0)) + 'Settings.ini');
  ConnectionString := IniFile.ReadString('Connections', 'ConnectionString', '');
  if Length(ConnectionString) > 0 then
  begin
    Application.CreateForm(TDM, DM);
    DM.ADOConnection.Connected := False;
    DM.ADOConnection.ConnectionString := ConnectionString;
    try
      MainData.DM.ADOConnection.Connected := True;
      // ShowMessage('Подключение к серверу установлено');
    except
      ShowMessage('Ошибка подключения к серверу');
    end;
  end
  else
  begin
    ShowMessage('Проверьте настройки подключения к серверу');
  end;
  IniFile.Free;

  listReportFill(ReportsDirPath);
end;





procedure TfrmMain.dxBarButtonClick(Sender: TObject);
var
  lWinControl: TWinControl;
begin
  lWinControl := FindControl((sender as TdxBarButton).Tag);
  if Assigned(lWinControl) and (lWinControl is TForm) then
    TForm(lWinControl).BringToFront;
end;

procedure TfrmMain.dxBarLargeButton1Click(Sender: TObject);
begin
  fileType := 2;
  Application.CreateForm(TfrmLoad, frmLoad);
end;

procedure TfrmMain.dxListReportsClick(Sender: TObject);
var
  reportName: String;
  fileName: String;
  filePath: String;
begin
  reportName := dxListReports.Items[dxListReports.ItemIndex];
  fileName := reportName + '.fr3';
  filePath := ReportsDirPath + '\' + fileName;
  PrepareReport(filePath);
end;

procedure TfrmMain.PrepareReport(filePath: String);
var
  Report: TfrxReport;
  DB: TfrxADODatabase;
begin
  Report := TfrxReport.Create(nil);
  Report.LoadFromFile(filePath);
  DB := Report.FindObject('DB') as TfrxADODatabase;
  DB.Connected := False;
  DB.DatabaseName := DM.ADOConnection.ConnectionString;
  DB.Connected := True;
  Report.PrepareReport(True);
  Report.ShowPreparedReport;
end;

procedure TfrmMain.listReportFill(pathDir: string);
var
  sr: TSearchRec;
  sl: TStringList;
begin
  sl := TStringList.Create();
  if FindFirst(pathDir +'\*.fr3', faAnyFile, sr) = 0 then
  begin
     repeat
       sl.Add(ChangeFileExt(sr.Name, ''));
       pm_Reports.ItemOptions
     until FindNext(sr) <> 0;
     FindClose(sr);
     dxListReports.Items := sl;
     sl.Free;
  end;
end;

end.
