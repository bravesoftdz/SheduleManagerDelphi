program SheduleManager;

uses
  Forms,
  Main in 'Main.pas' {frmMain},
  MainData in 'MainData.pas' {DM: TDataModule},
  ShedulesList in 'ShedulesList.pas' {frmShedulesList},
  Shedule in 'Shedule.pas' {frmShedule},
  SheduleListEdit in 'SheduleListEdit.pas' {frmSheduleListEdit},
  Dictionaries in 'Dictionaries.pas' {frmDictionaries},
  DictionariesEdit in 'DictionariesEdit.pas' {frmDictionariesEdit},
  Wait in 'Wait.pas' {frmWait},
  Dict in 'Dict.pas' {frmDict},
  DictTypeEdit in 'DictTypeEdit.pas' {frmDictTypeEdit},
  DictType in 'DictType.pas' {frmDictType},
  DictColumns in 'DictColumns.pas' {frmDictColumns},
  DictColumnsEdit in 'DictColumnsEdit.pas' {frmDictColumnsEdit},
  DictEdit in 'DictEdit.pas' {frmDictEdit},
  Load in 'Load.pas' {frmLoad},
  Calendar in 'Calendar.pas' {frmCalendar},
  FormsList in 'FormsList.pas' {frmFormsList},
  Form in 'Form.pas' {frmForm},
  FormEdit in 'FormEdit.pas' {frmFormEdit};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'SheduleManager';
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
