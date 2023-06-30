object Form9: TForm9
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'MAIN MENU'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 40
    Top = 24
    object mniFILE1: TMenuItem
      Caption = 'FILE'
      object DATAHUBUNGAN1: TMenuItem
        Caption = 'DATA HUBUNGAN'
        OnClick = DATAHUBUNGAN1Click
      end
      object mniDATAKELAS1: TMenuItem
        Caption = 'DATA KELAS'
        OnClick = mniDATAKELAS1Click
      end
      object mniDATAORANGTUA1: TMenuItem
        Caption = 'DATA ORANG TUA'
        OnClick = mniDATAORANGTUA1Click
      end
      object mniDATAPOIN1: TMenuItem
        Caption = 'DATA POIN'
        OnClick = mniDATAPOIN1Click
      end
      object mniDATASEMSESTER1: TMenuItem
        Caption = 'DATA SEMSESTER'
        OnClick = mniDATASEMSESTER1Click
      end
      object mniDATASISWA1: TMenuItem
        Caption = 'DATA SISWA'
        OnClick = mniDATASISWA1Click
      end
      object mniDATAUSER1: TMenuItem
        Caption = 'DATA USER'
        OnClick = mniDATAUSER1Click
      end
      object mniDATAWALIKELAS1: TMenuItem
        Caption = 'DATA WALI KELAS'
        OnClick = mniDATAWALIKELAS1Click
      end
    end
  end
end
