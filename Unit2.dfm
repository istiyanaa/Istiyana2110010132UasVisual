object Form2: TForm2
  Left = 344
  Top = 163
  Width = 685
  Height = 492
  Caption = 'Form2'
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
    Left = 80
    Top = 16
    Width = 44
    Height = 13
    Caption = 'Id_Kelas '
  end
  object lbl2: TLabel
    Left = 80
    Top = 56
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object lbl3: TLabel
    Left = 80
    Top = 96
    Width = 38
    Height = 13
    Caption = 'Jurusan'
  end
  object edt1: TEdit
    Left = 160
    Top = 16
    Width = 465
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 160
    Top = 56
    Width = 465
    Height = 21
    TabOrder = 1
  end
  object btn1: TBitBtn
    Left = 80
    Top = 144
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TBitBtn
    Left = 176
    Top = 144
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TBitBtn
    Left = 264
    Top = 144
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TBitBtn
    Left = 360
    Top = 144
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = btn4Click
  end
  object btn5: TBitBtn
    Left = 456
    Top = 144
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = btn5Click
  end
  object btn6: TBitBtn
    Left = 552
    Top = 144
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 7
  end
  object dbgrd1: TDBGrid
    Left = 80
    Top = 184
    Width = 561
    Height = 120
    DataSource = ds1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edt3: TEdit
    Left = 160
    Top = 96
    Width = 465
    Height = 21
    TabOrder = 9
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
    Left = 16
    Top = 32
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabel_kelas')
    Params = <>
    Left = 16
    Top = 88
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 16
    Top = 144
  end
end
