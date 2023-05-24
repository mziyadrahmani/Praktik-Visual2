object Form4: TForm4
  Left = 500
  Top = 244
  Width = 757
  Height = 489
  Caption = 'Tugas Mandiri 3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 29
    Height = 20
    Caption = 'NIM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 125
    Height = 20
    Caption = 'Nama Mahasiswa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 88
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
    Left = 408
    Top = 16
    Width = 305
    Height = 97
    ColCount = 4
    DefaultColWidth = 60
    RowCount = 1
    FixedRows = 0
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 192
    Top = 24
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 192
    Top = 56
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object ComboBox1: TComboBox
    Left = 192
    Top = 88
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      '2023'
      '2022'
      '2021'
      '2020'
      '2019'
      '2018')
  end
  object Chart1: TChart
    Left = 32
    Top = 184
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
    TabOrder = 4
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
    Left = 96
    Top = 136
    Width = 145
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 488
    Top = 136
    Width = 145
    Height = 33
    Caption = 'UPDATE GRAFIK'
    TabOrder = 6
    OnClick = Button2Click
  end
end
