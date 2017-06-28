unit Wait;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GifImg, ExtCtrls;

type
  TfrmWait = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
      Gif: TGifImage;
  public
    { Public declarations }
  end;

var
  frmWait: TfrmWait;

implementation

{$R *.dfm}

procedure TfrmWait.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Timer1.Enabled := False;
end;

procedure TfrmWait.FormShow(Sender: TObject);
begin
{
  Gif := TGifImage.Create;

    Gif.LoadFromFile('D:\_sources\SheduleManagerDelphi\Icons\wait.gif');
    Gif.Animate := True;
    Gif.AnimateLoop := glEnabled;
    }
    Timer1.Enabled := True;
    GIFImageDefaultAnimate := True;
    Image1.Picture.LoadFromFile('D:\_sources\SheduleManagerDelphi\Icons\loading.gif');
end;


procedure TfrmWait.Timer1Timer(Sender: TObject);
begin
  Application.ProcessMessages;
end;

end.
