object DM: TDM
  OldCreateOrder = False
  Height = 435
  Width = 337
  object ADOConnection: TADOConnection
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
end
