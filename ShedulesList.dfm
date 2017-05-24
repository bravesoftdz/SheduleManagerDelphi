object frmShedulesList: TfrmShedulesList
  Left = 0
  Top = 0
  Caption = #1057#1087#1080#1089#1086#1082' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1081
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
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGridShedulesList: TcxGrid
    Left = 70
    Top = 0
    Width = 564
    Height = 310
    Align = alClient
    TabOrder = 0
    object cxGridShedulesListDBTableView1: TcxGridDBTableView
      PopupMenu = dxBarPopupMenu1
      OnKeyDown = cxGridShedulesListDBTableView1KeyDown
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_ShedulesList
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
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
    Active = True
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
    object sp_ShedulesListAcademicYears: TStringField
      FieldName = 'AcademicYears'
      ReadOnly = True
      Size = 11
    end
    object sp_ShedulesList_AcademicYearsID: TAutoIncField
      FieldName = '_AcademicYearsID'
      ReadOnly = True
    end
    object sp_ShedulesList_InstitutID: TAutoIncField
      FieldName = '_InstitutID'
      ReadOnly = True
    end
    object sp_ShedulesList_SemestrID: TAutoIncField
      FieldName = '_SemestrID'
      ReadOnly = True
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 592
    Top = 320
    DockControlHeights = (
      70
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'LeftBar'
      CaptionButtons = <>
      DockedDockingStyle = dsLeft
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsLeft
      FloatLeft = 668
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnSave'
        end>
      OneOnRow = True
      RotateWhenVertical = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object btnSave: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivAlways
    end
    object btnRecordEdit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      OnClick = btnRecordEditClick
    end
    object btnSheduleOpen: TdxBarButton
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1077
      Category = 0
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1077
      Visible = ivAlways
      OnClick = btnSheduleOpenClick
    end
    object btnRecordDelete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1077
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1077
      Visible = ivAlways
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btnRecordEdit'
      end
      item
        Visible = True
        ItemName = 'btnSheduleOpen'
      end
      item
        Visible = True
        ItemName = 'btnRecordDelete'
      end>
    UseOwnFont = False
    Left = 392
    Top = 320
  end
end
