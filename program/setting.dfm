object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Connect setting'
  ClientHeight = 153
  ClientWidth = 280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 171
    Width = 56
    Height = 13
    Caption = 'DriverName'
    Enabled = False
  end
  object Label2: TLabel
    Left = 32
    Top = 198
    Width = 46
    Height = 13
    Caption = 'Database'
    Enabled = False
  end
  object Label3: TLabel
    Left = 32
    Top = 225
    Width = 71
    Height = 13
    Caption = 'ServerCharSet'
    Enabled = False
  end
  object Label4: TLabel
    Left = 32
    Top = 252
    Width = 78
    Height = 13
    Caption = 'ConnectTimeout'
    Enabled = False
  end
  object Label5: TLabel
    Left = 32
    Top = 44
    Width = 55
    Height = 13
    Caption = 'User_Name'
  end
  object Label6: TLabel
    Left = 32
    Top = 17
    Width = 49
    Height = 13
    Caption = 'HostName'
  end
  object Label7: TLabel
    Left = 32
    Top = 71
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Edit1: TEdit
    Left = 120
    Top = 168
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 4
    Text = 'MySQL'
  end
  object Edit2: TEdit
    Left = 120
    Top = 195
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 5
    Text = 'db'
  end
  object Edit3: TEdit
    Left = 120
    Top = 222
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 6
    Text = 'utf8'
  end
  object Edit4: TEdit
    Left = 120
    Top = 249
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 7
    Text = '60'
  end
  object Edit5: TEdit
    Left = 120
    Top = 41
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit6: TEdit
    Left = 120
    Top = 14
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit7: TEdit
    Left = 120
    Top = 68
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 32
    Top = 281
    Width = 76
    Height = 48
    Lines.Strings = (
      'Memo1')
    TabOrder = 8
    Visible = False
  end
  object Button1: TButton
    Left = 104
    Top = 116
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 3
    OnClick = Button1Click
  end
  object IdEncoderMIME1: TIdEncoderMIME
    FillChar = '='
    Left = 160
    Top = 280
  end
end
