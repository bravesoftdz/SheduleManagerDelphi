object frmForm: TfrmForm
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' 101'
  ClientHeight = 471
  ClientWidth = 666
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
  PixelsPerInch = 96
  TextHeight = 13
  object gr_Form: TcxGrid
    Left = 0
    Top = 0
    Width = 666
    Height = 471
    Align = alClient
    TabOrder = 0
    object v_Form: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnCellClick = v_FormCellClick
      OnCellDblClick = v_FormCellDblClick
      DataController.DataSource = ds_Form
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      object v_FormCOLUMN1: TcxGridDBColumn
        Caption = #8470
        DataBinding.FieldName = 'COLUMN1'
        Width = 20
      end
      object v_FormForms_Detail_ID: TcxGridDBColumn
        DataBinding.FieldName = 'Forms_Detail_ID'
        Visible = False
      end
      object v_FormKurs: TcxGridDBColumn
        Caption = #1050#1091#1088#1089
        DataBinding.FieldName = 'Kurs'
        Width = 20
      end
      object v_FormSemestr: TcxGridDBColumn
        Caption = #1057#1077#1084#1077#1089#1090#1088
        DataBinding.FieldName = 'Semestr'
        Width = 20
      end
      object v_FormGroups: TcxGridDBColumn
        Caption = #1043#1088#1091#1087#1087#1099
        DataBinding.FieldName = 'Groups'
      end
      object v_FormA8_Groups_ID: TcxGridDBColumn
        DataBinding.FieldName = 'A8_Groups_ID'
        Visible = False
      end
      object v_FormName_Dict: TcxGridDBColumn
        Caption = #1043#1088#1091#1087#1087#1072
        DataBinding.FieldName = 'Name_Dict'
        Visible = False
        Width = 71
      end
      object v_FormA12_Subjects_ID: TcxGridDBColumn
        DataBinding.FieldName = 'A12_Subjects_ID'
        Visible = False
      end
      object v_FormName_Dict_1: TcxGridDBColumn
        Caption = #1055#1088#1077#1076#1084#1077#1090
        DataBinding.FieldName = 'Name_Dict_1'
        Width = 286
      end
      object v_FormA11_Subjects: TcxGridDBColumn
        DataBinding.FieldName = 'A11_Subjects'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID_Dict'
        Properties.ListColumns = <
          item
            FieldName = 'SG'
          end>
        Properties.ReadOnly = True
        Visible = False
        Width = 87
      end
      object v_FormName_Dict_2: TcxGridDBColumn
        Caption = #1055#1088#1077#1076#1084#1077#1090' '#1074' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1080
        DataBinding.FieldName = 'Name_Dict_2'
        Width = 187
      end
      object v_FormLection_Count: TcxGridDBColumn
        Caption = #1051#1077#1082
        DataBinding.FieldName = 'Lection_Count'
        Width = 20
      end
      object v_FormLabory_Count: TcxGridDBColumn
        Caption = #1051#1072#1073
        DataBinding.FieldName = 'Labory_Count'
        Width = 20
      end
      object v_FormPractice_Count: TcxGridDBColumn
        Caption = #1055#1047
        DataBinding.FieldName = 'Practice_Count'
        Width = 20
      end
      object v_FormGroups_Count: TcxGridDBColumn
        Caption = #1050#1086#1083'-'#1074#1086' '#1075#1088#1091#1087#1087
        DataBinding.FieldName = 'Groups_Count'
      end
    end
    object gr_FormLevel1: TcxGridLevel
      GridView = v_Form
    end
  end
  object sp_Form: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_Form;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Form_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 32
    Top = 416
    object sp_FormCOLUMN1: TLargeintField
      FieldName = 'COLUMN1'
      ReadOnly = True
    end
    object sp_FormForms_Detail_ID: TAutoIncField
      FieldName = 'Forms_Detail_ID'
      ReadOnly = True
    end
    object sp_FormKurs: TIntegerField
      FieldName = 'Kurs'
    end
    object sp_FormSemestr: TIntegerField
      FieldName = 'Semestr'
    end
    object sp_FormA8_Groups_ID: TIntegerField
      FieldName = 'A8_Groups_ID'
    end
    object sp_FormName_Dict: TStringField
      FieldName = 'Name_Dict'
      Size = 255
    end
    object sp_FormA12_Subjects_ID: TIntegerField
      FieldName = 'A12_Subjects_ID'
    end
    object sp_FormName_Dict_1: TStringField
      FieldName = 'Name_Dict_1'
      Size = 255
    end
    object sp_FormLection_Count: TBCDField
      FieldName = 'Lection_Count'
      Precision = 5
      Size = 2
    end
    object sp_FormLabory_Count: TBCDField
      FieldName = 'Labory_Count'
      Precision = 5
      Size = 2
    end
    object sp_FormPractice_Count: TStringField
      FieldName = 'Practice_Count'
      ReadOnly = True
      Size = 16
    end
    object sp_FormA11_Subjects: TIntegerField
      FieldName = 'A11_Subjects'
    end
    object sp_FormName_Dict_2: TStringField
      FieldName = 'Name_Dict_2'
      Size = 255
    end
    object sp_FormGroups: TMemoField
      FieldName = 'Groups'
      BlobType = ftMemo
    end
    object sp_FormGroups_Count: TIntegerField
      FieldName = 'Groups_Count'
    end
  end
  object ds_Form: TDataSource
    DataSet = sp_Form
    Left = 88
    Top = 416
  end
end
