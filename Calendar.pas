unit Calendar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, cxStyles, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, cxContainer,
  cxDateNavigator, Menus, StdCtrls, cxButtons;

type
  TfrmCalendar = class(TForm)
    cxDateNavigator1: TcxDateNavigator;
    ListBox1: TListBox;
    Label1: TLabel;
    cxButton1: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalendar: TfrmCalendar;

implementation

{$R *.dfm}

end.
