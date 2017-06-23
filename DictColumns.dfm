object frmDictColumns: TfrmDictColumns
  Left = 0
  Top = 0
  Caption = 'frmDictColumns'
  ClientHeight = 456
  ClientWidth = 716
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 716
    Height = 456
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 280
    ExplicitTop = 208
    ExplicitWidth = 250
    ExplicitHeight = 200
    object cxGrid1DBTableView1: TcxGridDBTableView
      PopupMenu = pm_DictColumns
      NavigatorButtons.ConfirmDelete = False
      OnCellDblClick = cxGrid1DBTableView1CellDblClick
      DataController.DataSource = ds_DictTypeColumns
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      object cxGrid1DBTableView1Dict_Columns_ID: TcxGridDBColumn
        DataBinding.FieldName = 'Dict_Columns_ID'
      end
      object cxGrid1DBTableView1Field: TcxGridDBColumn
        DataBinding.FieldName = 'Field'
      end
      object cxGrid1DBTableView1Column_Name: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'Column_Name'
      end
      object cxGrid1DBTableView1Column_Type_Name: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1087#1086#1083#1103
        DataBinding.FieldName = 'Column_Type_Name'
      end
      object cxGrid1DBTableView1Column_Type: TcxGridDBColumn
        DataBinding.FieldName = 'Column_Type'
        Visible = False
      end
      object cxGrid1DBTableView1Dict_Link: TcxGridDBColumn
        Caption = #1057#1089#1099#1083#1082#1072' '#1085#1072' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082
        DataBinding.FieldName = 'Dict_Link'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object sp_DictTypeColumns: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_Dict_Columns;1'
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
    Left = 48
    Top = 400
    object sp_DictTypeColumnsDict_Columns_ID: TAutoIncField
      FieldName = 'Dict_Columns_ID'
      ReadOnly = True
    end
    object sp_DictTypeColumnsField: TStringField
      FieldName = 'Field'
      Size = 32
    end
    object sp_DictTypeColumnsColumn_Name: TStringField
      FieldName = 'Column_Name'
      Size = 255
    end
    object sp_DictTypeColumnsColumn_Type: TIntegerField
      FieldName = 'Column_Type'
    end
    object sp_DictTypeColumnsDict_Link: TIntegerField
      FieldName = 'Dict_Link'
    end
    object sp_DictTypeColumnsColumn_Type_Name: TStringField
      FieldName = 'Column_Type_Name'
      Size = 128
    end
  end
  object ds_DictTypeColumns: TDataSource
    DataSet = sp_DictTypeColumns
    Left = 176
    Top = 400
  end
  object pm_DictColumns: TPopupMenu
    Left = 272
    Top = 400
    object n_Insert: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1083#1077
      OnClick = n_InsertClick
    end
    object n_Edit: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      OnClick = n_EditClick
    end
    object N3: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
    end
  end
end
