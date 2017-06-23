object frmDict: TfrmDict
  Left = 0
  Top = 0
  Caption = 'frmDict'
  ClientHeight = 407
  ClientWidth = 712
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gr_Dict: TcxGrid
    Left = 0
    Top = 0
    Width = 712
    Height = 407
    Align = alClient
    TabOrder = 0
    object gr_DictView: TcxGridDBTableView
      PopupMenu = pm_Dict
      NavigatorButtons.ConfirmDelete = False
      OnCellDblClick = gr_DictViewCellDblClick
      DataController.DataSource = ds_Dict
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
    end
    object gr_DictLevel1: TcxGridLevel
      GridView = gr_DictView
    end
  end
  object sp_Dict: TADOStoredProc
    Connection = DM.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'p_Dict;1'
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
        Value = Null
      end>
    Left = 24
    Top = 352
  end
  object ds_Dict: TDataSource
    DataSet = sp_Dict
    Left = 80
    Top = 352
  end
  object pm_Dict: TPopupMenu
    Left = 136
    Top = 352
    object N2: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = N2Click
    end
    object N1: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      OnClick = N1Click
    end
    object N3: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = N3Click
    end
  end
end
