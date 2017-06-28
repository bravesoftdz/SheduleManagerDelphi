object frmDictTypeEdit: TfrmDictTypeEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072
  ClientHeight = 90
  ClientWidth = 374
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object te_Code: TcxTextEdit
    Left = 8
    Top = 23
    TabOrder = 0
    Width = 50
  end
  object te_Name: TcxTextEdit
    Left = 64
    Top = 23
    TabOrder = 1
    Width = 300
  end
  object btn_Save: TcxButton
    Left = 80
    Top = 57
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    ModalResult = 1
    TabOrder = 2
    OnClick = btn_SaveClick
  end
  object cxButton2: TcxButton
    Left = 224
    Top = 57
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 3
  end
  object cxLabel1: TcxLabel
    Left = 8
    Top = 8
    Caption = #1050#1086#1076':'
  end
  object cxLabel2: TcxLabel
    Left = 64
    Top = 8
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
  end
end
