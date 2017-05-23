object DM: TDM
  OldCreateOrder = False
  Height = 435
  Width = 337
  object ADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=DataBase_Shedule;Data Source=DELL_BOOK;'
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
    ProcedureName = 'p_AcademicYears;1'
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
  end
end
