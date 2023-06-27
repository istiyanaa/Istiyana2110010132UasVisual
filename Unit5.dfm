object Form5: TForm5
  Left = 287
  Top = 162
  Width = 928
  Height = 480
  Caption = 'Form5'
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
    Left = 56
    Top = 16
    Width = 61
    Height = 13
    Caption = 'Id_Semester'
  end
  object lbl2: TLabel
    Left = 56
    Top = 48
    Width = 43
    Height = 13
    Caption = 'Id_Siswa'
  end
  object lbl3: TLabel
    Left = 56
    Top = 80
    Width = 36
    Height = 13
    Caption = 'Id_Poin'
  end
  object lbl4: TLabel
    Left = 56
    Top = 112
    Width = 67
    Height = 13
    Caption = 'Id_Wali_Kelas'
  end
  object lbl5: TLabel
    Left = 56
    Top = 144
    Width = 38
    Height = 13
    Caption = 'Id_Ortu'
  end
  object lbl6: TLabel
    Left = 344
    Top = 16
    Width = 41
    Height = 13
    Caption = 'Id_Kelas'
  end
  object lbl7: TLabel
    Left = 344
    Top = 48
    Width = 38
    Height = 13
    Caption = 'Tanggal'
  end
  object lbl8: TLabel
    Left = 344
    Top = 80
    Width = 45
    Height = 13
    Caption = 'Semester'
  end
  object lbl9: TLabel
    Left = 344
    Top = 112
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object lbl10: TLabel
    Left = 344
    Top = 144
    Width = 66
    Height = 13
    Caption = 'Tingkat_Kelas'
  end
  object edt1: TEdit
    Left = 136
    Top = 16
    Width = 169
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 136
    Top = 48
    Width = 169
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 136
    Top = 80
    Width = 169
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 136
    Top = 112
    Width = 169
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 136
    Top = 144
    Width = 169
    Height = 21
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 432
    Top = 16
    Width = 169
    Height = 21
    TabOrder = 5
  end
  object edt7: TEdit
    Left = 432
    Top = 48
    Width = 169
    Height = 21
    TabOrder = 6
  end
  object edt8: TEdit
    Left = 432
    Top = 80
    Width = 169
    Height = 21
    TabOrder = 7
  end
  object edt9: TEdit
    Left = 432
    Top = 112
    Width = 169
    Height = 21
    TabOrder = 8
  end
  object edt10: TEdit
    Left = 432
    Top = 144
    Width = 169
    Height = 21
    TabOrder = 9
  end
  object btn1: TBitBtn
    Left = 56
    Top = 192
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 10
    OnClick = btn1Click
  end
  object btn2: TBitBtn
    Left = 144
    Top = 192
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 11
    OnClick = btn2Click
  end
  object btn3: TBitBtn
    Left = 240
    Top = 192
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 12
    OnClick = btn3Click
  end
  object btn4: TBitBtn
    Left = 336
    Top = 192
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 13
    OnClick = btn4Click
  end
  object btn5: TBitBtn
    Left = 432
    Top = 192
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 14
    OnClick = btn5Click
  end
  object btn6: TBitBtn
    Left = 528
    Top = 192
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 15
    OnClick = btn6Click
  end
  object dbgrd1: TDBGrid
    Left = 56
    Top = 232
    Width = 553
    Height = 120
    DataSource = ds1
    TabOrder = 16
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
    Top = 8
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabel_semester')
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
    ReportOptions.CreateDate = 45103.899067997690000000
    ReportOptions.LastChange = 45103.899067997690000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 8
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
