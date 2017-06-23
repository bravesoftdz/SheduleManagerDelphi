unit DictTypeEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, Menus, cxLabel,
  StdCtrls, cxButtons, cxTextEdit, ADODB, DB;

type
  TfrmDictTypeEdit = class(TForm)
    te_Code: TcxTextEdit;
    te_Name: TcxTextEdit;
    btn_Save: TcxButton;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    procedure btn_SaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    action : Integer;
  end;

var
  frmDictTypeEdit: TfrmDictTypeEdit;

implementation

{$R *.dfm}

uses MainData, Dict;

procedure TfrmDictTypeEdit.btn_SaveClick(Sender: TObject);
var
  sp_Save : TADOStoredProc;
begin
  try
    sp_Save := TADOStoredProc.Create(nil);
    sp_Save.Active := False;
    sp_Save.Connection := DM.ADOConnection;
    sp_Save.ProcedureName := 'dbo.p_Dict_Type_Save';
    sp_Save.Parameters.Clear;
    sp_Save.Parameters.Refresh;
    sp_Save.Parameters.ParamByName('@Action').Value := 1;
    sp_Save.Parameters.ParamByName('@Dict_Type_ID').Value := StrToInt(te_Code.Text);
    sp_Save.Parameters.ParamByName('@Dict_Name').Value := te_Name.Text;
    sp_Save.ExecProc;
  finally
    sp_Save.Free;
  end;
end;

procedure TfrmDictTypeEdit.FormShow(Sender: TObject);
begin
  te_Code.Clear;
  te_Name.Clear;
end;

end.
