unit MainData;

interface

uses
  SysUtils, Classes, DB, ADODB, ImgList, Controls, cxGraphics, Dialogs, ActnList;

type
  TDM = class(TDataModule)
    ADOConnection: TADOConnection;
    cxImageLibrary: TcxImageList;
    ActionList: TActionList;
    Action1: TAction;
    OpenFileDialog: TOpenDialog;
    ds_AcademicYears: TDataSource;
    sp_AcademicYears: TADOStoredProc;
    sp_AcademicYearsAcademic_Years_ID: TAutoIncField;
    sp_AcademicYearsAcademicYears: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.


