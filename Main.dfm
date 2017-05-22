object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'frmMain'
  ClientHeight = 516
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxBarManager: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = DM.cxImageLibrary
    ImageOptions.LargeImages = DM.cxImageLibrary
    MenuAnimations = maRandom
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 24
    Top = 464
    DockControlHeights = (
      0
      0
      46
      0)
    object dxMainMenuBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'MainMenu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 791
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnLoadSheduleFile'
        end
        item
          Visible = True
          ItemName = 'btn_ShedulesList'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btnLoadSheduleFile: TdxBarLargeButton
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1092#1072#1081#1083' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1103
      Category = 0
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1092#1072#1081#1083' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1103
      Visible = ivAlways
      LargeImageIndex = 0
      OnClick = btnLoadSheduleFileClick
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_ShedulesList: TdxBarLargeButton
      Caption = #1057#1087#1080#1089#1086#1082' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1081
      Category = 0
      Hint = #1057#1087#1080#1089#1086#1082' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1081
      Visible = ivAlways
      OnClick = btn_ShedulesListClick
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'select * from t_Files')
    Left = 376
    Top = 264
  end
end
