object frmFormsList: TfrmFormsList
  Left = 0
  Top = 0
  Caption = #1057#1087#1080#1089#1086#1082' '#1092#1086#1088#1084
  ClientHeight = 484
  ClientWidth = 749
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
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object gr_Form: TcxGrid
    Left = 0
    Top = 0
    Width = 749
    Height = 484
    Align = alClient
    TabOrder = 0
    object v_Form: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnCellDblClick = v_FormCellDblClick
      DataController.DataSource = ds_FormsList
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object v_FormForms_ID: TcxGridDBColumn
        Caption = #1050#1086#1076
        DataBinding.FieldName = 'Forms_ID'
        Width = 20
      end
      object v_FormFiles_ID: TcxGridDBColumn
        DataBinding.FieldName = 'Files_ID'
        Visible = False
      end
      object v_FormName: TcxGridDBColumn
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1092#1072#1081#1083#1072
        DataBinding.FieldName = 'Name'
        Width = 138
      end
      object v_FormA1_Academic_Years: TcxGridDBColumn
        DataBinding.FieldName = 'A1_Academic_Years'
        Visible = False
      end
      object v_FormAcademic_Years: TcxGridDBColumn
        Caption = #1059#1095#1077#1073#1085#1099#1081' '#1075#1086#1076
        DataBinding.FieldName = 'Academic_Years'
        Width = 275
      end
      object v_FormA14_Cafedra: TcxGridDBColumn
        DataBinding.FieldName = 'A14_Cafedra'
        Visible = False
      end
      object v_FormCafedra: TcxGridDBColumn
        Caption = #1050#1072#1092#1077#1076#1088#1072
        DataBinding.FieldName = 'Cafedra'
        Width = 233
      end
      object v_FormIs_Actual: TcxGridDBColumn
        Caption = #1040#1082#1090#1091#1072#1083#1100#1085#1086#1089#1090#1100
        DataBinding.FieldName = 'Is_Actual'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Width = 41
      end
      object v_FormDate: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1079#1072#1075#1088#1091#1079#1082#1080
        DataBinding.FieldName = 'Date'
        Width = 40
      end
    end
    object gr_FormLevel1: TcxGridLevel
      GridView = v_Form
    end
  end
  object sp_FormsList: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_Forms_List;1'
    Parameters = <>
    Left = 32
    Top = 424
    object sp_FormsListFiles_ID: TAutoIncField
      FieldName = 'Files_ID'
      ReadOnly = True
    end
    object sp_FormsListName: TStringField
      FieldName = 'Name'
      Size = 128
    end
    object sp_FormsListFileData: TBlobField
      FieldName = 'FileData'
    end
    object sp_FormsListDate: TDateTimeField
      FieldName = 'Date'
    end
    object sp_FormsListFile_Type: TIntegerField
      FieldName = 'File_Type'
    end
    object sp_FormsListForms_ID: TAutoIncField
      FieldName = 'Forms_ID'
      ReadOnly = True
    end
    object sp_FormsListA1_Academic_Years: TIntegerField
      FieldName = 'A1_Academic_Years'
    end
    object sp_FormsListAcademic_Years: TStringField
      FieldName = 'Academic_Years'
      Size = 255
    end
    object sp_FormsListA14_Cafedra: TIntegerField
      FieldName = 'A14_Cafedra'
    end
    object sp_FormsListCafedra: TStringField
      FieldName = 'Cafedra'
      Size = 255
    end
    object sp_FormsListIs_Actual: TBooleanField
      FieldName = 'Is_Actual'
    end
  end
  object ds_FormsList: TDataSource
    DataSet = sp_FormsList
    Left = 104
    Top = 424
  end
end
