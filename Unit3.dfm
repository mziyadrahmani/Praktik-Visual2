object Main: TMain
  Left = 749
  Top = 189
  Width = 344
  Height = 540
  Caption = 'Main'
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    object PRAKTEK1: TMenuItem
      Caption = 'PRAKTEK'
      object PRAKTEK11: TMenuItem
        Caption = 'Kalkulator'
        OnClick = PRAKTEK11Click
      end
      object NilaiMahasiswa1: TMenuItem
        Caption = 'Nilai Mahasiswa'
        OnClick = NilaiMahasiswa1Click
      end
      object Mandiri31: TMenuItem
        Caption = 'Mandiri 3'
        OnClick = Mandiri31Click
      end
      object Mandiri41: TMenuItem
        Caption = 'Mandiri 4'
        OnClick = Mandiri41Click
      end
      object ambah1: TMenuItem
        Caption = 'Penjumlahan'
        OnClick = ambah1Click
      end
      object ContohKondisional1: TMenuItem
        Caption = 'Contoh Kondisional'
        OnClick = ContohKondisional1Click
      end
      object abelDatabase1: TMenuItem
        Caption = 'Tabel Database'
        OnClick = abelDatabase1Click
      end
    end
  end
end
