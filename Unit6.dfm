object Form6: TForm6
  Left = 314
  Top = 240
  Width = 386
  Height = 248
  Caption = 'Form6'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 192
    Top = 16
    Width = 45
    Height = 13
    Caption = 'TAMBAH'
  end
  object Label2: TLabel
    Left = 56
    Top = 56
    Width = 29
    Height = 13
    Caption = 'Nilai 1'
  end
  object Label3: TLabel
    Left = 56
    Top = 88
    Width = 29
    Height = 13
    Caption = 'Nilai 2'
  end
  object Label4: TLabel
    Left = 56
    Top = 120
    Width = 23
    Height = 13
    Caption = 'Hasil'
  end
  object Edit1: TEdit
    Left = 112
    Top = 56
    Width = 105
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 112
    Top = 88
    Width = 105
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 112
    Top = 120
    Width = 105
    Height = 21
    TabOrder = 2
    Text = 'Edit3'
  end
  object Button1: TButton
    Left = 264
    Top = 48
    Width = 57
    Height = 41
    Caption = 'TAMBAH'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 264
    Top = 104
    Width = 57
    Height = 41
    Caption = 'SELESAI'
    TabOrder = 4
    OnClick = Button2Click
  end
end
