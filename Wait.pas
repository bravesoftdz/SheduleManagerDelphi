unit Wait;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GifImg, ExtCtrls;

type
  TfrmWait = class(TForm)
    Image1: TImage;
    procedure FormShow(Sender: TObject);
  private
      Gif: TGifImage;
  public
    { Public declarations }
  end;

var
  frmWait: TfrmWait;

implementation

{$R *.dfm}

procedure TfrmWait.FormShow(Sender: TObject);
begin
{
  Gif := TGifImage.Create;

    Gif.LoadFromFile('D:\_sources\SheduleManagerDelphi\Icons\wait.gif');
    Gif.Animate := True;
    Gif.AnimateLoop := glEnabled;
    }
    GIFImageDefaultAnimate := True;
    Image1.Picture.LoadFromFile('D:\_sources\SheduleManagerDelphi\Icons\loading.gif');

end;


end.
