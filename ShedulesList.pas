unit ShedulesList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ADODB, ExtCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxCheckBox;

type
  TfrmShedulesList = class(TForm)
    cxGridShedulesListDBTableView1: TcxGridDBTableView;
    cxGridShedulesListLevel1: TcxGridLevel;
    cxGridShedulesList: TcxGrid;
    Panel1: TPanel;
    ds_ShedulesList: TDataSource;
    sp_ShedulesList: TADOStoredProc;
    sp_ShedulesListShedules_ID: TAutoIncField;
    sp_ShedulesListFileName: TStringField;
    sp_ShedulesListFileDate: TDateTimeField;
    sp_ShedulesListAcademicYears: TStringField;
    sp_ShedulesListInstitut: TStringField;
    sp_ShedulesListSemestr: TStringField;
    cxGridShedulesListDBTableView1Shedules_ID: TcxGridDBColumn;
    cxGridShedulesListDBTableView1FileName: TcxGridDBColumn;
    cxGridShedulesListDBTableView1FileDate: TcxGridDBColumn;
    cxGridShedulesListDBTableView1AcademicYears: TcxGridDBColumn;
    cxGridShedulesListDBTableView1Institut: TcxGridDBColumn;
    cxGridShedulesListDBTableView1Semestr: TcxGridDBColumn;
    sp_ShedulesListIs_Actual: TBooleanField;
    cxGridShedulesListDBTableView1Is_Actual: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmShedulesList: TfrmShedulesList;

implementation

{$R *.dfm}

uses MainData;

procedure TfrmShedulesList.FormShow(Sender: TObject);
begin
  sp_ShedulesList.Close;
  sp_ShedulesList.Active := True;
end;

end.
