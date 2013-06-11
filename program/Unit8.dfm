object Form8: TForm8
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1042#1080#1090#1088#1072#1090#1080
  ClientHeight = 219
  ClientWidth = 547
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
    Left = 24
    Top = 37
    Width = 45
    Height = 13
    Caption = #1055#1088#1080#1084#1110#1090#1082#1072
  end
  object Label2: TLabel
    Left = 24
    Top = 75
    Width = 25
    Height = 13
    Caption = #1057#1091#1084#1072
  end
  object Label3: TLabel
    Left = 24
    Top = 115
    Width = 36
    Height = 13
    Caption = #1057#1090#1072#1090#1091#1089
  end
  object Label4: TLabel
    Left = 280
    Top = 75
    Width = 64
    Height = 13
    Caption = #1042#1080#1076' '#1074#1080#1090#1088#1072#1090#1080
  end
  object Label5: TLabel
    Left = 280
    Top = 115
    Width = 26
    Height = 13
    Caption = #1044#1072#1090#1072
  end
  object Button1: TButton
    Left = 144
    Top = 176
    Width = 75
    Height = 25
    Caption = #1044#1086#1076#1072#1090#1080
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 144
    Top = 176
    Width = 75
    Height = 25
    Caption = #1047#1073#1077#1088#1077#1075#1090#1080
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 320
    Top = 176
    Width = 75
    Height = 25
    Caption = #1042#1110#1076#1084#1110#1085#1080#1090#1080
    TabOrder = 2
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 88
    Top = 34
    Width = 425
    Height = 21
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 88
    Top = 72
    Width = 145
    Height = 21
    Hint = #1042#1074#1077#1076#1110#1090#1100' '#1089#1091#1084#1091' '#1074' '#1092#1086#1088#1084#1072#1090#1110' 0,00'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    TextHint = #1042#1074#1077#1076#1110#1090#1100' '#1089#1091#1084#1091' '#1074' '#1092#1086#1088#1084#1072#1090#1110' 0,00'
  end
  object ComboBox1: TComboBox
    Left = 368
    Top = 72
    Width = 145
    Height = 21
    TabOrder = 5
    OnChange = ComboBox1Change
  end
  object ComboBox2: TComboBox
    Left = 88
    Top = 112
    Width = 145
    Height = 21
    TabOrder = 6
    OnChange = ComboBox2Change
    Items.Strings = (
      #1086#1087#1083#1072#1095#1077#1085#1086
      #1085#1077' '#1086#1087#1083#1072#1095#1077#1085#1086)
  end
  object DateTimePicker1: TDateTimePicker
    Left = 368
    Top = 112
    Width = 145
    Height = 21
    Date = 41370.546261203700000000
    Time = 41370.546261203700000000
    TabOrder = 7
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 208
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 240
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select projects.name from db.projects')
    SQLConnection = Form1.SQLConnection1
    Left = 304
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Left = 272
  end
end
