object frmSheduleListEdit: TfrmSheduleListEdit
  Left = 0
  Top = 0
  Caption = 'frmSheduleListEdit'
  ClientHeight = 303
  ClientWidth = 406
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
    Width = 406
    Height = 303
    Align = alClient
    TabOrder = 0
    TabStop = False
    ShowDesignSelectors = False
    ExplicitTop = 8
    object btnCancel: TcxButton
      Left = 133
      Top = 166
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 5
      OnClick = btnCancelClick
    end
    object btnSave: TcxButton
      Left = 52
      Top = 166
      Width = 75
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 4
      OnClick = btnSaveClick
    end
    object lcb_AcademicYears: TcxLookupComboBox
      Left = 93
      Top = 55
      Properties.KeyFieldNames = 'Academic_Years_ID'
      Properties.ListColumns = <
        item
          FieldName = 'AcademicYears'
        end>
      Properties.ListSource = ds_AcademicYears
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 145
    end
    object lcb_Institut: TcxLookupComboBox
      Left = 93
      Top = 28
      Properties.KeyFieldNames = 'Institutes_ID'
      Properties.ListColumns = <
        item
          FieldName = 'Name'
        end>
      Properties.ListSource = ds_Institut
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 145
    end
    object lcb_Semestr: TcxLookupComboBox
      Left = 93
      Top = 82
      Properties.KeyFieldNames = 'Semestrs_ID'
      Properties.ListColumns = <
        item
          FieldName = 'Name'
        end>
      Properties.ListSource = ds_Semestrs
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 145
    end
    object cb_Actual: TcxCheckBox
      Left = 22
      Top = 109
      Caption = #1040#1082#1090#1091#1072#1083#1100#1085#1086#1089#1090#1100' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1103
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      object lg_Edits: TdxLayoutGroup
        ButtonOptions.Buttons = <>
        object dxLayoutControl1Item1: TdxLayoutItem
          CaptionOptions.Text = #1048#1085#1089#1090#1080#1090#1091#1090
          Control = lcb_Institut
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          CaptionOptions.Text = #1059#1095#1077#1073#1085#1099#1081' '#1075#1086#1076
          Control = lcb_AcademicYears
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          CaptionOptions.Text = #1057#1077#1084#1077#1089#1090#1088
          Control = lcb_Semestr
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          CaptionOptions.Text = 'cxCheckBox1'
          CaptionOptions.Visible = False
          Control = cb_Actual
          ControlOptions.ShowBorder = False
        end
      end
      object lg_Buttons: TdxLayoutGroup
        AlignHorz = ahCenter
        AlignVert = avBottom
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        object li_btnSave: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Visible = False
          Control = btnSave
          ControlOptions.ShowBorder = False
        end
        object li_btnCancel: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = btnCancel
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object sp_AcademicYears: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_AcademicYears;1'
    Parameters = <>
    Left = 272
    Top = 8
  end
  object ds_AcademicYears: TDataSource
    DataSet = sp_AcademicYears
    Left = 272
    Top = 56
  end
  object ds_Institut: TDataSource
    DataSet = sp_Institut
    Left = 272
    Top = 104
  end
  object sp_Institut: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_Institutes;1'
    Parameters = <>
    Left = 272
    Top = 152
  end
  object sp_Semestrs: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_Semestrs;1'
    Parameters = <>
    Left = 272
    Top = 248
  end
  object ds_Semestrs: TDataSource
    DataSet = sp_Semestrs
    Left = 272
    Top = 200
  end
  object sp_SaveSheduleList: TADOStoredProc
    Connection = DM.ADOConnection
    ProcedureName = 'p_ShedulesList_Save;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@ShedulesID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@AcademicYearsID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@InstitutID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@SemestrID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@IsActual'
        Attributes = [paNullable]
        DataType = ftBoolean
      end>
    Left = 344
    Top = 8
  end
end
