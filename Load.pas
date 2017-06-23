unit Load;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxButtonEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Menus, cxButtons, ADODB, DB, StdCtrls;

type
  TfrmLoad = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure btnEdPathClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoad: TfrmLoad;

implementation

uses MainData, Main, Wait;

{$R *.dfm}

procedure TfrmLoad.FormCreate(Sender: TObject);
var
  lbText: TLabel;
  btnEdPath: TcxButtonEdit;
  lookupCb: TcxLookupComboBox;
  topPos: Integer;
  leftPos: Integer;
  sp_Academ: TADOStoredProc;
  ds_Academ: TDataSource;
  btn: TcxButton;
  FileType: Integer;
begin
  try
    FileType := frmMain.fileType;
    Application.CreateForm(TForm, frmLoad);
    if FileType = 1 then frmLoad.Caption := 'Загрузка файла расписания'
    else if FileType = 2 then frmLoad.Caption := 'Загрузка файла "Форма 101"';

    leftPos := 120;
    topPos := 20;

    lbText := TLabel.Create(frmLoad);
    lbText.Name := 'lblPath';
    lbText.Caption := 'Путь к файлу:';
    lbText.Left := 10;
    lbText.Top := topPos;
    lbText.Width := 100;
    lbText.Parent := frmLoad;

    btnEdPath := TcxButtonEdit.Create(frmLoad);
    btnEdPath.Name := 'btnEdPath';
    btnEdPath.Text := '';
    btnEdPath.Left := leftPos;
    btnEdPath.Width := 200;
    btnEdPath.Top := topPos;
    btnEdPath.OnClick := btnEdPathClick;
    btnEdPath.Parent := frmLoad;

    topPos := topPos + btnEdPath.Height + 20;

    lbText := TLabel.Create(nil);
    lbText.Name := 'lblAcadem';
    lbText.Caption := 'Учебный год:';
    lbText.Left := 10;
    lbText.Top := topPos;
    lbText.Width := 100;
    lbText.Parent := frmLoad;

    sp_Academ := TADOStoredProc.Create(frmLoad);
    sp_Academ.Name := 'sp_Academ';
    sp_Academ.Close;
    sp_Academ.Connection := DM.ADOConnection;
    sp_Academ.ProcedureName := 'dbo.p_Dict';
    sp_Academ.Parameters.Clear;
    sp_Academ.Parameters.Refresh;
    sp_Academ.Parameters.ParamByName('@Dict_Type_ID').Value := 1;
    sp_Academ.Open;

    ds_Academ := TDataSource.Create(frmLoad);
    ds_Academ.Name := 'ds_Academ';
    ds_Academ.DataSet := sp_Academ;

    lookupCb := TcxLookupComboBox.Create(frmLoad);
    lookupCb.Name := 'lookupAY';
    lookupCb.Parent := frmLoad;
    lookupCb.Left := leftPos;
    lookupCb.Top := topPos;
    topPos := topPos + lookupCb.Height + 20;
    lookupCb.Width := 200;
    lookupCb.Properties.ListSource := ds_Academ;
    lookupCb.Properties.KeyFieldNames := 'Код';
    lookupCb.Properties.ListFieldNames := 'Наименование';

    btn := TcxButton.Create(nil);
    btn.Name := 'btnSave';
    //btn.ModalResult := mrOk;
    btn.Top := topPos;
    btn.Left := 70;
    btn.Parent := frmLoad;
    btn.Caption := 'Загрузить';
    btn.OnClick := btnSaveClick;

    btn := TcxButton.Create(nil);
    btn.Name := 'btnCancel';
    btn.ModalResult := mrCancel;
    btn.Top := topPos;
    btn.Left := 185;
    btn.Parent := frmLoad;
    btn.Caption := 'Отмена';

    frmLoad.ShowModal;
  finally
    frmLoad.Free;
    frmLoad := nil;
  end;
end;

procedure TfrmLoad.btnEdPathClick(Sender: TObject);
begin
  if (DM.OpenFileDialog.Execute()) then
    if (DM.OpenFileDialog.Files.Count > 0) then
      (Sender as TcxButtonEdit).Text := DM.OpenFileDialog.FileName;
end;

procedure TfrmLoad.btnSaveClick(Sender: TObject);
var
  FilePath : String;
  sp_LoadFileForm : TADOStoredProc;
  i : integer;
  academicYears: Integer;
begin
    if (DM.OpenFileDialog.Files.Count > 0) then
    begin
      if (frmWait = nil) then Application.CreateForm(TfrmWait, frmWait);
      frmWait.Show;
      Application.ProcessMessages;
      for i := 1 to DM.OpenFileDialog.Files.Count do
      begin
        FilePath := DM.OpenFileDialog.FileName;
        try
          sp_LoadFileForm := TADOStoredProc.Create(nil);
          sp_LoadFileForm.Connection := DM.ADOConnection;
          sp_LoadFileForm.Active := False;
          sp_LoadFileForm.ProcedureName := 'p_Form_Parse';
          sp_LoadFileForm.Parameters.Clear;
          sp_LoadFileForm.Parameters.Refresh;
          sp_LoadFileForm.Parameters.ParamByName('@FilePath').Value := FilePath;
          if (frmMain.fileType = 2) then
            sp_LoadFileForm.Parameters.ParamByName('@A1_Academic_Years').Value :=
              (frmLoad.FindComponent('lookupAY') as TcxLookupComboBox).EditValue;
          sp_LoadFileForm.ExecProc;
        finally
          sp_LoadFileForm.Free;
          frmWait.Close;
        end;
      end;
      ShowMessage('Загрузка завершена');
    end;

end;


end.
