unit Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, ADODB,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxDBLookupComboBox;

type
  TfrmForm = class(TForm)
    v_Form: TcxGridDBTableView;
    gr_FormLevel1: TcxGridLevel;
    gr_Form: TcxGrid;
    sp_Form: TADOStoredProc;
    ds_Form: TDataSource;
    sp_FormCOLUMN1: TLargeintField;
    sp_FormForms_Detail_ID: TAutoIncField;
    sp_FormKurs: TIntegerField;
    sp_FormSemestr: TIntegerField;
    sp_FormA8_Groups_ID: TIntegerField;
    sp_FormName_Dict: TStringField;
    sp_FormA12_Subjects_ID: TIntegerField;
    sp_FormName_Dict_1: TStringField;
    sp_FormLection_Count: TBCDField;
    sp_FormLabory_Count: TBCDField;
    sp_FormPractice_Count: TStringField;
    v_FormCOLUMN1: TcxGridDBColumn;
    v_FormForms_Detail_ID: TcxGridDBColumn;
    v_FormKurs: TcxGridDBColumn;
    v_FormSemestr: TcxGridDBColumn;
    v_FormA8_Groups_ID: TcxGridDBColumn;
    v_FormName_Dict: TcxGridDBColumn;
    v_FormA12_Subjects_ID: TcxGridDBColumn;
    v_FormName_Dict_1: TcxGridDBColumn;
    v_FormLection_Count: TcxGridDBColumn;
    v_FormLabory_Count: TcxGridDBColumn;
    v_FormPractice_Count: TcxGridDBColumn;
    sp_FormA11_Subjects: TIntegerField;
    sp_FormName_Dict_2: TStringField;
    v_FormA11_Subjects: TcxGridDBColumn;
    v_FormName_Dict_2: TcxGridDBColumn;
    sp_FormGroups: TMemoField;
    sp_FormGroups_Count: TIntegerField;
    v_FormGroups: TcxGridDBColumn;
    v_FormGroups_Count: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure v_FormCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v_FormCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmForm: TfrmForm;

implementation

{$R *.dfm}

uses MainData, FormEdit;

procedure TfrmForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmForm := nil;
end;

procedure TfrmForm.v_FormCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  {
  sp_Subjects.Close;
  sp_Subjects.Parameters.ParamByName('@A1_Academic_Years').Value := 1;
  sp_Subjects.Parameters.ParamByName('@A8_Groups').Value := sp_FormA8_Groups_ID.AsInteger;
  sp_Subjects.Open;
  }
end;

procedure TfrmForm.v_FormCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  cl: TCursorLocation;
begin
  if (frmFormEdit <> nil) then
  begin
    frmFormEdit.Destroy;
    frmFormEdit := nil;
  end;
  Application.CreateForm(TfrmFormEdit, frmFormEdit);
  frmFormEdit.ShowModal;
  if frmFormEdit.ModalResult = mrOk then
  begin
    sp_Form.Close;
    sp_Form.Open;
  end;

end;

end.
