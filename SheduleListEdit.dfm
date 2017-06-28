object frmSheduleListEdit: TfrmSheduleListEdit
  Left = 0
  Top = 0
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1103
  ClientHeight = 303
  ClientWidth = 260
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 260
    Height = 303
    Align = alClient
    TabOrder = 0
    TabStop = False
    ShowDesignSelectors = False
    ExplicitTop = -8
    ExplicitWidth = 445
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
      Properties.KeyFieldNames = #1050#1086#1076
      Properties.ListColumns = <
        item
          FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        end>
      Properties.ListOptions.ShowHeader = False
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
      Properties.KeyFieldNames = #1050#1086#1076
      Properties.ListColumns = <
        item
          FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        end>
      Properties.ListOptions.ShowHeader = False
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
      Properties.KeyFieldNames = #1050#1086#1076
      Properties.ListColumns = <
        item
          FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        end>
      Properties.ListOptions.ShowHeader = False
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
    ProcedureName = 'p_Dict;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Dict_Type_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 16
    Top = 216
    object sp_AcademicYearsКод: TIntegerField
      FieldName = #1050#1086#1076
    end
    object sp_AcademicYearsНаименование: TStringField
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Size = 255
    end
    object sp_AcademicYearsГодначала: TIntegerField
      FieldName = #1043#1086#1076' '#1085#1072#1095#1072#1083#1072
    end
    object sp_AcademicYearsГодокончания: TIntegerField
      FieldName = #1043#1086#1076' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
    end
  end
  object ds_AcademicYears: TDataSource
    DataSet = sp_AcademicYears
    Left = 16
    Top = 264
  end
  object ds_Institut: TDataSource
    DataSet = sp_Institut
    Left = 80
    Top = 264
  end
  object sp_Institut: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_Dict;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Dict_Type_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 15
      end>
    Left = 80
    Top = 216
    object sp_InstitutКод: TIntegerField
      FieldName = #1050#1086#1076
    end
    object sp_InstitutНаименование: TStringField
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Size = 255
    end
  end
  object sp_Semestrs: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_Dict;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Dict_Type_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 3
      end>
    Left = 144
    Top = 216
    object sp_SemestrsКод: TIntegerField
      FieldName = #1050#1086#1076
    end
    object sp_SemestrsНаименование: TStringField
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Size = 255
    end
  end
  object ds_Semestrs: TDataSource
    DataSet = sp_Semestrs
    Left = 144
    Top = 264
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
        Value = Null
      end
      item
        Name = '@ShedulesID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@AcademicYearsID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@InstitutID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@SemestrID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IsActual'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 192
    Top = 264
  end
end
