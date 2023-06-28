object Form7: TForm7
  Left = 422
  Top = 205
  Width = 928
  Height = 480
  Caption = 'Form7'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 64
    Top = 16
    Width = 38
    Height = 13
    Caption = 'Id_User'
  end
  object lbl2: TLabel
    Left = 64
    Top = 48
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object lbl3: TLabel
    Left = 64
    Top = 80
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object lbl4: TLabel
    Left = 64
    Top = 112
    Width = 25
    Height = 13
    Caption = 'Level'
  end
  object lbl5: TLabel
    Left = 64
    Top = 152
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object edt1: TEdit
    Left = 128
    Top = 16
    Width = 489
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 128
    Top = 48
    Width = 489
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 128
    Top = 80
    Width = 489
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 128
    Top = 112
    Width = 489
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 128
    Top = 144
    Width = 489
    Height = 21
    TabOrder = 4
  end
  object btn1: TBitBtn
    Left = 64
    Top = 184
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 5
    OnClick = btn1Click
  end
  object btn2: TBitBtn
    Left = 160
    Top = 184
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = btn2Click
  end
  object btn3: TBitBtn
    Left = 256
    Top = 184
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 7
    OnClick = btn3Click
  end
  object btn4: TBitBtn
    Left = 352
    Top = 184
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = btn4Click
  end
  object btn5: TBitBtn
    Left = 448
    Top = 184
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 9
    OnClick = btn5Click
  end
  object btn6: TBitBtn
    Left = 544
    Top = 184
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 10
    OnClick = btn6Click
  end
  object dbgrd1: TDBGrid
    Left = 64
    Top = 232
    Width = 561
    Height = 120
    DataSource = ds1
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 8
    Top = 120
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'dbma_smiip_banjarmasinn'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\Delphi4N\libmysql.dll'
    Left = 8
    Top = 16
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabel_user')
    Params = <>
    Left = 8
    Top = 64
  end
  object frxrprt1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45104.867138912040000000
    ReportOptions.LastChange = 45104.867138912040000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 16
    Top = 176
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSet = zqry1
    Left = 16
    Top = 232
  end
end
