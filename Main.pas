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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxBar, cxClasses, ADODB, DB;

type
  TfrmMain = class(TForm)
    dxBarManager: TdxBarManager;
    dxMainMenuBar1: TdxBar;
    btnLoadSheduleFile: TdxBarLargeButton;
    ADOQuery1: TADOQuery;
    btn_ShedulesList: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure btnLoadSheduleFileClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure btn_ShedulesListClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses MainData, ShedulesList;

procedure TfrmMain.btnLoadSheduleFileClick(Sender: TObject);
var
  FilePath : String;
  sp_LoadFileShedule : TADOStoredProc;
begin
  if (DM.OpenFileDialog.Execute()) then
    if (Length(DM.OpenFileDialog.FileName) > 0) then
    begin
      FilePath := DM.OpenFileDialog.FileName;
      try
        sp_LoadFileShedule := TADOStoredProc.Create(nil);
        sp_LoadFileShedule.Connection := DM.ADOConnection;
        sp_LoadFileShedule.Active := False;
        sp_LoadFileShedule.ProcedureName := 'p_SheduleParse';
        sp_LoadFileShedule.Parameters.Clear;
        sp_LoadFileShedule.Parameters.CreateParameter('@FilePath', ftString, pdInput, 1024, 0);
        sp_LoadFileShedule.Parameters.ParamValues['@FilePath'] := FilePath;
        sp_LoadFileShedule.ExecProc;
        ShowMessage('Загрузка файла завершена');
      finally
        sp_LoadFileShedule.Free;
      end;
    end;
end;

procedure TfrmMain.btn_ShedulesListClick(Sender: TObject);
begin
  if (frmShedulesList = nil) then Application.CreateForm(TfrmShedulesList, frmShedulesList);
  frmShedulesList.Show;
end;

procedure TfrmMain.dxBarButton1Click(Sender: TObject);
begin
  ADOQuery1.Close;
  if not DM.ADOConnection.Connected then
  begin
    DM.ADOConnection.Connected := True;
  ADOQuery1.Active;
  ShowMessage(ADOQuery1.SQL.Text);
  AdoQuery1.Active;
  ADOQuery1.Open;
  ShowMessage(IntToStr(ADOQuery1.RecordCount));
  end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  IniFile : TIniFile;
  ConnectionString : String;
begin
  //Открываем файл настроек
  IniFile := TiniFile.Create(extractfilepath(paramstr(0)) + 'Settings.ini');
  ConnectionString := IniFile.ReadString('Connections', 'ConnectionString', '');
  if Length(ConnectionString) > 0 then
  begin
    Application.CreateForm(TDM, DM);
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
end;

end.
