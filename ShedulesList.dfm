object frmShedulesList: TfrmShedulesList
  Left = 0
  Top = 0
  Caption = 'frmShedulesList'
  ClientHeight = 365
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGridShedulesList: TcxGrid
    Left = 0
    Top = 0
    Width = 634
    Height = 310
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 200
    ExplicitTop = 104
    ExplicitWidth = 250
    ExplicitHeight = 200
    object cxGridShedulesListDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_ShedulesList
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGridShedulesListDBTableView1Shedules_ID: TcxGridDBColumn
        DataBinding.FieldName = 'Shedules_ID'
        Visible = False
      end
      object cxGridShedulesListDBTableView1FileName: TcxGridDBColumn
        DataBinding.FieldName = 'FileName'
        Width = 150
      end
      object cxGridShedulesListDBTableView1FileDate: TcxGridDBColumn
        DataBinding.FieldName = 'FileDate'
        Width = 100
      end
      object cxGridShedulesListDBTableView1AcademicYears: TcxGridDBColumn
        DataBinding.FieldName = 'AcademicYears'
      end
      object cxGridShedulesListDBTableView1Institut: TcxGridDBColumn
        DataBinding.FieldName = 'Institut'
        Width = 250
      end
      object cxGridShedulesListDBTableView1Semestr: TcxGridDBColumn
        DataBinding.FieldName = 'Semestr'
      end
      object cxGridShedulesListDBTableView1Is_Actual: TcxGridDBColumn
        DataBinding.FieldName = 'Is_Actual'
        PropertiesClassName = 'TcxCheckBoxProperties'
      end
    end
    object cxGridShedulesListLevel1: TcxGridLevel
      GridView = cxGridShedulesListDBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 310
    Width = 634
    Height = 55
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 1
  end
  object ds_ShedulesList: TDataSource
    DataSet = sp_ShedulesList
    Left = 80
    Top = 312
  end
  object sp_ShedulesList: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_Shedules_List'
    Parameters = <>
    Left = 24
    Top = 312
    object sp_ShedulesListShedules_ID: TAutoIncField
      FieldName = 'Shedules_ID'
      ReadOnly = True
    end
    object sp_ShedulesListFileName: TStringField
      FieldName = 'FileName'
      Size = 128
    end
    object sp_ShedulesListFileDate: TDateTimeField
      FieldName = 'FileDate'
    end
    object sp_ShedulesListAcademicYears: TStringField
      FieldName = 'AcademicYears'
      ReadOnly = True
      Size = 11
    end
    object sp_ShedulesListInstitut: TStringField
      FieldName = 'Institut'
      Size = 1024
    end
    object sp_ShedulesListSemestr: TStringField
      FieldName = 'Semestr'
      Size = 16
    end
    object sp_ShedulesListIs_Actual: TBooleanField
      FieldName = 'Is_Actual'
    end
  end
end
