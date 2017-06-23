object frmDictType: TfrmDictType
  Left = 0
  Top = 0
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
  ClientHeight = 477
  ClientWidth = 672
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
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gr_DictType: TcxGrid
    Left = 0
    Top = 0
    Width = 672
    Height = 477
    Align = alClient
    TabOrder = 0
    object gr_DictTypeDBTableView1: TcxGridDBTableView
      PopupMenu = pm_DictType
      NavigatorButtons.ConfirmDelete = False
      OnCellDblClick = gr_DictTypeDBTableView1CellDblClick
      DataController.DataSource = ds_DictType
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      object gr_DictTypeDBTableView1Dict_Type_ID: TcxGridDBColumn
        Caption = #1050#1086#1076
        DataBinding.FieldName = 'Dict_Type_ID'
        Width = 35
      end
      object gr_DictTypeDBTableView1Dict_Name: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'Dict_Name'
        Width = 635
      end
    end
    object gr_DictTypeLevel1: TcxGridLevel
      GridView = gr_DictTypeDBTableView1
    end
  end
  object sp_DictType: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_Dict_Type_List;1'
    Parameters = <>
    Left = 24
    Top = 408
    object sp_DictTypeDict_Type_ID: TAutoIncField
      FieldName = 'Dict_Type_ID'
      ReadOnly = True
    end
    object sp_DictTypeDict_Name: TStringField
      FieldName = 'Dict_Name'
      Size = 255
    end
  end
  object ds_DictType: TDataSource
    DataSet = sp_DictType
    Left = 112
    Top = 408
  end
  object pm_DictType: TPopupMenu
    Left = 192
    Top = 408
    object n_Insert: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082
      OnClick = n_InsertClick
    end
    object n_Edit: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      OnClick = n_EditClick
    end
    object n_Delete: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = n_DeleteClick
    end
  end
end
