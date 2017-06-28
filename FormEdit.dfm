object frmFormEdit: TfrmFormEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 72
  ClientWidth = 441
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 158
    Height = 13
    Caption = #1055#1088#1077#1076#1084#1077#1090' '#1080#1079' '#1092#1072#1081#1083#1072' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1103':'
  end
  object cxButton1: TcxButton
    Left = 99
    Top = 40
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    ModalResult = 1
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 259
    Top = 40
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 1
  end
  object lcb_Subject: TcxLookupComboBox
    Left = 189
    Top = 8
    Properties.KeyFieldNames = 'ID_Dict'
    Properties.ListColumns = <
      item
        FieldName = 'SubjectName'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = ds_Subjects
    TabOrder = 2
    Width = 244
  end
  object sp_Subjects: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_Subjects;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@A1_Academic_Years'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 328
    Top = 8
    object sp_SubjectsID_Dict: TIntegerField
      FieldName = 'ID_Dict'
    end
    object sp_SubjectsSubjectName: TStringField
      FieldName = 'SubjectName'
      Size = 255
    end
  end
  object ds_Subjects: TDataSource
    DataSet = sp_Subjects
    Left = 400
    Top = 8
  end
end
