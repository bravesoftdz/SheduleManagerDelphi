program SheduleManager;

uses
  Forms,
  Main in 'Main.pas' {frmMain},
  MainData in 'MainData.pas' {DM: TDataModule},
  ShedulesList in 'ShedulesList.pas' {frmShedulesList},
  Shedule in 'Shedule.pas' {frmShedule},
  SheduleListEdit in 'SheduleListEdit.pas' {frmSheduleListEdit},
  Dictionaries in 'Dictionaries.pas' {frmDictionaries},
  DictionariesEdit in 'DictionariesEdit.pas' {frmDictionariesEdit};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'SheduleManager';
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
