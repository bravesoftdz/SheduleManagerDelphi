object frmDictionariesEdit: TfrmDictionariesEdit
  Left = 0
  Top = 0
  Caption = 'frmDictionariesEdit'
  ClientHeight = 408
  ClientWidth = 325
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 325
    Height = 408
    Align = alClient
    TabOrder = 0
    TabStop = False
    ExplicitLeft = 76
    ExplicitWidth = 408
    ExplicitHeight = 300
    object btn_Save: TcxButton
      Left = 22
      Top = 64
      Width = 75
      Height = 25
      Caption = 'btn_Save'
      TabOrder = 0
    end
    object btn_Cancel: TcxButton
      Left = 103
      Top = 64
      Width = 75
      Height = 25
      Caption = 'btn_Cancel'
      TabOrder = 1
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      object lg_Fields: TdxLayoutGroup
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
      end
      object lg_Buttons: TdxLayoutGroup
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        object li_BtnSave: TdxLayoutItem
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = btn_Save
          ControlOptions.ShowBorder = False
        end
        object li_BtnCancel: TdxLayoutItem
          CaptionOptions.Text = 'cxButton2'
          CaptionOptions.Visible = False
          Control = btn_Cancel
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
end
