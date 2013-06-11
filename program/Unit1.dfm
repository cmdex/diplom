object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1110#1103
  ClientHeight = 164
  ClientWidth = 269
  Color = clBtnFace
  DefaultMonitor = dmDesktop
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 47
    Top = 27
    Width = 26
    Height = 13
    Caption = #1051#1086#1075#1110#1085
    Transparent = True
  end
  object Label2: TLabel
    Left = 47
    Top = 72
    Width = 37
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100
  end
  object Button1: TButton
    Left = 168
    Top = 124
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 25
    Top = 124
    Width = 75
    Height = 25
    Caption = #1042#1080#1093#1110#1076
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 90
    Top = 24
    Width = 121
    Height = 21
    Cursor = crIBeam
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
  end
  object MaskEdit1: TMaskEdit
    Left = 90
    Top = 69
    Width = 121
    Height = 21
    Cursor = crIBeam
    PasswordChar = #7
    TabOrder = 1
    OnKeyPress = MaskEdit1KeyPress
  end
  object DateTimePicker1: TDateTimePicker
    Left = 90
    Top = 97
    Width = 121
    Height = 21
    Date = 41354.597503113430000000
    Time = 41354.597503113430000000
    TabOrder = 4
    Visible = False
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'MySQL'
    GetDriverFunc = 'getSQLDriverMYSQL'
    LibraryName = 'dbxmys.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'ConnectTimeout=60'
      'Database=db'
      'HostName=localhost'
      'Password=admin'
      'ServerCharSet=utf8'
      'User_Name=root')
    VendorLib = 'libmysql.dll'
    Connected = True
    Left = 224
    Top = 8
  end
  object SQLQuery1: TSQLQuery
    DataSource = Form2.DataSource1
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Top = 64
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Top = 96
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
  end
  object IdDecoderMIME1: TIdDecoderMIME
    FillChar = '='
    Left = 224
    Top = 56
  end
end
