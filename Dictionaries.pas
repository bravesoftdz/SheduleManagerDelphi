unit Dictionaries;

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
  cxDataStorage, cxEdit, DB, cxDBData, ADODB, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid;

type
  TfrmDictionaries = class(TForm)
    gr_DictionariesListDBTableView1: TcxGridDBTableView;
    gr_DictionariesListLevel1: TcxGridLevel;
    gr_DictionariesList: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    sp_DictionariesList: TADOStoredProc;
    ds_DictionariesList: TDataSource;
    sp_DictionariesListDictionaries_ID: TAutoIncField;
    sp_DictionariesListName: TStringField;
    sp_DictionariesListTableName: TStringField;
    gr_DictionariesListDBTableView1Dictionaries_ID: TcxGridDBColumn;
    gr_DictionariesListDBTableView1Name: TcxGridDBColumn;
    gr_DictionariesListDBTableView1TableName: TcxGridDBColumn;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gr_DictionariesListDBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDictionaries: TfrmDictionaries;

implementation

{$R *.dfm}

uses MainData, Main;

procedure TfrmDictionaries.FormActivate(Sender: TObject);
begin
  frmMain.SetDownFormButton(self);
end;

procedure TfrmDictionaries.FormCreate(Sender: TObject);
begin
  frmMain.CreateFormButton(self);
end;

procedure TfrmDictionaries.gr_DictionariesListDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  ShowMessage(sp_DictionariesListDictionaries_ID.AsString);
end;

end.
