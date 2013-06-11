object Form5: TForm5
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1044#1086#1076#1072#1085#1085#1103' '#1087#1088#1086#1077#1082#1090#1091
  ClientHeight = 362
  ClientWidth = 695
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
    Left = 28
    Top = 10
    Width = 75
    Height = 13
    Caption = #1053#1072#1079#1074#1072' '#1087#1088#1086#1077#1082#1090#1091
  end
  object Label2: TLabel
    Left = 208
    Top = 65
    Width = 70
    Height = 13
    Caption = #1054#1087#1080#1089' '#1087#1088#1086#1077#1082#1090#1091
  end
  object Label3: TLabel
    Left = 28
    Top = 63
    Width = 88
    Height = 13
    Caption = #1055#1086#1095#1072#1090#1086#1082' '#1087#1088#1086#1077#1082#1090#1091
  end
  object Label4: TLabel
    Left = 28
    Top = 111
    Width = 67
    Height = 13
    Caption = #1062#1110#1085#1072' '#1087#1088#1086#1077#1082#1090#1091
  end
  object Label5: TLabel
    Left = 28
    Top = 159
    Width = 101
    Height = 13
    Caption = #1047#1072#1082#1110#1085#1095#1077#1085#1085#1103' '#1087#1088#1086#1077#1082#1090#1091
  end
  object Label6: TLabel
    Left = 28
    Top = 207
    Width = 48
    Height = 13
    Caption = #1047#1072#1084#1086#1074#1085#1080#1082
  end
  object Label7: TLabel
    Left = 28
    Top = 261
    Width = 70
    Height = 13
    Caption = #1057#1090#1072#1085' '#1087#1088#1086#1077#1082#1090#1091
  end
  object Memo1: TMemo
    Left = 208
    Top = 84
    Width = 473
    Height = 217
    Cursor = crIBeam
    ScrollBars = ssBoth
    TabOrder = 0
    WantTabs = True
  end
  object Edit1: TEdit
    Left = 34
    Top = 29
    Width = 653
    Height = 21
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 28
    Top = 130
    Width = 145
    Height = 21
    Hint = #1042#1074#1077#1076#1110#1090#1100' '#1089#1091#1084#1091' '#1074' '#1092#1086#1088#1084#1072#1090#1110' 0,00'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TextHint = #1042#1074#1077#1076#1110#1090#1100' '#1089#1091#1084#1091' '#1074' '#1092#1086#1088#1084#1072#1090#1110' 0,00'
  end
  object Button1: TButton
    Left = 481
    Top = 318
    Width = 75
    Height = 25
    Caption = #1044#1086#1076#1072#1090#1080
    TabOrder = 3
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 28
    Top = 226
    Width = 145
    Height = 21
    TabOrder = 4
    OnChange = ComboBox1Change
  end
  object DateTimePicker1: TDateTimePicker
    Left = 28
    Top = 84
    Width = 145
    Height = 21
    Date = 41346.611692557870000000
    Time = 41346.611692557870000000
    TabOrder = 5
  end
  object DateTimePicker2: TDateTimePicker
    Left = 28
    Top = 178
    Width = 145
    Height = 21
    Date = 41346.612935057870000000
    Time = 41346.612935057870000000
    TabOrder = 6
  end
  object Button2: TButton
    Left = 481
    Top = 318
    Width = 75
    Height = 25
    Caption = #1047#1073#1077#1088#1077#1075#1090#1080
    TabOrder = 7
    OnClick = Button2Click
  end
  object ComboBox2: TComboBox
    Left = 28
    Top = 280
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 8
    Text = #1040#1082#1090#1080#1074#1085#1080#1081
    OnClick = ComboBox2Click
    Items.Strings = (
      #1040#1082#1090#1080#1074#1085#1080#1081
      #1053#1077#1072#1082#1090#1080#1074#1085#1080#1081)
  end
  object Button3: TButton
    Left = 578
    Top = 318
    Width = 75
    Height = 25
    Caption = #1042#1110#1076#1084#1110#1085#1080#1090#1080
    TabOrder = 9
    OnClick = Button3Click
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT id, first_name from db.clients')
    SQLConnection = Form1.SQLConnection1
    Left = 432
    Top = 96
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Left = 384
    Top = 120
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 344
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 488
    Top = 112
  end
end
