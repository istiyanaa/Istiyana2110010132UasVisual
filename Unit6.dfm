object Form6: TForm6
  Left = 324
  Top = 132
  Width = 928
  Height = 480
  Caption = 'Form6'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 48
    Top = 8
    Width = 43
    Height = 13
    Caption = 'Id_Siswa'
  end
  object lbl2: TLabel
    Left = 48
    Top = 40
    Width = 14
    Height = 13
    Caption = 'Nis'
  end
  object lbl3: TLabel
    Left = 48
    Top = 72
    Width = 20
    Height = 13
    Caption = 'Nisn'
  end
  object lbl4: TLabel
    Left = 48
    Top = 104
    Width = 60
    Height = 13
    Caption = 'Nama_Siswa'
  end
  object lbl5: TLabel
    Left = 48
    Top = 136
    Width = 14
    Height = 13
    Caption = 'Nik'
  end
  object lbl6: TLabel
    Left = 296
    Top = 8
    Width = 3
    Height = 13
  end
  object lbl7: TLabel
    Left = 296
    Top = 8
    Width = 65
    Height = 13
    Caption = 'Tempat_Lahir'
  end
  object lbl8: TLabel
    Left = 296
    Top = 40
    Width = 67
    Height = 13
    Caption = 'Tanggal_Lahir'
  end
  object lbl9: TLabel
    Left = 296
    Top = 72
    Width = 66
    Height = 13
    Caption = 'Jenis_Kelamin'
  end
  object lbl10: TLabel
    Left = 296
    Top = 104
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object lbl11: TLabel
    Left = 296
    Top = 136
    Width = 20
    Height = 13
    Caption = 'Telp'
  end
  object lbl12: TLabel
    Left = 560
    Top = 8
    Width = 13
    Height = 13
    Caption = 'Hp'
  end
  object lbl13: TLabel
    Left = 560
    Top = 40
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object lbl14: TLabel
    Left = 560
    Top = 72
    Width = 66
    Height = 13
    Caption = 'Tingkat_Kelas'
  end
  object lbl15: TLabel
    Left = 560
    Top = 104
    Width = 38
    Height = 13
    Caption = 'Jurusan'
  end
  object lbl16: TLabel
    Left = 560
    Top = 136
    Width = 36
    Height = 13
    Caption = 'Id_Wali'
  end
  object edt1: TEdit
    Left = 128
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 128
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 128
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 128
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 128
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 384
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object edt7: TEdit
    Left = 384
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object edt8: TEdit
    Left = 384
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object edt9: TEdit
    Left = 384
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object edt10: TEdit
    Left = 384
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object edt11: TEdit
    Left = 640
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object edt12: TEdit
    Left = 640
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object edt13: TEdit
    Left = 640
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object edt14: TEdit
    Left = 640
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 13
  end
  object edt15: TEdit
    Left = 640
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 14
  end
  object btn1: TBitBtn
    Left = 64
    Top = 184
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 15
    OnClick = btn1Click
  end
  object btn2: TBitBtn
    Left = 184
    Top = 184
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 16
    OnClick = btn2Click
  end
  object btn3: TBitBtn
    Left = 296
    Top = 184
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 17
    OnClick = btn3Click
  end
  object btn4: TBitBtn
    Left = 416
    Top = 184
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 18
    OnClick = btn4Click
  end
  object btn5: TBitBtn
    Left = 536
    Top = 184
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 19
    OnClick = btn5Click
  end
  object btn6: TBitBtn
    Left = 656
    Top = 184
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 20
    OnClick = btn6Click
  end
  object dbgrd1: TDBGrid
    Left = 48
    Top = 232
    Width = 713
    Height = 120
    DataSource = ds1
    TabOrder = 21
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
      'select * from tabel_siswa')
    Params = <>
    Left = 8
    Top = 72
  end
  object frxrprt1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45104.459891944400000000
    ReportOptions.LastChange = 45104.848202280090000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 8
    Top = 168
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
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 64.252010000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Id Siswa')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 52.913420000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nis')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 86.929190000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nisn')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 128.504020000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Nama Siswa')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 207.874150000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nik')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 241.889920000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Tempat Lahir')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 325.039580000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Tgl Lahir')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 381.732530000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jk')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 404.409710000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Alamat')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 461.102660000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Telp')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 514.016080000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Hp')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 551.811380000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Status')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 597.165740000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Tingkat Kls')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 668.976810000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Jurusan')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 725.669760000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Id Wali')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 143.622140000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo16: TfrxMemoView
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'id_siswa'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."id_siswa"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 52.913420000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'nis'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."nis"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 86.929190000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'nisn'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."nisn"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 128.504020000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'nama_siswa'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."nama_siswa"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 207.874150000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'nik'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."nik"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 241.889920000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'tempat_lahir'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."tempat_lahir"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 325.039580000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'tanggal_lahir'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."tanggal_lahir"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 381.732530000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'jenis_kelamin'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."jenis_kelamin"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 404.409710000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'alamat'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."alamat"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 461.102660000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'telp'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."telp"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 514.016080000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'hp'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."hp"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 551.811380000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'status'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."status"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 597.165740000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'tingkat_kelas'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."tingkat_kelas"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 668.976810000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'jurusan'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."jurusan"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 725.669760000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'id_wali'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."id_wali"]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSet = zqry1
    Left = 8
    Top = 224
  end
end
