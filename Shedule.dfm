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
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 70
    Top = 0
    Width = 600
    Height = 402
    Align = alClient
    TabOrder = 4
    ExplicitLeft = 8
    ExplicitTop = 144
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_Shedule
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Shedules_ID: TcxGridDBColumn
        DataBinding.FieldName = 'Shedules_ID'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Moving = False
      end
      object cxGrid1DBTableView1AcademicYears: TcxGridDBColumn
        DataBinding.FieldName = 'AcademicYears'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Moving = False
      end
      object cxGrid1DBTableView1InstitutName: TcxGridDBColumn
        DataBinding.FieldName = 'InstitutName'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Moving = False
      end
      object cxGrid1DBTableView1SemestrName: TcxGridDBColumn
        DataBinding.FieldName = 'SemestrName'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Moving = False
      end
      object cxGrid1DBTableView1Shedules_Detail_ID: TcxGridDBColumn
        DataBinding.FieldName = 'Shedules_Detail_ID'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Moving = False
      end
      object cxGrid1DBTableView1DayName: TcxGridDBColumn
        Caption = #1044#1077#1085#1100' '#1085#1077#1076#1077#1083#1080
        DataBinding.FieldName = 'DayName'
        Visible = False
        GroupIndex = 2
        HeaderAlignmentHorz = taCenter
        Options.Moving = False
      end
      object cxGrid1DBTableView1GroupName: TcxGridDBColumn
        Caption = #1043#1088#1091#1087#1087#1072
        DataBinding.FieldName = 'GroupName'
        Visible = False
        GroupIndex = 0
        HeaderAlignmentHorz = taCenter
        Options.Moving = False
      end
      object cxGrid1DBTableView1LessonNumber: TcxGridDBColumn
        Caption = #8470' '#1087#1072#1088#1099
        DataBinding.FieldName = 'LessonNumber'
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.Editing = False
        Options.Moving = False
      end
      object cxGrid1DBTableView1TimeBegin: TcxGridDBColumn
        Caption = #1042#1088#1077#1084#1103' '#1085#1072#1095#1072#1083#1072
        DataBinding.FieldName = 'TimeBegin'
        HeaderAlignmentHorz = taCenter
        MinWidth = 100
        Options.Editing = False
        Options.Moving = False
      end
      object cxGrid1DBTableView1TimeEnd: TcxGridDBColumn
        Caption = #1042#1088#1077#1084#1103' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
        DataBinding.FieldName = 'TimeEnd'
        HeaderAlignmentHorz = taCenter
        MinWidth = 100
        Options.Editing = False
        Options.Moving = False
      end
      object cxGrid1DBTableView1LessonTypeName: TcxGridDBColumn
        Caption = #1042#1080#1076' '#1079#1072#1085#1103#1090#1080#1081
        DataBinding.FieldName = 'LessonTypeName'
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.Moving = False
      end
      object cxGrid1DBTableView1SubjectName: TcxGridDBColumn
        Caption = #1055#1088#1077#1076#1084#1077#1090
        DataBinding.FieldName = 'SubjectName'
        HeaderAlignmentHorz = taCenter
        MinWidth = 150
        Options.Moving = False
      end
      object cxGrid1DBTableView1TeacherName: TcxGridDBColumn
        Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
        DataBinding.FieldName = 'TeacherName'
        HeaderAlignmentHorz = taCenter
        MinWidth = 150
        Options.Moving = False
      end
      object cxGrid1DBTableView1WeekName: TcxGridDBColumn
        Caption = #1053#1077#1076#1077#1083#1103
        DataBinding.FieldName = 'WeekName'
        Visible = False
        GroupIndex = 1
        HeaderAlignmentHorz = taCenter
        Options.Moving = False
      end
      object cxGrid1DBTableView1ClassRoomName: TcxGridDBColumn
        Caption = #1040#1091#1076#1080#1090#1086#1088#1080#1103
        DataBinding.FieldName = 'ClassRoomName'
        HeaderAlignmentHorz = taCenter
        MinWidth = 100
        Options.Moving = False
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
    object sp_SheduleShedules_ID: TAutoIncField
      FieldName = 'Shedules_ID'
      ReadOnly = True
    end
    object sp_SheduleAcademicYears: TStringField
      FieldName = 'AcademicYears'
      ReadOnly = True
      Size = 11
    end
    object sp_SheduleInstitutName: TStringField
      FieldName = 'InstitutName'
      Size = 1024
    end
    object sp_SheduleSemestrName: TStringField
      FieldName = 'SemestrName'
      Size = 16
    end
    object sp_SheduleShedules_Detail_ID: TAutoIncField
      FieldName = 'Shedules_Detail_ID'
      ReadOnly = True
    end
    object sp_SheduleDayName: TStringField
      FieldName = 'DayName'
      Size = 16
    end
    object sp_SheduleGroupName: TStringField
      FieldName = 'GroupName'
      Size = 16
    end
    object sp_SheduleLessonNumber: TIntegerField
      FieldName = 'LessonNumber'
    end
    object sp_SheduleTimeBegin: TWideStringField
      FieldName = 'TimeBegin'
      Size = 16
    end
    object sp_SheduleTimeEnd: TWideStringField
      FieldName = 'TimeEnd'
      Size = 16
    end
    object sp_SheduleLessonTypeName: TStringField
      FieldName = 'LessonTypeName'
      Size = 64
    end
    object sp_SheduleSubjectName: TStringField
      FieldName = 'SubjectName'
      Size = 128
    end
    object sp_SheduleTeacherName: TStringField
      FieldName = 'TeacherName'
      Size = 512
    end
    object sp_SheduleWeekName: TStringField
      FieldName = 'WeekName'
      Size = 16
    end
    object sp_SheduleClassRoomName: TStringField
      FieldName = 'ClassRoomName'
      Size = 16
    end
  end
end
