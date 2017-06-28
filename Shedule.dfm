object frmShedule: TfrmShedule
  Left = 0
  Top = 0
  Caption = #1056#1072#1089#1087#1080#1089#1072#1085#1080#1077
  ClientHeight = 402
  ClientWidth = 670
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 70
    Top = 0
    Width = 600
    Height = 402
    Align = alClient
    TabOrder = 4
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_Shedule
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      object cxGrid1DBTableView1_Shedules_ID: TcxGridDBColumn
        DataBinding.FieldName = '_Shedules_ID'
        Visible = False
      end
      object cxGrid1DBTableView1DBColumn: TcxGridDBColumn
        DataBinding.FieldName = #1059#1095#1077#1073#1085#1099#1081' '#1075#1086#1076
        Visible = False
        Width = 40
      end
      object cxGrid1DBTableView1_AcademicYearsID: TcxGridDBColumn
        DataBinding.FieldName = '_AcademicYearsID'
        Visible = False
      end
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = #1048#1085#1089#1090#1080#1090#1091#1090
        Visible = False
      end
      object cxGrid1DBTableView1_InstitutID: TcxGridDBColumn
        DataBinding.FieldName = '_InstitutID'
        Visible = False
      end
      object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
        DataBinding.FieldName = #1057#1077#1084#1077#1089#1090#1088
        Visible = False
      end
      object cxGrid1DBTableView1_SemestrID: TcxGridDBColumn
        DataBinding.FieldName = '_SemestrID'
        Visible = False
      end
      object cxGrid1DBTableView1_Shedules_Detail_ID: TcxGridDBColumn
        DataBinding.FieldName = '_Shedules_Detail_ID'
        Visible = False
      end
      object cxGrid1DBTableView1DBColumn3: TcxGridDBColumn
        DataBinding.FieldName = #1044#1077#1085#1100' '#1085#1077#1076#1077#1083#1080
        Visible = False
        GroupIndex = 1
      end
      object cxGrid1DBTableView1_A6_Days: TcxGridDBColumn
        DataBinding.FieldName = '_A6_Days'
        Visible = False
      end
      object cxGrid1DBTableView1DBColumn4: TcxGridDBColumn
        DataBinding.FieldName = #1043#1088#1091#1087#1087#1072
        Visible = False
        GroupIndex = 0
        Width = 72
      end
      object cxGrid1DBTableView1_A8_Groups: TcxGridDBColumn
        DataBinding.FieldName = '_A8_Groups'
        Visible = False
      end
      object cxGrid1DBTableView1DBColumn5: TcxGridDBColumn
        DataBinding.FieldName = #1053#1086#1084#1077#1088' '#1087#1072#1088#1099
        Width = 53
      end
      object cxGrid1DBTableView1DBColumn6: TcxGridDBColumn
        DataBinding.FieldName = #1042#1088#1077#1084#1103' '#1085#1072#1095#1072#1083#1072
        Width = 67
      end
      object cxGrid1DBTableView1DBColumn7: TcxGridDBColumn
        DataBinding.FieldName = #1042#1088#1077#1084#1103' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
        Width = 66
      end
      object cxGrid1DBTableView1_A9_Lesson_Number: TcxGridDBColumn
        DataBinding.FieldName = '_A9_Lesson_Number'
        Visible = False
      end
      object cxGrid1DBTableView1DBColumn8: TcxGridDBColumn
        DataBinding.FieldName = #1042#1080#1076' '#1079#1072#1085#1103#1090#1080#1103
        Width = 67
      end
      object cxGrid1DBTableView1_A10_Lesson_Type: TcxGridDBColumn
        DataBinding.FieldName = '_A10_Lesson_Type'
        Visible = False
      end
      object cxGrid1DBTableView1DBColumn9: TcxGridDBColumn
        DataBinding.FieldName = #1055#1088#1077#1076#1084#1077#1090
        Width = 66
      end
      object cxGrid1DBTableView1A11_Subject: TcxGridDBColumn
        DataBinding.FieldName = 'A11_Subject'
        Visible = False
      end
      object cxGrid1DBTableView1DBColumn10: TcxGridDBColumn
        DataBinding.FieldName = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
        Width = 67
      end
      object cxGrid1DBTableView1_A13_Teachers: TcxGridDBColumn
        DataBinding.FieldName = '_A13_Teachers'
        Visible = False
      end
      object cxGrid1DBTableView1DBColumn11: TcxGridDBColumn
        DataBinding.FieldName = #1058#1080#1087' '#1085#1077#1076#1077#1083#1080
        Visible = False
        GroupIndex = 2
      end
      object cxGrid1DBTableView1_A5_Weeks: TcxGridDBColumn
        DataBinding.FieldName = '_A5_Weeks'
        Visible = False
      end
      object cxGrid1DBTableView1DBColumn12: TcxGridDBColumn
        DataBinding.FieldName = #1040#1091#1076#1080#1090#1086#1088#1080#1103
        Width = 66
      end
      object cxGrid1DBTableView1A16_ClassRooms: TcxGridDBColumn
        DataBinding.FieldName = 'A16_ClassRooms'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object dxBarManager1: TdxBarManager
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
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 16
    Top = 360
    DockControlHeights = (
      70
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'LeftMenu'
      CaptionButtons = <>
      DockedDockingStyle = dsLeft
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsLeft
      FloatLeft = 704
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'SaveShedule'
        end>
      OneOnRow = True
      RotateWhenVertical = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object SaveShedule: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivAlways
    end
  end
  object ds_Shedule: TDataSource
    DataSet = sp_Shedule
    Left = 152
    Top = 360
  end
  object sp_Shedule: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_Shedule;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Shedules_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 96
    Top = 360
    object sp_Shedule_Shedules_ID: TAutoIncField
      FieldName = '_Shedules_ID'
      ReadOnly = True
    end
    object sp_SheduleУчебныйгод: TStringField
      FieldName = #1059#1095#1077#1073#1085#1099#1081' '#1075#1086#1076
      Size = 255
    end
    object sp_Shedule_AcademicYearsID: TIntegerField
      FieldName = '_AcademicYearsID'
    end
    object sp_SheduleИнститут: TStringField
      FieldName = #1048#1085#1089#1090#1080#1090#1091#1090
      Size = 255
    end
    object sp_Shedule_InstitutID: TIntegerField
      FieldName = '_InstitutID'
    end
    object sp_SheduleСеместр: TStringField
      FieldName = #1057#1077#1084#1077#1089#1090#1088
      Size = 255
    end
    object sp_Shedule_SemestrID: TIntegerField
      FieldName = '_SemestrID'
    end
    object sp_Shedule_Shedules_Detail_ID: TAutoIncField
      FieldName = '_Shedules_Detail_ID'
      ReadOnly = True
    end
    object sp_SheduleДеньнедели: TStringField
      FieldName = #1044#1077#1085#1100' '#1085#1077#1076#1077#1083#1080
      Size = 255
    end
    object sp_Shedule_A6_Days: TIntegerField
      FieldName = '_A6_Days'
    end
    object sp_SheduleГруппа: TStringField
      FieldName = #1043#1088#1091#1087#1087#1072
      Size = 255
    end
    object sp_Shedule_A8_Groups: TIntegerField
      FieldName = '_A8_Groups'
    end
    object sp_SheduleНомерпары: TIntegerField
      FieldName = #1053#1086#1084#1077#1088' '#1087#1072#1088#1099
    end
    object sp_SheduleВремяначала: TStringField
      FieldName = #1042#1088#1077#1084#1103' '#1085#1072#1095#1072#1083#1072
      Size = 255
    end
    object sp_SheduleВремяокончания: TStringField
      FieldName = #1042#1088#1077#1084#1103' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
      Size = 255
    end
    object sp_Shedule_A9_Lesson_Number: TIntegerField
      FieldName = '_A9_Lesson_Number'
    end
    object sp_SheduleВидзанятия: TStringField
      FieldName = #1042#1080#1076' '#1079#1072#1085#1103#1090#1080#1103
      Size = 255
    end
    object sp_Shedule_A10_Lesson_Type: TIntegerField
      FieldName = '_A10_Lesson_Type'
    end
    object sp_SheduleПредмет: TStringField
      FieldName = #1055#1088#1077#1076#1084#1077#1090
      Size = 255
    end
    object sp_SheduleA11_Subject: TIntegerField
      FieldName = 'A11_Subject'
    end
    object sp_SheduleПреподаватель: TStringField
      FieldName = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
      Size = 255
    end
    object sp_Shedule_A13_Teachers: TIntegerField
      FieldName = '_A13_Teachers'
    end
    object sp_SheduleТипнедели: TStringField
      FieldName = #1058#1080#1087' '#1085#1077#1076#1077#1083#1080
      Size = 255
    end
    object sp_Shedule_A5_Weeks: TIntegerField
      FieldName = '_A5_Weeks'
    end
    object sp_SheduleАудитория: TStringField
      FieldName = #1040#1091#1076#1080#1090#1086#1088#1080#1103
      Size = 255
    end
    object sp_SheduleA16_ClassRooms: TIntegerField
      FieldName = '_A16_ClassRooms'
    end
  end
end
