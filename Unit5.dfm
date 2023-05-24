object Form5: TForm5
  Left = 323
  Top = 199
  Width = 788
  Height = 540
  Caption = 'Form5'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 96
    Width = 61
    Height = 20
    Caption = 'Fakultas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 48
    Top = 64
    Width = 120
    Height = 20
    Caption = 'Jumlah Terdaftar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 48
    Top = 32
    Width = 118
    Height = 20
    Caption = 'Tahun Angkatan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object StringGrid1: TStringGrid
    Left = 432
    Top = 24
    Width = 305
    Height = 97
    ColCount = 4
    DefaultColWidth = 60
    RowCount = 1
    FixedRows = 0
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 216
    Top = 64
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object ComboBox2: TComboBox
    Left = 216
    Top = 96
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'Teknologi Informasi'
      'Hukum'
      'Kedokteran'
      'Sosiologi'
      'Ekonomi'
      'Teknik'
      'Agama'
      'Psikologi'
      'Kesehatan')
  end
  object Chart1: TChart
    Left = 56
    Top = 192
    Width = 657
    Height = 233
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      'GRAFIK'
      '')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    TabOrder = 3
    object Series1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Visible = True
      SeriesColor = clRed
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
    end
  end
  object Button1: TButton
    Left = 56
    Top = 136
    Width = 145
    Height = 33
    Caption = 'ADD DATA'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 248
    Top = 136
    Width = 145
    Height = 33
    Caption = 'CLEAR'
    TabOrder = 5
    OnClick = Button2Click
  end
  object ComboBox1: TComboBox
    Left = 216
    Top = 32
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      '2023'
      '2022'
      '2021'
      '2020'
      '2019'
      '2018')
  end
  object Button3: TButton
    Left = 416
    Top = 136
    Width = 145
    Height = 33
    Caption = 'CLEAR ALL'
    TabOrder = 7
    OnClick = Button3Click
  end
end
