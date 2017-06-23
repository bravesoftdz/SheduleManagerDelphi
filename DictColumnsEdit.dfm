object frmDictColumnsEdit: TfrmDictColumnsEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frmDictColumnsEdit'
  ClientHeight = 250
  ClientWidth = 333
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 59
    Width = 45
    Height = 13
    Caption = #1058#1080#1087' '#1087#1086#1083#1103
  end
  object Label2: TLabel
    Left = 40
    Top = 86
    Width = 51
    Height = 13
    Caption = #1055#1086#1083#1077' '#1074' '#1041#1044
  end
  object Label3: TLabel
    Left = 24
    Top = 8
    Width = 48
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
  end
  object Label4: TLabel
    Left = 40
    Top = 113
    Width = 61
    Height = 13
    Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082
  end
  object lcb_ColumnType: TcxLookupComboBox
    Left = 168
    Top = 56
    Properties.KeyFieldNames = 'Column_Type_ID'
    Properties.ListColumns = <
      item
        FieldName = 'Column_Type_Name'
      end>
    Properties.ListSource = ds_ColumnType
    Properties.OnChange = lcb_ColumnTypePropertiesChange
    TabOrder = 0
    Width = 145
  end
  object lcb_Field: TcxLookupComboBox
    Left = 168
    Top = 83
    Properties.KeyFieldNames = 'Number'
    Properties.ListColumns = <
      item
        FieldName = 'Name'
      end>
    Properties.ListSource = ds_Fields
    TabOrder = 1
    Width = 145
  end
  object te_Name: TcxTextEdit
    Left = 24
    Top = 24
    TabOrder = 2
    Width = 289
  end
  object cxButton1: TcxButton
    Left = 64
    Top = 208
    Width = 75
    Height = 25
    Caption = 'cxButton1'
    ModalResult = 1
    TabOrder = 3
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 192
    Top = 208
    Width = 75
    Height = 25
    Caption = 'cxButton2'
    ModalResult = 2
    TabOrder = 4
  end
  object lcb_DictType: TcxLookupComboBox
    Left = 168
    Top = 110
    Properties.KeyFieldNames = 'Dict_Type_ID'
    Properties.ListColumns = <
      item
        FieldName = 'Dict_Name'
      end>
    Properties.ListSource = ds_DictType
    TabOrder = 5
    Width = 145
  end
  object sp_ColumnType: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_Column_Type;1'
    Parameters = <>
    Left = 96
    Top = 160
    object sp_ColumnTypeColumn_Type_ID: TAutoIncField
      FieldName = 'Column_Type_ID'
      ReadOnly = True
    end
    object sp_ColumnTypeColumn_Type_Name: TStringField
      FieldName = 'Column_Type_Name'
      Size = 128
    end
  end
  object ds_ColumnType: TDataSource
    DataSet = sp_ColumnType
    Left = 32
    Top = 160
  end
  object sp_DictType: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_Dict_Type_List;1'
    Parameters = <>
    Left = 200
    Top = 160
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
    Left = 280
    Top = 160
  end
  object sp_Fields: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_Fields;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end>
    Left = 200
    Top = 136
    object sp_FieldsNumber: TIntegerField
      FieldName = 'Number'
      ReadOnly = True
    end
    object sp_FieldsName: TWideStringField
      FieldName = 'Name'
      ReadOnly = True
      Size = 128
    end
  end
  object ds_Fields: TDataSource
    DataSet = sp_Fields
    Left = 280
    Top = 136
  end
end
