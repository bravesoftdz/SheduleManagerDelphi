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
  cxDBLookupEdit, cxDBLookupComboBox, Menus, cxButtons;

type
  TfrmMain = class(TForm)
    dxBarManager: TdxBarManager;
    dxMainMenuBar1: TdxBar;
    btnLoadSheduleFile: TdxBarLargeButton;
    ADOQuery1: TADOQuery;
    btn_ShedulesList: TdxBarLargeButton;
    Bar1: TdxBar;
    btnDictionaries: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    btnEdit: TdxBarButton;
    btnDelete: TdxBarButton;
    btnInsert: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    AdvOfficeMDITabSet1: TAdvOfficeMDITabSet;
    AdvOfficeTabSetOfficeStyler1: TAdvOfficeTabSetOfficeStyler;
    procedure FormCreate(Sender: TObject);
    procedure btnLoadSheduleFileClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure btn_ShedulesListClick(Sender: TObject);
    procedure CreateFormButton(form1:TForm);
    procedure DeleteFormButton(form1:TForm);
    procedure SetDownFormButton(form1:TForm);
    procedure btnDictionariesClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
  private
    iButtonsCount:integer;
    act: Integer;
    procedure dxBarButtonClick(Sender: TObject);
  public
    fileType: Integer;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses MainData, ShedulesList, Dictionaries, DictionariesEdit, Wait, Dict, DictType, Load;

procedure TfrmMain.btnDeleteClick(Sender: TObject);
begin
  frmDictionaries.RecordDelete((frmDictionaries.cxGrid2.ActiveView as TcxGridDBTableView));
end;

procedure TfrmMain.btnDictionariesClick(Sender: TObject);
begin
  if (frmDictionaries = nil) then Application.CreateForm(TfrmDictionaries, frmDictionaries);
  frmDictionaries.sp_DictionariesList.Active := True;
  frmDictionaries.Show;
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
end;

procedure TfrmMain.btn_ShedulesListClick(Sender: TObject);
begin
  if (frmShedulesList = nil) then Application.CreateForm(TfrmShedulesList, frmShedulesList)
  else
  begin
    frmShedulesList.sp_ShedulesList.Close;
    frmShedulesList.sp_ShedulesList.Open;
  end;
  frmShedulesList.Show;
end;

procedure TfrmMain.dxBarButton1Click(Sender: TObject);
var
  frmEdit : TForm;
  component : TcxTextEdit;
  Edit : TEdit;
begin
  {
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
  }
  if (frmWait = nil) then Application.CreateForm(TfrmWait, frmWait);
  if frmWait.Showing then frmWait.Close
  else frmWait.Show;





end;

procedure TfrmMain.dxBarButton2Click(Sender: TObject);
begin
  if (frmDictType = nil) then Application.CreateForm(TfrmDictType, frmDictType);
  AdvOfficeMDITabSet1.AddTab(frmDictType);
  frmDictType.Show;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  IniFile : TIniFile;
  ConnectionString : String;
begin
  iButtonsCount := 0;
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
end;

procedure TfrmMain.CreateFormButton(form1:TForm);
var
  ABar : TdxBar;
  NewButton : TdxBarButton;
  NewItemLink : TdxBarItemLink;
begin
   inc(iButtonsCount);
   ABar := Bar1;
   NewButton := TdxBarButton.Create(self);
   NewItemLink := ABar.ItemLinks.Add;
   NewItemLink.Item := NewButton;
   NewItemLink.Item.Tag := form1.Handle;
   NewButton.Tag          := form1.Handle;
   NewButton.Name         := 'dxButton'+IntToStr(NewButton.Tag);
   NewButton.Caption      := form1.Caption; //+ '[' + IntToStr(iButtonsCount) + ']';
   NewButton.Hint         := form1.Caption;
   NewButton.OnClick      := dxBarButtonClick;
   NewButton.ButtonStyle  := bsChecked;
   NewButton.Down         := true;
   NewButton.PaintStyle   := psCaptionGlyph;
   NewButton.GroupIndex   := 1;
   NewButton.Glyph.Width  := 16;//GetSystemMetrics(SM_CXSMICON);
   NewButton.Glyph.Height := 16;//GetSystemMetrics(SM_CYSMICON);
   NewButton.Glyph.Canvas.Draw(0,0,form1.Icon);
   ABar.Control.RepaintBar;
end;

procedure TfrmMain.DeleteFormButton(form1:TForm);
Var
 i:integer;
begin
  for I := 0 to Bar1.ItemLinks.Count - 1 do
    if Bar1.ItemLinks[i].Item is TdxBarButton then
      if TdxBarButton(Bar1.ItemLinks[i].Item).Tag = form1.Handle then begin
        Bar1.ItemLinks[i].Item.Free;
        Break;
      end;
end;

procedure TfrmMain.SetDownFormButton(form1:TForm);
Var
 i:integer;
begin
  for I := 0 to Bar1.ItemLinks.Count - 1 do
    if Bar1.ItemLinks[i].Item is TdxBarButton then
      if TdxBarButton(Bar1.ItemLinks[i].Item).Tag = form1.Handle then begin
        TdxBarButton(Bar1.ItemLinks[i].Item).Down := false;
      end;
  for I := 0 to Bar1.ItemLinks.Count - 1 do
    if Bar1.ItemLinks[i].Item is TdxBarButton then
      if TdxBarButton(Bar1.ItemLinks[i].Item).Tag = form1.Handle then begin
        TdxBarButton(Bar1.ItemLinks[i].Item).Down := true;
        break;
      end;
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






end.
