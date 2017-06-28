unit SheduleListEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Menus, dxLayoutControl, StdCtrls,
  cxButtons, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxDBEdit, DBCtrls, DB, ADODB, cxCheckBox;

type
  TfrmSheduleListEdit = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    btnCancel: TcxButton;
    li_btnCancel: TdxLayoutItem;
    li_btnSave: TdxLayoutItem;
    btnSave: TcxButton;
    lg_Buttons: TdxLayoutGroup;
    lg_Edits: TdxLayoutGroup;
    lcb_AcademicYears: TcxLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    sp_AcademicYears: TADOStoredProc;
    ds_AcademicYears: TDataSource;
    lcb_Institut: TcxLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    lcb_Semestr: TcxLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cb_Actual: TcxCheckBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    ds_Institut: TDataSource;
    sp_Institut: TADOStoredProc;
    sp_Semestrs: TADOStoredProc;
    ds_Semestrs: TDataSource;
    sp_SaveSheduleList: TADOStoredProc;
    sp_AcademicYears Ó‰: TIntegerField;
    sp_AcademicYearsÕ‡ËÏÂÌÓ‚‡ÌËÂ: TStringField;
    sp_AcademicYears√Ó‰Ì‡˜‡Î‡: TIntegerField;
    sp_AcademicYears√Ó‰ÓÍÓÌ˜‡ÌËˇ: TIntegerField;
    sp_Institut Ó‰: TIntegerField;
    sp_InstitutÕ‡ËÏÂÌÓ‚‡ÌËÂ: TStringField;
    sp_Semestrs Ó‰: TIntegerField;
    sp_SemestrsÕ‡ËÏÂÌÓ‚‡ÌËÂ: TStringField;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    SheduleID : integer;
  end;

var
  frmSheduleListEdit: TfrmSheduleListEdit;

implementation

{$R *.dfm}

uses MainData;

procedure TfrmSheduleListEdit.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSheduleListEdit.btnSaveClick(Sender: TObject);
begin
  sp_SaveSheduleList.Active := False;
  sp_SaveSheduleList.Parameters.ParamByName('@ShedulesID').Value := SheduleID;
  sp_SaveSheduleList.Parameters.ParamByName('@AcademicYearsID').Value := lcb_AcademicYears.EditValue;
  sp_SaveSheduleList.Parameters.ParamByName('@InstitutID').Value := lcb_Institut.EditValue;
  sp_SaveSheduleList.Parameters.ParamByName('@SemestrID').Value := lcb_Semestr.EditValue;
  sp_SaveSheduleList.Parameters.ParamByName('@IsActual').Value := cb_Actual.Checked;
  sp_SaveSheduleList.ExecProc;
  Close;
end;

end.
