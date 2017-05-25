object frmDictionaries: TfrmDictionaries
  Left = 0
  Top = 0
  Caption = 'frmDictionaries'
  ClientHeight = 502
  ClientWidth = 731
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
  object gr_DictionariesList: TcxGrid
    Left = 0
    Top = 0
    Width = 250
    Height = 502
    Align = alLeft
    TabOrder = 0
    ExplicitLeft = 32
    ExplicitTop = 88
    ExplicitHeight = 200
    object gr_DictionariesListDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnCellClick = gr_DictionariesListDBTableView1CellClick
      DataController.DataSource = ds_DictionariesList
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object gr_DictionariesListDBTableView1Dictionaries_ID: TcxGridDBColumn
        DataBinding.FieldName = 'Dictionaries_ID'
        Visible = False
      end
      object gr_DictionariesListDBTableView1Name: TcxGridDBColumn
        Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082
        DataBinding.FieldName = 'Name'
      end
      object gr_DictionariesListDBTableView1TableName: TcxGridDBColumn
        DataBinding.FieldName = 'TableName'
        Visible = False
      end
    end
    object gr_DictionariesListLevel1: TcxGridLevel
      GridView = gr_DictionariesListDBTableView1
    end
  end
  object cxGrid2: TcxGrid
    Left = 250
    Top = 0
    Width = 481
    Height = 502
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 288
    ExplicitTop = 88
    ExplicitWidth = 250
    ExplicitHeight = 200
    object v_AcademicYears: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_AcademicYears
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object v_AcademicYearsAcademic_Years_ID: TcxGridDBColumn
        DataBinding.FieldName = 'Academic_Years_ID'
      end
      object v_AcademicYearsYear_Begin: TcxGridDBColumn
        DataBinding.FieldName = 'Year_Begin'
        Width = 73
      end
      object v_AcademicYearsYear_End: TcxGridDBColumn
        DataBinding.FieldName = 'Year_End'
      end
      object v_AcademicYearsAcademicYears: TcxGridDBColumn
        DataBinding.FieldName = 'AcademicYears'
        Visible = False
      end
    end
    object v_ClassRooms: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_ClassRooms
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object v_ClassRoomsClassRooms_ID: TcxGridDBColumn
        DataBinding.FieldName = 'ClassRooms_ID'
      end
      object v_ClassRoomsName: TcxGridDBColumn
        DataBinding.FieldName = 'Name'
      end
    end
    object v_Days: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_Days
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object v_DaysDays_ID: TcxGridDBColumn
        DataBinding.FieldName = 'Days_ID'
      end
      object v_DaysName: TcxGridDBColumn
        DataBinding.FieldName = 'Name'
      end
    end
    object v_Groups: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_Groups
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object v_GroupsGroups_ID: TcxGridDBColumn
        DataBinding.FieldName = 'Groups_ID'
      end
      object v_GroupsName: TcxGridDBColumn
        DataBinding.FieldName = 'Name'
      end
    end
    object v_Institutes: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_Institutes
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object v_InstitutesInstitutes_ID: TcxGridDBColumn
        DataBinding.FieldName = 'Institutes_ID'
      end
      object v_InstitutesName: TcxGridDBColumn
        DataBinding.FieldName = 'Name'
      end
    end
    object v_LessonNumber: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_LessonNumber
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object v_LessonNumberLesson_Number_ID: TcxGridDBColumn
        DataBinding.FieldName = 'Lesson_Number_ID'
      end
      object v_LessonNumberNumber: TcxGridDBColumn
        DataBinding.FieldName = 'Number'
      end
      object v_LessonNumberTimeBegin: TcxGridDBColumn
        DataBinding.FieldName = 'TimeBegin'
      end
      object v_LessonNumberTimeEnd: TcxGridDBColumn
        DataBinding.FieldName = 'TimeEnd'
      end
    end
    object v_LessonType: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_LessonType
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object v_LessonTypeLesson_Type_ID: TcxGridDBColumn
        DataBinding.FieldName = 'Lesson_Type_ID'
      end
      object v_LessonTypeName: TcxGridDBColumn
        DataBinding.FieldName = 'Name'
      end
      object v_LessonTypeSymbol: TcxGridDBColumn
        DataBinding.FieldName = 'Symbol'
      end
    end
    object v_Semestrs: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_Semestrs
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object v_SemestrsSemestrs_ID: TcxGridDBColumn
        DataBinding.FieldName = 'Semestrs_ID'
      end
      object v_SemestrsName: TcxGridDBColumn
        DataBinding.FieldName = 'Name'
      end
    end
    object v_Subjects: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_Subjects
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object v_SubjectsSubjects_ID: TcxGridDBColumn
        DataBinding.FieldName = 'Subjects_ID'
      end
      object v_SubjectsName: TcxGridDBColumn
        DataBinding.FieldName = 'Name'
      end
    end
    object v_Teachers: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_Teachers
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object v_TeachersTeachers_ID: TcxGridDBColumn
        DataBinding.FieldName = 'Teachers_ID'
      end
      object v_TeachersName: TcxGridDBColumn
        DataBinding.FieldName = 'Name'
      end
    end
    object v_Weeks: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_Weeks
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object v_WeeksWeeks_ID: TcxGridDBColumn
        DataBinding.FieldName = 'Weeks_ID'
      end
      object v_WeeksName: TcxGridDBColumn
        DataBinding.FieldName = 'Name'
      end
      object v_WeeksSymbol: TcxGridDBColumn
        DataBinding.FieldName = 'Symbol'
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = v_AcademicYears
    end
  end
  object sp_DictionariesList: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_DictionariesList;1'
    Parameters = <>
    Left = 152
    Top = 240
    object sp_DictionariesListDictionaries_ID: TAutoIncField
      FieldName = 'Dictionaries_ID'
      ReadOnly = True
    end
    object sp_DictionariesListName: TStringField
      FieldName = 'Name'
      Size = 128
    end
    object sp_DictionariesListTableName: TStringField
      FieldName = 'TableName'
      Size = 128
    end
    object sp_DictionariesListViewName: TStringField
      FieldName = 'ViewName'
      Size = 128
    end
  end
  object ds_DictionariesList: TDataSource
    DataSet = sp_DictionariesList
    Left = 152
    Top = 288
  end
  object ds_AcademicYears: TDataSource
    DataSet = sp_AcademicYears
    Left = 360
    Top = 24
  end
  object sp_ClassRooms: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_ClassRooms;1'
    Parameters = <>
    Left = 256
    Top = 72
    object sp_ClassRoomsClassRooms_ID: TAutoIncField
      FieldName = 'ClassRooms_ID'
      ReadOnly = True
    end
    object sp_ClassRoomsName: TStringField
      FieldName = 'Name'
      Size = 16
    end
  end
  object ds_ClassRooms: TDataSource
    DataSet = sp_ClassRooms
    Left = 360
    Top = 72
  end
  object sp_AcademicYears: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_Academic_Years;1'
    Parameters = <>
    Left = 256
    Top = 24
    object sp_AcademicYearsAcademic_Years_ID: TAutoIncField
      FieldName = 'Academic_Years_ID'
      ReadOnly = True
    end
    object sp_AcademicYearsYear_Begin: TIntegerField
      FieldName = 'Year_Begin'
    end
    object sp_AcademicYearsYear_End: TIntegerField
      FieldName = 'Year_End'
    end
    object sp_AcademicYearsAcademicYears: TStringField
      FieldName = 'AcademicYears'
      ReadOnly = True
      Size = 11
    end
  end
  object sp_Days: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_Days;1'
    Parameters = <>
    Left = 256
    Top = 120
    object sp_DaysDays_ID: TAutoIncField
      FieldName = 'Days_ID'
      ReadOnly = True
    end
    object sp_DaysName: TStringField
      FieldName = 'Name'
      Size = 16
    end
  end
  object sp_Groups: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_Groups;1'
    Parameters = <>
    Left = 256
    Top = 168
    object sp_GroupsGroups_ID: TAutoIncField
      FieldName = 'Groups_ID'
      ReadOnly = True
    end
    object sp_GroupsName: TStringField
      FieldName = 'Name'
      Size = 16
    end
  end
  object sp_Institutes: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_Institutes;1'
    Parameters = <>
    Left = 256
    Top = 216
    object sp_InstitutesInstitutes_ID: TAutoIncField
      FieldName = 'Institutes_ID'
      ReadOnly = True
    end
    object sp_InstitutesName: TStringField
      FieldName = 'Name'
      Size = 1024
    end
  end
  object sp_LessonNumber: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_Lesson_Number;1'
    Parameters = <>
    Left = 256
    Top = 264
    object sp_LessonNumberLesson_Number_ID: TAutoIncField
      FieldName = 'Lesson_Number_ID'
      ReadOnly = True
    end
    object sp_LessonNumberNumber: TIntegerField
      FieldName = 'Number'
    end
    object sp_LessonNumberTimeBegin: TWideStringField
      FieldName = 'TimeBegin'
      Size = 16
    end
    object sp_LessonNumberTimeEnd: TWideStringField
      FieldName = 'TimeEnd'
      Size = 16
    end
  end
  object sp_LessonType: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_Lesson_Type;1'
    Parameters = <>
    Left = 256
    Top = 312
    object sp_LessonTypeLesson_Type_ID: TAutoIncField
      FieldName = 'Lesson_Type_ID'
      ReadOnly = True
    end
    object sp_LessonTypeName: TStringField
      FieldName = 'Name'
      Size = 64
    end
    object sp_LessonTypeSymbol: TStringField
      FieldName = 'Symbol'
      Size = 8
    end
  end
  object sp_Semestrs: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_Semestrs;1'
    Parameters = <>
    Left = 256
    Top = 360
    object sp_SemestrsSemestrs_ID: TAutoIncField
      FieldName = 'Semestrs_ID'
      ReadOnly = True
    end
    object sp_SemestrsName: TStringField
      FieldName = 'Name'
      Size = 16
    end
  end
  object sp_Subjects: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_Subjects;1'
    Parameters = <>
    Left = 256
    Top = 408
    object sp_SubjectsSubjects_ID: TAutoIncField
      FieldName = 'Subjects_ID'
      ReadOnly = True
    end
    object sp_SubjectsName: TStringField
      FieldName = 'Name'
      Size = 128
    end
  end
  object sp_Teachers: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_Teachers;1'
    Parameters = <>
    Left = 256
    Top = 456
    object sp_TeachersTeachers_ID: TAutoIncField
      FieldName = 'Teachers_ID'
      ReadOnly = True
    end
    object sp_TeachersName: TStringField
      FieldName = 'Name'
      Size = 512
    end
  end
  object ds_Days: TDataSource
    DataSet = sp_Days
    Left = 360
    Top = 120
  end
  object ds_Groups: TDataSource
    DataSet = sp_Groups
    Left = 360
    Top = 168
  end
  object ds_Institutes: TDataSource
    DataSet = sp_Institutes
    Left = 360
    Top = 216
  end
  object ds_LessonNumber: TDataSource
    DataSet = sp_LessonNumber
    Left = 360
    Top = 264
  end
  object ds_LessonType: TDataSource
    DataSet = sp_LessonType
    Left = 360
    Top = 312
  end
  object ds_Semestrs: TDataSource
    DataSet = sp_Semestrs
    Left = 360
    Top = 360
  end
  object ds_Subjects: TDataSource
    DataSet = sp_Subjects
    Left = 360
    Top = 408
  end
  object ds_Teachers: TDataSource
    DataSet = sp_Teachers
    Left = 360
    Top = 456
  end
  object sp_Weeks: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_Weeks;1'
    Parameters = <>
    Left = 456
    Top = 24
    object sp_WeeksWeeks_ID: TAutoIncField
      FieldName = 'Weeks_ID'
      ReadOnly = True
    end
    object sp_WeeksName: TStringField
      FieldName = 'Name'
      Size = 16
    end
    object sp_WeeksSymbol: TStringField
      FieldName = 'Symbol'
      Size = 2
    end
  end
  object ds_Weeks: TDataSource
    DataSet = sp_Weeks
    Left = 560
    Top = 24
  end
end
