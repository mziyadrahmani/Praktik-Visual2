object Form2: TForm2
  Left = 335
  Top = 219
  Width = 624
  Height = 418
  Caption = 'Tugas Mandiri 2'
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
    Left = 160
    Top = 16
    Width = 312
    Height = 37
    Caption = 'Input Nilai Mahasiswa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 128
    Width = 105
    Height = 20
    Caption = 'Nilai Kehadiran'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 168
    Width = 73
    Height = 20
    Caption = 'Nilai tugas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 208
    Width = 65
    Height = 20
    Caption = 'Nilai UTS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 40
    Top = 248
    Width = 77
    Height = 20
    Caption = 'Nilai harian'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 40
    Top = 288
    Width = 67
    Height = 20
    Caption = 'Nilai UAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 216
    Top = 88
    Width = 29
    Height = 20
    Caption = 'Nilai'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 304
    Top = 88
    Width = 43
    Height = 20
    Caption = 'Bobot'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 392
    Top = 128
    Width = 68
    Height = 20
    Caption = 'Total Nilai'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 392
    Top = 168
    Width = 45
    Height = 20
    Caption = 'Grade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 392
    Top = 208
    Width = 83
    Height = 20
    Caption = 'Keterangan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 208
    Top = 128
    Width = 41
    Height = 21
    TabOrder = 0
    Text = '0'
  end
  object Edit2: TEdit
    Left = 208
    Top = 168
    Width = 41
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object Edit3: TEdit
    Left = 208
    Top = 208
    Width = 41
    Height = 21
    TabOrder = 2
    Text = '0'
  end
  object Edit4: TEdit
    Left = 208
    Top = 248
    Width = 41
    Height = 21
    TabOrder = 3
    Text = '0'
  end
  object Edit5: TEdit
    Left = 208
    Top = 288
    Width = 41
    Height = 21
    TabOrder = 4
    Text = '0'
  end
  object Edit6: TEdit
    Left = 304
    Top = 128
    Width = 41
    Height = 21
    ReadOnly = True
    TabOrder = 5
    Text = '15'
  end
  object Edit7: TEdit
    Left = 304
    Top = 168
    Width = 41
    Height = 21
    ReadOnly = True
    TabOrder = 6
    Text = '25'
  end
  object Edit8: TEdit
    Left = 304
    Top = 208
    Width = 41
    Height = 21
    ReadOnly = True
    TabOrder = 7
    Text = '20'
  end
  object Edit9: TEdit
    Left = 304
    Top = 248
    Width = 41
    Height = 21
    ReadOnly = True
    TabOrder = 8
    Text = '10'
  end
  object Edit10: TEdit
    Left = 304
    Top = 288
    Width = 41
    Height = 21
    ReadOnly = True
    TabOrder = 9
    Text = '30'
  end
  object Button1: TButton
    Left = 72
    Top = 336
    Width = 73
    Height = 25
    Caption = 'Hitung'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 280
    Top = 336
    Width = 73
    Height = 25
    Caption = 'Reset'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 472
    Top = 336
    Width = 73
    Height = 25
    Caption = 'Keluar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = Button3Click
  end
  object Edit11: TEdit
    Left = 520
    Top = 128
    Width = 41
    Height = 21
    ReadOnly = True
    TabOrder = 13
    Text = '0'
  end
  object Edit12: TEdit
    Left = 520
    Top = 168
    Width = 41
    Height = 21
    ReadOnly = True
    TabOrder = 14
  end
  object Edit13: TEdit
    Left = 520
    Top = 208
    Width = 41
    Height = 21
    ReadOnly = True
    TabOrder = 15
  end
end
