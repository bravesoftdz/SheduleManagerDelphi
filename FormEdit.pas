unit FormEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, DB, ADODB, StdCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Menus, cxButtons;

type
  TfrmFormEdit = class(TForm)
    Label1: TLabel;
    sp_Subjects: TADOStoredProc;
    sp_SubjectsID_Dict: TIntegerField;
    sp_SubjectsSubjectName: TStringField;
    ds_Subjects: TDataSource;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    lcb_Subject: TcxLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormEdit: TfrmFormEdit;

implementation

{$R *.dfm}

uses Form, MainData;

procedure TfrmFormEdit.cxButton1Click(Sender: TObject);
var
  sp_Save: TADOStoredProc;
begin
  sp_Save := TADOStoredProc.Create(nil);
  sp_Save.Close;
  sp_Save.Connection := DM.ADOConnection;
  sp_Save.ProcedureName := 'dbo.p_Forms_Detail_Save';
  sp_Save.Parameters.Clear;
  sp_Save.Parameters.Refresh;
  sp_Save.Parameters.ParamByName('@Forms_Detail_ID').Value := frmForm.sp_FormForms_Detail_ID.AsInteger;
  sp_Save.Parameters.ParamByName('@A11_Subjects').Value := lcb_Subject.EditValue;
  sp_Save.ExecProc;
end;

procedure TfrmFormEdit.FormCreate(Sender: TObject);
begin
  sp_Subjects.Close;
  sp_Subjects.Parameters.Clear;
  sp_Subjects.Parameters.Refresh;
  sp_Subjects.Parameters.ParamByName('@A1_Academic_Years').Value := 1;
  sp_Subjects.Parameters.ParamByName('@Groups').Value := frmForm.sp_FormGroups.AsString;
  sp_Subjects.Open;
  lcb_Subject.EditValue := frmForm.sp_FormA11_Subjects.AsInteger;
end;

end.
