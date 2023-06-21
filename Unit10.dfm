object Form10: TForm10
  Left = 266
  Top = 237
  Width = 864
  Height = 533
  Caption = 'Form10'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 72
    Width = 116
    Height = 18
    Caption = 'Nama Kostumer'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Century Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 104
    Width = 59
    Height = 18
    Caption = 'Telepon'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Century Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 136
    Width = 53
    Height = 18
    Caption = 'Alamat'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Century Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 168
    Width = 33
    Height = 18
    Caption = 'Kota'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Century Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 200
    Width = 67
    Height = 18
    Caption = 'Kode Pos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Century Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 288
    Width = 777
    Height = 185
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit1: TEdit
    Left = 272
    Top = 72
    Width = 561
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 272
    Top = 104
    Width = 561
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 272
    Top = 136
    Width = 561
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 272
    Top = 168
    Width = 561
    Height = 21
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 272
    Top = 200
    Width = 561
    Height = 21
    TabOrder = 5
  end
  object Button1: TButton
    Left = 120
    Top = 240
    Width = 113
    Height = 33
    Caption = 'Baru'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 248
    Top = 240
    Width = 113
    Height = 33
    Caption = 'Simpan'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 376
    Top = 240
    Width = 113
    Height = 33
    Caption = 'Edit'
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 504
    Top = 240
    Width = 113
    Height = 33
    Caption = 'Hapus'
    TabOrder = 9
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 632
    Top = 240
    Width = 113
    Height = 33
    Caption = 'Batal'
    TabOrder = 10
    OnClick = Button5Click
  end
  object Edit6: TEdit
    Left = 40
    Top = 248
    Width = 41
    Height = 21
    TabOrder = 11
    Text = 'Edit6'
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'dbcostumer'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Program Files (x86)\Borland\Delphi7\Zeos703\libmysql.dll'
    Left = 24
    Top = 24
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from costumer')
    Params = <>
    Left = 96
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 144
    Top = 24
  end
end
