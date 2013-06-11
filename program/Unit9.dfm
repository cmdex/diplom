object Form9: TForm9
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1050#1091#1088#1089' '#1074#1072#1083#1102#1090
  ClientHeight = 158
  ClientWidth = 297
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
  object Label2: TLabel
    Left = 56
    Top = 14
    Width = 20
    Height = 13
    Caption = 'USD'
  end
  object Label3: TLabel
    Left = 56
    Top = 41
    Width = 20
    Height = 13
    Caption = 'EUR'
  end
  object Label4: TLabel
    Left = 56
    Top = 68
    Width = 20
    Height = 13
    Caption = 'RUB'
  end
  object Edit2: TEdit
    Left = 112
    Top = 11
    Width = 121
    Height = 21
    Hint = #1042#1074#1077#1076#1110#1090#1100' '#1079#1085#1072#1095#1077#1085#1085#1103' '#1074' '#1092#1086#1088#1084#1072#1090#1110' 0,00'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TextHint = #1042#1074#1077#1076#1110#1090#1100' '#1079#1085#1072#1095#1077#1085#1085#1103' '#1074' '#1092#1086#1088#1084#1072#1090#1110' 0,00'
  end
  object Edit3: TEdit
    Left = 112
    Top = 38
    Width = 121
    Height = 21
    Hint = #1042#1074#1077#1076#1110#1090#1100' '#1079#1085#1072#1095#1077#1085#1085#1103' '#1074' '#1092#1086#1088#1084#1072#1090#1110' 0,00'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TextHint = #1042#1074#1077#1076#1110#1090#1100' '#1079#1085#1072#1095#1077#1085#1085#1103' '#1074' '#1092#1086#1088#1084#1072#1090#1110' 0,00'
  end
  object Edit4: TEdit
    Left = 112
    Top = 65
    Width = 121
    Height = 21
    Hint = #1042#1074#1077#1076#1110#1090#1100' '#1079#1085#1072#1095#1077#1085#1085#1103' '#1074' '#1092#1086#1088#1084#1072#1090#1110' 0,00'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TextHint = #1042#1074#1077#1076#1110#1090#1100' '#1079#1085#1072#1095#1077#1085#1085#1103' '#1074' '#1092#1086#1088#1084#1072#1090#1110' 0,00'
  end
  object Button1: TButton
    Left = 39
    Top = 119
    Width = 75
    Height = 25
    Caption = #1047#1084#1110#1085#1080#1090#1080
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 184
    Top = 119
    Width = 75
    Height = 25
    Caption = #1042#1110#1076#1084#1110#1085#1080#1090#1080
    TabOrder = 4
    OnClick = Button2Click
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 88
    Top = 88
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 120
    Top = 88
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from db.curency_rate')
    SQLConnection = Form1.SQLConnection1
    Left = 184
    Top = 88
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Left = 152
    Top = 88
  end
end
