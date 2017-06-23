object frmDictEdit: TfrmDictEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frmDictEdit'
  ClientHeight = 464
  ClientWidth = 394
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
  object sp_Columns: TADOStoredProc
    Connection = DM.ADOConnection
    ProcedureName = 'p_Dict_Data;1'
    Parameters = <>
    Left = 32
    Top = 392
  end
  object ds_Columns: TDataSource
    DataSet = sp_Columns
    Left = 32
    Top = 344
  end
end
