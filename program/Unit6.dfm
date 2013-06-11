object Form6: TForm6
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1055#1088#1080#1093#1110#1076
  ClientHeight = 239
  ClientWidth = 651
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  GlassFrame.Enabled = True
  GlassFrame.SheetOfGlass = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 27
    Width = 37
    Height = 13
    Caption = #1055#1088#1086#1077#1082#1090
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 40
    Top = 60
    Width = 33
    Height = 13
    Caption = #1050#1083#1110#1077#1085#1090
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 40
    Top = 94
    Width = 45
    Height = 13
    Caption = #1055#1088#1080#1084#1110#1090#1082#1072
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 40
    Top = 129
    Width = 25
    Height = 13
    Caption = #1057#1091#1084#1072
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 328
    Top = 60
    Width = 39
    Height = 13
    Caption = #1042#1072#1083#1102#1090#1072
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel
    Left = 328
    Top = 94
    Width = 36
    Height = 13
    Caption = #1057#1090#1072#1090#1091#1089
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel
    Left = 328
    Top = 129
    Width = 65
    Height = 13
    Caption = #1044#1072#1090#1072' '#1086#1087#1083#1072#1090#1080
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object ComboBox1: TComboBox
    Left = 112
    Top = 24
    Width = 497
    Height = 21
    TabOrder = 0
    OnClick = ComboBox1Click
  end
  object ComboBox2: TComboBox
    Left = 112
    Top = 59
    Width = 177
    Height = 21
    TabOrder = 1
    OnClick = ComboBox2Click
  end
  object ComboBox3: TComboBox
    Left = 440
    Top = 59
    Width = 169
    Height = 21
    TabOrder = 2
    OnClick = ComboBox3Click
  end
  object ComboBox4: TComboBox
    Left = 440
    Top = 91
    Width = 169
    Height = 21
    TabOrder = 3
    OnClick = ComboBox4Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 440
    Top = 126
    Width = 169
    Height = 21
    Date = 41359.768330347220000000
    Time = 41359.768330347220000000
    TabOrder = 4
  end
  object Edit1: TEdit
    Left = 112
    Top = 91
    Width = 177
    Height = 21
    TabOrder = 5
  end
  object Edit2: TEdit
    Left = 112
    Top = 126
    Width = 177
    Height = 21
    Hint = #1042#1074#1077#1076#1110#1090#1100' '#1089#1091#1084#1091' '#1074' '#1092#1086#1088#1084#1072#1090#1110' 0,00'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    TextHint = #1042#1074#1077#1076#1110#1090#1100' '#1089#1091#1084#1091' '#1074' '#1092#1086#1088#1084#1072#1090#1110' 0,00'
  end
  object Button1: TButton
    Left = 214
    Top = 200
    Width = 75
    Height = 25
    Caption = #1044#1086#1076#1072#1090#1080
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 214
    Top = 200
    Width = 75
    Height = 25
    Caption = #1047#1073#1077#1088#1077#1075#1090#1080
    TabOrder = 8
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 368
    Top = 200
    Width = 75
    Height = 25
    Caption = #1042#1110#1076#1084#1110#1085#1080#1090#1080
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 9
    OnClick = Button3Click
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 48
    Top = 160
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 80
    Top = 160
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select projects.name from db.projects')
    SQLConnection = Form1.SQLConnection1
    Left = 144
    Top = 160
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Left = 112
    Top = 160
  end
end
