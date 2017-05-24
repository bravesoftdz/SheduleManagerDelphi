object frmDictionaries: TfrmDictionaries
  Left = 0
  Top = 0
  Caption = 'frmDictionaries'
  ClientHeight = 463
  ClientWidth = 641
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
    Height = 463
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
    Width = 391
    Height = 463
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 288
    ExplicitTop = 88
    ExplicitWidth = 250
    ExplicitHeight = 200
    object cxGrid2DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
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
  end
  object ds_DictionariesList: TDataSource
    DataSet = sp_DictionariesList
    Left = 152
    Top = 288
  end
end
