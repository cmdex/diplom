object Form7: TForm7
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1044#1086#1076#1072#1090#1080'\'#1056#1077#1076#1072#1075#1091#1074#1072#1090#1080' '#1058#1080#1087#1080' '#1074#1080#1090#1088#1072#1090
  ClientHeight = 185
  ClientWidth = 358
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 63
    Height = 13
    Caption = #1058#1080#1087' '#1074#1080#1090#1088#1072#1090#1080
  end
  object Label2: TLabel
    Left = 32
    Top = 88
    Width = 64
    Height = 13
    Caption = #1042#1080#1076' '#1074#1080#1090#1088#1072#1090#1080
  end
  object Button1: TButton
    Left = 64
    Top = 144
    Width = 75
    Height = 25
    Caption = #1044#1086#1076#1072#1090#1080
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 64
    Top = 144
    Width = 75
    Height = 25
    Caption = #1047#1073#1077#1088#1077#1075#1090#1080
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 218
    Top = 144
    Width = 75
    Height = 25
    Caption = #1042#1110#1076#1084#1110#1085#1080#1090#1080
    TabOrder = 2
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 136
    Top = 29
    Width = 185
    Height = 21
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 136
    Top = 85
    Width = 185
    Height = 21
    ItemIndex = 1
    TabOrder = 4
    Text = #1053#1077#1088#1077#1075#1091#1083#1103#1088#1085#1080#1081
    OnClick = ComboBox1Click
    Items.Strings = (
      #1056#1077#1075#1091#1083#1103#1088#1085#1080#1081
      #1053#1077#1088#1077#1075#1091#1083#1103#1088#1085#1080#1081)
  end
end
