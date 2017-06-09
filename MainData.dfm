object DM: TDM
  OldCreateOrder = False
  Height = 435
  Width = 337
  object ADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=DataBase_Shedule;Data Source=DELL-BOOK'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 8
  end
  object cxImageLibrary: TcxImageList
    Height = 64
    Width = 64
    FormatVersion = 1
    DesignInfo = 524568
  end
  object ActionList: TActionList
    Images = cxImageLibrary
    Left = 280
    Top = 64
    object Action1: TAction
      Caption = 'Action1'
    end
  end
  object OpenFileDialog: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 280
    Top = 368
  end
  object ds_AcademicYears: TDataSource
    DataSet = sp_AcademicYears
    Left = 32
    Top = 376
  end
  object sp_AcademicYears: TADOStoredProc
    Connection = ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_Academic_Years;1'
    Parameters = <>
    Left = 32
    Top = 328
    object sp_AcademicYearsAcademic_Years_ID: TAutoIncField
      FieldName = 'Academic_Years_ID'
      ReadOnly = True
    end
    object sp_AcademicYearsAcademicYears: TStringField
      FieldName = 'AcademicYears'
      ReadOnly = True
      Size = 11
    end
    object sp_AcademicYearsYear_Begin: TIntegerField
      FieldName = 'Year_Begin'
    end
    object sp_AcademicYearsYear_End: TIntegerField
      FieldName = 'Year_End'
    end
  end
  object frxReport: TfrxReport
    Version = '4.10.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42880.809760011600000000
    ReportOptions.LastChange = 42886.495709594910000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure DialogPage1OnShow(Sender: TfrxComponent);'
      'begin'
      '  q_Teacher.Close;    '
      '  q_Teacher.Open;'
      '  q_AcademicYears.Close;'
      '  q_AcademicYears.Open;'
      '  q_Semesters.Close;'
      '  q_Semesters.Open;                                      '
      'end;'
      ''
      'procedure Button2OnClick(Sender: TfrxComponent);'
      'begin'
      '                          '
      'end;'
      ''
      'procedure Button1OnClick(Sender: TfrxComponent);'
      'begin'
      '  q_Shedule.Close;'
      
        '  q_Shedule.ParamByName('#39'Teachers_ID'#39').Value := cb_Teacher.KeyVa' +
        'lue;'
      '  q_Shedule.Open;                                  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 32
    Top = 64
    Datasets = <
      item
        DataSet = frxReport.q_Shedule
        DataSetName = 'q_Shedule'
      end
      item
        DataSet = frxReport.q_Teacher
        DataSetName = 'q_Teacher'
      end
      item
        DataSet = frxReport.q_Semesters
        DataSetName = 'q_Semesters'
      end
      item
        DataSet = frxReport.q_AcademicYears
        DataSetName = 'q_AcademicYears'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object ADODatabase: TfrxADODatabase
        DatabaseName = 
          'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
          'fo=False;Initial Catalog=DataBase_Shedule;Data Source=DELL_BOOK;' +
          'Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096' +
          ';Workstation ID=DELL_BOOK;Use Encryption for Data=False;Tag with' +
          ' column collation when possible=False;'
        LoginPrompt = False
        pLeft = 40
        pTop = 16
      end
      object q_Shedule: TfrxADOQuery
        UserName = 'q_Shedule'
        CloseDataSource = True
        FieldAliases.Strings = (
          'Shedules_ID=Shedules_ID'
          'AcademicYears=AcademicYears'
          '_AcademicYearsID=_AcademicYearsID'
          'InstitutName=InstitutName'
          '_InstitutID=_InstitutID'
          'SemestrName=SemestrName'
          '_SemestrID=_SemestrID'
          'Shedules_Detail_ID=Shedules_Detail_ID'
          'DayName=DayName'
          'GroupName=GroupName'
          'LessonNumber=LessonNumber'
          'TimeBegin=TimeBegin'
          'TimeEnd=TimeEnd'
          'LessonTypeName=LessonTypeName'
          'LessonTypeSymbol=LessonTypeSymbol'
          'SubjectName=SubjectName'
          'TeacherName=TeacherName'
          'WeekName=WeekName'
          'WeekSymbol=WeekSymbol'
          'ClassRoomName=ClassRoomName')
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'Academic_Years_ID'
            DataType = ftInteger
          end
          item
            Name = 'Semesters_ID'
            DataType = ftInteger
          end
          item
            Name = 'Teachers_ID'
            DataType = ftString
          end>
        SQL.Strings = (
          'exec dbo.p_Rep_SheduleTeacher '
          #9'@Academic_Years_ID = :Academic_Years_ID'
          #9', @Semesters_ID = :Semesters_ID'
          
            #9', @Teachers_ID = :Teachers_ID                                  ' +
            '                                   ')
        CommandTimeout = 30
        Database = frxReport.ADODatabase
        LockType = ltReadOnly
        pLeft = 120
        pTop = 16
        Parameters = <
          item
            Name = 'Academic_Years_ID'
            DataType = ftInteger
          end
          item
            Name = 'Semesters_ID'
            DataType = ftInteger
          end
          item
            Name = 'Teachers_ID'
            DataType = ftString
          end>
      end
      object q_Teacher: TfrxADOQuery
        UserName = 'q_Teacher'
        CloseDataSource = True
        FieldAliases.Strings = (
          'Teachers_ID=Teachers_ID'
          'Name=Name')
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          
            'select * from dbo.t_Teachers order by Name asc                  ' +
            '                                                                ' +
            '                                                                ' +
            '                                                          ')
        CommandTimeout = 30
        Database = frxReport.ADODatabase
        LockType = ltReadOnly
        pLeft = 40
        pTop = 100
        Parameters = <>
      end
      object q_Semesters: TfrxADOQuery
        UserName = 'q_Semesters'
        CloseDataSource = True
        FieldAliases.Strings = (
          'Semestrs_ID=Semestrs_ID'
          'Name=Name')
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          
            'select * from dbo.t_Semestrs                                    ' +
            '                                                                ' +
            '                                                                ' +
            '                                        ')
        CommandTimeout = 30
        Database = frxReport.ADODatabase
        LockType = ltReadOnly
        pLeft = 40
        pTop = 152
        Parameters = <>
      end
      object q_AcademicYears: TfrxADOQuery
        UserName = 'q_AcademicYears'
        CloseDataSource = True
        FieldAliases.Strings = (
          'Academic_Years_ID=Academic_Years_ID'
          'Name=Name')
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          'select '
          '  Academic_Years_ID'
          
            '  , cast(Year_Begin as varchar(4)) + '#39' - '#39' + cast(Year_End as va' +
            'rchar(4)) as Name                   '
          'from dbo.t_Academic_Years')
        CommandTimeout = 30
        Database = frxReport.ADODatabase
        LockType = ltReadOnly
        pLeft = 40
        pTop = 204
        Parameters = <>
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 92.000000000000000000
        Width = 718.110700000000000000
        DataSet = frxReport.q_Shedule
        DataSetName = 'q_Shedule'
        RowCount = 0
        object Memo1: TfrxMemoView
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LessonNumber'
          DataSet = frxReport.q_Shedule
          DataSetName = 'q_Shedule'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[q_Shedule."LessonNumber"]')
          ParentFont = False
          SuppressRepeated = True
        end
        object Memo3: TfrxMemoView
          Left = 56.692950000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SubjectName'
          DataSet = frxReport.q_Shedule
          DataSetName = 'q_Shedule'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[q_Shedule."SubjectName"]')
          ParentFont = False
          SuppressRepeated = True
        end
        object Memo4: TfrxMemoView
          Left = 204.094620000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'GroupName'
          DataSet = frxReport.q_Shedule
          DataSetName = 'q_Shedule'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[q_Shedule."GroupName"]')
          ParentFont = False
          SuppressRepeated = True
        end
      end
      object Header1: TfrxHeader
        Height = 56.692950000000000000
        Top = 16.000000000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Width = 718.110700000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              #1056'  '#1040'  '#1057'  '#1055'  '#1048'  '#1057'  '#1040'  '#1053'  '#1048'  '#1045'   '#1079#1072#1085#1103#1090#1080#1081' '#1074#1077#1089#1077#1085#1085#1077#1075#1086' '#1089#1077#1084#1077#1089#1090#1088#1072' 4 '#1082#1091#1088#1089 +
              #1072' '
            #1048#1085#1089#1090#1080#1090#1091#1090#1072' '#1048#1058' ('#1052#1048#1056#1069#1040') '#1085#1072' 2016-2017 '#1091#1095'. '#1075'.  ')
          ParentFont = False
        end
      end
    end
    object DialogPage1: TfrxDialogPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Height = 200.000000000000000000
      ClientHeight = 161.000000000000000000
      Left = 302.000000000000000000
      Top = 147.000000000000000000
      Width = 300.000000000000000000
      ClientWidth = 284.000000000000000000
      OnShow = 'DialogPage1OnShow'
      object cb_Teacher: TfrxDBLookupComboBox
        Left = 108.000000000000000000
        Top = 16.000000000000000000
        Width = 165.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        ListField = 'Name'
        DataSet = frxReport.q_Teacher
        DataSetName = 'q_Teacher'
        KeyField = 'Teachers_ID'
        DropDownWidth = 0
        DropDownRows = 10
      end
      object Label1: TfrxLabelControl
        Left = 12.000000000000000000
        Top = 20.000000000000000000
        Width = 80.000000000000000000
        Height = 13.000000000000000000
        ShowHint = True
        Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
        Color = clBtnFace
      end
      object Button1: TfrxButtonControl
        Left = 40.000000000000000000
        Top = 112.000000000000000000
        Width = 75.000000000000000000
        Height = 25.000000000000000000
        ShowHint = True
        Caption = #1054#1082
        ModalResult = 1
        OnClick = 'Button1OnClick'
      end
      object Button2: TfrxButtonControl
        Left = 148.000000000000000000
        Top = 112.000000000000000000
        Width = 75.000000000000000000
        Height = 25.000000000000000000
        ShowHint = True
        Caption = #1054#1090#1084#1077#1085#1072
        ModalResult = 2
        OnClick = 'Button2OnClick'
      end
      object DBLookupComboBox1: TfrxDBLookupComboBox
        Left = 108.000000000000000000
        Top = 44.000000000000000000
        Width = 165.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        ListField = 'Name'
        DataSet = frxReport.q_AcademicYears
        DataSetName = 'q_AcademicYears'
        KeyField = 'Academic_Years_ID'
        DropDownWidth = 0
        DropDownRows = 7
      end
      object DBLookupComboBox2: TfrxDBLookupComboBox
        Left = 108.000000000000000000
        Top = 72.000000000000000000
        Width = 165.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        ListField = 'Name'
        DataSet = frxReport.q_Semesters
        DataSetName = 'q_Semesters'
        KeyField = 'Semestrs_ID'
        DropDownWidth = 0
        DropDownRows = 7
      end
      object Label2: TfrxLabelControl
        Left = 12.000000000000000000
        Top = 52.000000000000000000
        Width = 66.000000000000000000
        Height = 13.000000000000000000
        ShowHint = True
        Caption = #1059#1095#1077#1073#1085#1099#1081' '#1075#1086#1076
        Color = clBtnFace
      end
      object Label3: TfrxLabelControl
        Left = 12.000000000000000000
        Top = 80.000000000000000000
        Width = 42.000000000000000000
        Height = 13.000000000000000000
        ShowHint = True
        Caption = #1057#1077#1084#1077#1089#1090#1088
        Color = clBtnFace
      end
    end
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = ADOConnection
    ProcedureName = 'p_Academic_Years;1'
    Parameters = <>
    Left = 152
    Top = 200
  end
end
