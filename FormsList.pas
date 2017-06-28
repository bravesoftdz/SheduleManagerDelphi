unit FormsList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, ADODB,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox;

type
  TfrmFormsList = class(TForm)
    v_Form: TcxGridDBTableView;
    gr_FormLevel1: TcxGridLevel;
    gr_Form: TcxGrid;
    sp_FormsList: TADOStoredProc;
    ds_FormsList: TDataSource;
    sp_FormsListFiles_ID: TAutoIncField;
    sp_FormsListName: TStringField;
    sp_FormsListFileData: TBlobField;
    sp_FormsListDate: TDateTimeField;
    sp_FormsListFile_Type: TIntegerField;
    sp_FormsListForms_ID: TAutoIncField;
    sp_FormsListA1_Academic_Years: TIntegerField;
    sp_FormsListAcademic_Years: TStringField;
    sp_FormsListA14_Cafedra: TIntegerField;
    sp_FormsListCafedra: TStringField;
    sp_FormsListIs_Actual: TBooleanField;
    v_FormFiles_ID: TcxGridDBColumn;
    v_FormName: TcxGridDBColumn;
    v_FormDate: TcxGridDBColumn;
    v_FormForms_ID: TcxGridDBColumn;
    v_FormA1_Academic_Years: TcxGridDBColumn;
    v_FormAcademic_Years: TcxGridDBColumn;
    v_FormA14_Cafedra: TcxGridDBColumn;
    v_FormCafedra: TcxGridDBColumn;
    v_FormIs_Actual: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure v_FormCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormsList: TfrmFormsList;

implementation

{$R *.dfm}

uses MainData, Form, Main;

procedure TfrmFormsList.FormActivate(Sender: TObject);
begin
  sp_FormsList.Close;
  sp_FormsList.Open;
end;

procedure TfrmFormsList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmFormsList := nil;
end;

procedure TfrmFormsList.v_FormCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  Application.CreateForm(TfrmForm, frmForm);
  frmForm.sp_Form.Close;
  frmForm.sp_Form.Parameters.Clear;
  frmForm.sp_Form.Parameters.Refresh;
  frmForm.sp_Form.Parameters.ParamByName('@Form_ID').Value := sp_FormsList.FieldByName('Forms_ID').AsInteger;
  frmForm.sp_Form.Open;
  frmMain.AdvOfficeMDITabSet1.AddTab(frmForm);

  frmForm.Show;

end;

end.
