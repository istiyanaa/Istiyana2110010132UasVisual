object Form4: TForm4
  Left = 342
  Top = 165
  Width = 928
  Height = 480
  Caption = 'Form4'
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
    Left = 40
    Top = 16
    Width = 36
    Height = 13
    Caption = 'Id_Poin'
  end
  object lbl2: TLabel
    Left = 40
    Top = 48
    Width = 53
    Height = 13
    Caption = 'Nama_Poin'
  end
  object lbl3: TLabel
    Left = 40
    Top = 80
    Width = 28
    Height = 13
    Caption = 'Bobot'
  end
  object lbl4: TLabel
    Left = 40
    Top = 120
    Width = 24
    Height = 13
    Caption = 'Jenis'
  end
  object lbl5: TLabel
    Left = 40
    Top = 160
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object edt1: TEdit
    Left = 112
    Top = 16
    Width = 497
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 112
    Top = 48
    Width = 497
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 112
    Top = 80
    Width = 497
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 112
    Top = 120
    Width = 497
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 112
    Top = 160
    Width = 497
    Height = 21
    TabOrder = 4
  end
  object dbgrd1: TDBGrid
    Left = 48
    Top = 248
    Width = 569
    Height = 120
    DataSource = ds1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object btn1: TBitBtn
    Left = 48
    Top = 208
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 6
    OnClick = btn1Click
  end
  object btn2: TBitBtn
    Left = 144
    Top = 208
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = btn2Click
  end
  object btn3: TBitBtn
    Left = 240
    Top = 208
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 8
    OnClick = btn3Click
  end
  object btn4: TBitBtn
    Left = 336
    Top = 208
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 9
    OnClick = btn4Click
  end
  object btn5: TBitBtn
    Left = 432
    Top = 208
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 10
    OnClick = btn5Click
  end
  object btn6: TBitBtn
    Left = 536
    Top = 208
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 11
    OnClick = btn6Click
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 128
    Top = 384
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
    Left = 48
    Top = 384
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabel_poin')
    Params = <>
    Left = 88
    Top = 384
  end
  object frxrprt1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45103.864853588000000000
    ReportOptions.LastChange = 45103.891051053240000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 168
    Top = 384
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 291.023810000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'LAPORAN POIN SISWA')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 64.252010000000000000
        Width = 793.701300000000000000
        object Memo2: TfrxMemoView
          Left = 105.826840000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Id Poin')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 230.551330000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Poin')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 351.496290000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Bobot')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 464.882190000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jenis')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 574.488560000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Status')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 143.622140000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo7: TfrxMemoView
          Left = 105.826840000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'id_poin'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."id_poin"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 230.551330000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'nama_poin'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."nama_poin"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 351.496290000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'bobot'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."bobot"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 464.882190000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'jenis'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."jenis"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 574.488560000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'status'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."status"]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSet = zqry1
    Left = 216
    Top = 384
  end
end
