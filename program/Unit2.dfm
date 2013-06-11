object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'TimTek'
  ClientHeight = 471
  ClientWidth = 930
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  GlassFrame.SheetOfGlass = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 930
    Height = 471
    ActivePage = TabSheet5
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabOrder = 0
    object TabSheet5: TTabSheet
      Caption = #1030#1085#1092'.'
      ImageIndex = 4
      OnShow = TabSheet5Show
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 922
        Height = 443
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 40
          Top = 25
          Width = 98
          Height = 13
          Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1082#1083#1110#1108#1085#1090#1110#1074':  '
        end
        object Label2: TLabel
          Left = 40
          Top = 44
          Width = 106
          Height = 13
          Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1087#1088#1086#1077#1082#1090#1110#1074':   '
        end
        object Label3: TLabel
          Left = 72
          Top = 63
          Width = 62
          Height = 13
          Caption = #1040#1082#1090#1080#1074#1085#1080#1093':   '
        end
        object Label4: TLabel
          Left = 72
          Top = 82
          Width = 74
          Height = 13
          Caption = #1053#1077#1072#1082#1090#1080#1074#1085#1080#1093':   '
        end
        object Label5: TLabel
          Left = 40
          Top = 101
          Width = 139
          Height = 13
          Caption = #1047#1072#1075#1072#1083#1100#1085#1080#1081' '#1087#1088#1080#1093#1110#1076' '#1082#1086#1096#1090#1110#1074':   '
        end
        object Label6: TLabel
          Left = 40
          Top = 120
          Width = 132
          Height = 13
          Caption = #1055#1088#1080#1093#1110#1076' '#1082#1086#1096#1090#1110#1074' '#1079#1072' '#1084#1110#1089#1103#1094#1100':   '
        end
        object Label27: TLabel
          Left = 40
          Top = 139
          Width = 107
          Height = 13
          Caption = #1056#1077#1075#1091#1083#1103#1088#1085#1110' '#1074#1080#1090#1088#1072#1090#1080':   '
        end
        object Label28: TLabel
          Left = 40
          Top = 158
          Width = 120
          Height = 13
          Caption = #1053#1077#1088#1077#1075#1091#1083#1103#1088#1085#1110' '#1074#1080#1090#1088#1072#1090#1080':   '
        end
        object DateTimePicker1: TDateTimePicker
          Left = 248
          Top = 361
          Width = 81
          Height = 21
          Date = 41381.689020335650000000
          Time = 41381.689020335650000000
          TabOrder = 0
          Visible = False
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = #1050#1083#1110#1108#1085#1090#1080
      OnShow = TabSheet1Show
      object DBGrid1: TDBGrid
        Left = 0
        Top = 44
        Width = 742
        Height = 399
        Align = alClient
        Color = clRed
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnCellClick = DBGrid1CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'first_name'
            Title.Caption = #1055#1088#1110#1079#1074#1080#1097#1077
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'last_name'
            Title.Caption = #1030#1084#39#1103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'middle_name'
            Title.Caption = #1055#1086#1073#1072#1090#1100#1082#1086#1074#1110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'birth_date'
            Title.Caption = #1044#1072#1090#1072' '#1085#1072#1088#1086#1076#1078#1077#1085#1085#1103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'add_date'
            Title.Caption = #1044#1072#1090#1072' '#1076#1086#1076#1072#1085#1085#1103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'add_user_name'
            Title.Caption = #1061#1090#1086' '#1076#1086#1076#1072#1074
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mobile_tel'
            Title.Caption = #1052#1086#1073#1110#1083#1100#1085#1080#1081' '#1090#1077#1083'.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'home_tel'
            Title.Caption = #1044#1086#1084#1072#1096#1085#1110#1081' '#1090#1077#1083'.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'skype'
            Title.Caption = 'Skype'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'e_mail'
            Title.Caption = 'e-mail'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'city'
            Title.Caption = #1052#1110#1089#1090#1086
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'adresa'
            Title.Caption = #1040#1076#1088#1077#1089#1072
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 742
        Top = 44
        Width = 180
        Height = 399
        Align = alRight
        Ctl3D = True
        Locked = True
        ParentBackground = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 0
        VerticalAlignment = taAlignBottom
        object Button1: TButton
          Left = 38
          Top = 27
          Width = 100
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 38
          Top = 58
          Width = 100
          Height = 25
          Caption = #1056#1077#1076#1072#1075#1091#1074#1072#1090#1080
          TabOrder = 1
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 38
          Top = 89
          Width = 100
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 2
          OnClick = Button3Click
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 922
        Height = 44
        Align = alTop
        BiDiMode = bdLeftToRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentBackground = False
        ParentColor = True
        ParentFont = False
        ShowCaption = False
        TabOrder = 2
        object Label7: TLabel
          Left = 9
          Top = -2
          Width = 47
          Height = 13
          Caption = #1055#1088#1110#1079#1074#1080#1097#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 152
          Top = 0
          Width = 22
          Height = 13
          Caption = #1030#1084'`'#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 296
          Top = 0
          Width = 57
          Height = 13
          Caption = #1055#1086#1073#1072#1090#1100#1082#1086#1074#1110
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 440
          Top = 0
          Width = 53
          Height = 13
          Caption = #1061#1090#1086' '#1076#1086#1076#1072#1074
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object ComboBox1: TComboBox
          Left = 9
          Top = 17
          Width = 125
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Sorted = True
          TabOrder = 0
          OnChange = ComboBox1Change
        end
        object ComboBox2: TComboBox
          Left = 152
          Top = 17
          Width = 125
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Sorted = True
          TabOrder = 1
          OnChange = ComboBox2Change
        end
        object ComboBox3: TComboBox
          Left = 296
          Top = 17
          Width = 125
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Sorted = True
          TabOrder = 2
          OnChange = ComboBox3Change
        end
        object ComboBox4: TComboBox
          Left = 440
          Top = 17
          Width = 125
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Sorted = True
          TabOrder = 3
          OnChange = ComboBox4Change
          OnClick = ComboBox4Click
        end
        object Button7: TButton
          Left = 590
          Top = 17
          Width = 100
          Height = 21
          Caption = #1057#1082#1080#1085#1091#1090#1080' '#1092#1110#1083#1100#1090#1088
          TabOrder = 4
          OnClick = Button7Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1088#1086#1077#1082#1090#1080
      DoubleBuffered = False
      ImageIndex = 1
      ParentDoubleBuffered = False
      OnShow = TabSheet2Show
      object Panel2: TPanel
        Left = 742
        Top = 44
        Width = 180
        Height = 399
        Align = alRight
        ParentBackground = False
        TabOrder = 0
        object Button4: TButton
          Left = 38
          Top = 27
          Width = 100
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080
          TabOrder = 0
          OnClick = Button4Click
        end
        object Button5: TButton
          Left = 38
          Top = 58
          Width = 100
          Height = 25
          Caption = #1056#1077#1076#1072#1075#1091#1074#1072#1090#1080
          TabOrder = 1
          OnClick = Button5Click
        end
        object Button6: TButton
          Left = 38
          Top = 89
          Width = 100
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 2
          OnClick = Button6Click
        end
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 44
        Width = 742
        Height = 399
        Align = alClient
        Color = clBtnFace
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnCellClick = DBGrid2CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'name'
            Title.Caption = #1053#1072#1079#1074#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'description'
            Title.Caption = #1054#1087#1080#1089
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'creation_date'
            Title.Caption = #1044#1072#1090#1072' '#1087#1086#1095#1072#1090#1082#1091
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'cost'
            Title.Caption = #1042#1072#1088#1090#1110#1089#1090#1100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'deadline'
            Title.Caption = #1044#1072#1090#1072' '#1079#1072#1082#1110#1085#1095#1077#1085#1085#1103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'active'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'client_id'
            Title.Caption = #1047#1072#1084#1086#1074#1085#1080#1082
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'creator_id'
            Title.Caption = #1061#1090#1086' '#1076#1086#1076#1072#1074
            Visible = True
          end>
      end
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 922
        Height = 44
        Align = alTop
        BiDiMode = bdLeftToRight
        Ctl3D = True
        ParentBiDiMode = False
        ParentBackground = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 2
        object Label11: TLabel
          Left = 9
          Top = 0
          Width = 88
          Height = 13
          Caption = #1042#1072#1088#1090#1110#1089#1090#1100' '#1087#1088#1086#1077#1082#1090#1091
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 152
          Top = 0
          Width = 32
          Height = 13
          Caption = #1050#1083#1110#1108#1085#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 296
          Top = 0
          Width = 62
          Height = 13
          Caption = #1040#1082#1090'./'#1053#1077#1072#1082#1090'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 440
          Top = 0
          Width = 53
          Height = 13
          Caption = #1061#1090#1086' '#1076#1086#1076#1072#1074
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object ComboBox9: TComboBox
          Left = 9
          Top = 17
          Width = 125
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Sorted = True
          TabOrder = 0
          OnChange = ComboBox9Change
          OnClick = ComboBox9Click
          Items.Strings = (
            '0-1000'
            '1000-4000'
            '4000-8000'
            '8000- '#1110' '#1073#1110#1083#1100#1096#1077)
        end
        object ComboBox10: TComboBox
          Left = 296
          Top = 17
          Width = 125
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Sorted = True
          TabOrder = 1
          OnChange = ComboBox10Change
          OnClick = ComboBox10Click
          Items.Strings = (
            #1040#1082#1090#1080#1074#1085#1110
            #1053#1077#1072#1082#1090#1080#1074#1085#1110)
        end
        object ComboBox11: TComboBox
          Left = 152
          Top = 17
          Width = 125
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Sorted = True
          TabOrder = 2
          OnChange = ComboBox11Change
          OnClick = ComboBox11Click
        end
        object ComboBox12: TComboBox
          Left = 440
          Top = 17
          Width = 125
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Sorted = True
          TabOrder = 3
          OnChange = ComboBox12Change
          OnClick = ComboBox12Click
        end
        object Button15: TButton
          Left = 590
          Top = 17
          Width = 100
          Height = 21
          Caption = #1057#1082#1080#1085#1091#1090#1080' '#1092#1110#1083#1100#1090#1088
          TabOrder = 4
          OnClick = Button15Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1050#1086#1088#1080#1089#1090#1091#1074#1072#1095#1110
      ImageIndex = 2
      OnShow = TabSheet3Show
      object Panel3: TPanel
        Left = 742
        Top = 44
        Width = 180
        Height = 399
        Align = alRight
        ParentBackground = False
        TabOrder = 0
        object Button8: TButton
          Left = 40
          Top = 65
          Width = 100
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080
          TabOrder = 0
          OnClick = Button8Click
        end
        object Button9: TButton
          Left = 40
          Top = 127
          Width = 100
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 1
          OnClick = Button9Click
        end
        object Button10: TButton
          Left = 40
          Top = 96
          Width = 100
          Height = 25
          Caption = #1056#1077#1076#1072#1075#1091#1074#1072#1090#1080
          TabOrder = 2
          OnClick = Button10Click
        end
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 44
        Width = 742
        Height = 399
        Align = alClient
        Color = clBtnFace
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnCellClick = DBGrid3CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'first_name'
            Title.Caption = #1055#1088#1110#1079#1074#1080#1097#1077
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'last_name'
            Title.Caption = #1030#1084'`'#1103
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'middle_name'
            Title.Caption = #1055#1086#1073#1072#1090#1100#1082#1086#1074#1110
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'login'
            Title.Caption = #1051#1086#1075#1110#1085
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pass'
            Title.Caption = #1055#1072#1088#1086#1083#1100
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'last_login'
            Title.Caption = #1054#1089#1090'. '#1088#1072#1079' '#1073#1091#1074
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'active'
            Title.Caption = #1040#1082#1090'.\'#1053#1077#1072#1082#1090'.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rate'
            Title.Caption = #1057#1090#1072#1074#1082#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'coef'
            Title.Caption = #1050#1086#1077#1092'.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'permission'
            Title.Caption = #1055#1088#1072#1074#1072
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mobile_tel'
            Title.Caption = #1052#1086#1073'. '#1090#1077#1083'.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'home_tel'
            Title.Caption = #1044#1086#1084'. '#1090#1077#1083'.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'skype'
            Title.Caption = 'Skype'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'e_mail'
            Title.Caption = 'E-mail'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'city'
            Title.Caption = #1052#1110#1089#1090#1086
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'adresa'
            Title.Caption = #1040#1076#1088#1077#1089#1072
            Visible = True
          end>
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 922
        Height = 44
        Align = alTop
        BiDiMode = bdLeftToRight
        Ctl3D = True
        ParentBiDiMode = False
        ParentBackground = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 2
        object Label23: TLabel
          Left = 440
          Top = 0
          Width = 31
          Height = 13
          Caption = #1055#1088#1072#1074#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 296
          Top = 0
          Width = 62
          Height = 13
          Caption = #1040#1082#1090'.\'#1053#1077#1072#1082#1090'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 152
          Top = 0
          Width = 22
          Height = 13
          Caption = #1030#1084'`'#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 9
          Top = -2
          Width = 47
          Height = 13
          Caption = #1055#1088#1110#1079#1074#1080#1097#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object ComboBox5: TComboBox
          Left = 9
          Top = 17
          Width = 125
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Sorted = True
          TabOrder = 0
          OnChange = ComboBox5Change
        end
        object ComboBox6: TComboBox
          Left = 152
          Top = 17
          Width = 125
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Sorted = True
          TabOrder = 1
          OnChange = ComboBox6Change
        end
        object ComboBox7: TComboBox
          Left = 296
          Top = 17
          Width = 125
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Sorted = True
          TabOrder = 2
          OnChange = ComboBox7Change
          OnClick = ComboBox7Click
          Items.Strings = (
            #1040#1082#1090#1080#1074#1085#1080#1081
            #1053#1077#1072#1082#1090#1080#1074#1085#1080#1081)
        end
        object ComboBox8: TComboBox
          Left = 440
          Top = 17
          Width = 125
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Sorted = True
          TabOrder = 3
          OnChange = ComboBox8Change
          OnClick = ComboBox8Click
          Items.Strings = (
            #1040#1076#1084#1110#1085#1110#1089#1090#1088#1072#1090#1086#1088
            #1050#1086#1088#1080#1089#1090#1091#1074#1072#1095)
        end
        object Button14: TButton
          Left = 590
          Top = 17
          Width = 100
          Height = 21
          Caption = #1057#1082#1080#1085#1091#1090#1080' '#1092#1110#1083#1100#1090#1088
          TabOrder = 4
          OnClick = Button14Click
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1055#1088#1080#1093#1110#1076
      ImageIndex = 3
      OnShow = TabSheet4Show
      object Panel6: TPanel
        Left = 742
        Top = 44
        Width = 180
        Height = 399
        Align = alRight
        ParentBackground = False
        TabOrder = 0
        object Button11: TButton
          Left = 38
          Top = 27
          Width = 100
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080
          TabOrder = 0
          OnClick = Button11Click
        end
        object Button12: TButton
          Left = 38
          Top = 58
          Width = 100
          Height = 25
          Caption = #1056#1077#1076#1072#1075#1091#1074#1072#1090#1080
          TabOrder = 1
          OnClick = Button12Click
        end
        object Button13: TButton
          Left = 38
          Top = 89
          Width = 100
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 2
          OnClick = Button13Click
        end
      end
      object DBGrid6: TDBGrid
        Left = 0
        Top = 44
        Width = 742
        Height = 399
        Align = alClient
        DataSource = DataSource6
        GradientEndColor = clYellow
        GradientStartColor = clAqua
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnCellClick = DBGrid6CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'id_project'
            Title.Caption = #1055#1088#1086#1077#1082#1090
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id_client'
            Title.Caption = #1050#1083#1110#1108#1085#1090
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'title'
            Title.Caption = #1055#1088#1080#1084#1110#1090#1082#1072
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'cost'
            Title.Caption = #1057#1091#1084#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id_curency'
            Title.Caption = #1042#1072#1083#1102#1090#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id_status'
            Title.Caption = #1057#1090#1072#1090#1091#1089
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pay_date'
            Title.Caption = #1044#1072#1090#1072' '#1086#1087#1083#1072#1090#1080
            Visible = True
          end>
      end
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 922
        Height = 44
        Align = alTop
        BiDiMode = bdLeftToRight
        Ctl3D = True
        ParentBiDiMode = False
        ParentBackground = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 2
        object Label15: TLabel
          Left = 9
          Top = 0
          Width = 32
          Height = 13
          Caption = #1050#1083#1110#1108#1085#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 152
          Top = 0
          Width = 71
          Height = 13
          Caption = #1057#1091#1084#1072' '#1087#1088#1080#1093#1086#1076#1091
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 296
          Top = 0
          Width = 60
          Height = 13
          Caption = #1058#1080#1087' '#1074#1072#1083#1102#1090#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 440
          Top = 0
          Width = 36
          Height = 13
          Caption = #1057#1090#1072#1090#1091#1089
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object ComboBox13: TComboBox
          Left = 9
          Top = 17
          Width = 125
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Sorted = True
          TabOrder = 0
          OnChange = ComboBox13Change
          OnClick = ComboBox13Click
        end
        object ComboBox14: TComboBox
          Left = 152
          Top = 17
          Width = 125
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Sorted = True
          TabOrder = 1
          OnChange = ComboBox14Change
          OnClick = ComboBox14Click
          Items.Strings = (
            '0-1000'
            '1000-4000'
            '4000-8000'
            '8000- '#1110' '#1073#1110#1083#1100#1096#1077)
        end
        object ComboBox15: TComboBox
          Left = 296
          Top = 17
          Width = 125
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Sorted = True
          TabOrder = 2
          OnChange = ComboBox15Change
          OnClick = ComboBox15Click
        end
        object ComboBox16: TComboBox
          Left = 440
          Top = 17
          Width = 125
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Sorted = True
          TabOrder = 3
          OnChange = ComboBox16Change
          OnClick = ComboBox16Click
        end
        object Button16: TButton
          Left = 590
          Top = 17
          Width = 100
          Height = 21
          Caption = #1057#1082#1080#1085#1091#1090#1080' '#1092#1110#1083#1100#1090#1088
          TabOrder = 4
          OnClick = Button16Click
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = #1058#1080#1087#1080' '#1074#1080#1090#1088#1072#1090
      ImageIndex = 5
      OnShow = TabSheet6Show
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 742
        Height = 443
        Align = alClient
        Color = clWindowText
        DataSource = DataSource4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnCellClick = DBGrid4CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'type_costs'
            Title.Caption = #1058#1080#1087#1080' '#1074#1080#1090#1088#1072#1090
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'kind'
            Title.Caption = #1056#1077#1075'.\ '#1053#1077#1088#1077#1075'.'
            Visible = False
          end>
      end
      object Panel4: TPanel
        Left = 742
        Top = 0
        Width = 180
        Height = 443
        Align = alRight
        ParentBackground = False
        TabOrder = 1
        object Button17: TButton
          Left = 49
          Top = 40
          Width = 100
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080
          TabOrder = 0
          OnClick = Button17Click
        end
        object Button18: TButton
          Left = 49
          Top = 73
          Width = 100
          Height = 25
          Caption = #1056#1077#1076#1072#1075#1091#1074#1072#1090#1080
          TabOrder = 1
          OnClick = Button18Click
        end
        object Button19: TButton
          Left = 49
          Top = 104
          Width = 100
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 2
          OnClick = Button19Click
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = #1042#1080#1090#1088#1072#1090#1080
      ImageIndex = 6
      OnShow = TabSheet7Show
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel5: TPanel
        Left = 742
        Top = 44
        Width = 180
        Height = 399
        Align = alRight
        ParentBackground = False
        TabOrder = 0
        object Button20: TButton
          Left = 49
          Top = 40
          Width = 100
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080
          TabOrder = 0
          OnClick = Button20Click
        end
        object Button21: TButton
          Left = 49
          Top = 73
          Width = 100
          Height = 25
          Caption = #1056#1077#1076#1072#1075#1091#1074#1072#1090#1080
          TabOrder = 1
          OnClick = Button21Click
        end
        object Button22: TButton
          Left = 49
          Top = 104
          Width = 100
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 2
          OnClick = Button22Click
        end
      end
      object DBGrid5: TDBGrid
        Left = 0
        Top = 44
        Width = 742
        Height = 399
        Align = alClient
        BiDiMode = bdLeftToRight
        DataSource = DataSource5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnCellClick = DBGrid5CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'title'
            Title.Caption = #1055#1088#1080#1084#1110#1090#1082#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cost'
            Title.Caption = #1057#1091#1084#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'type_cost_id'
            Title.Caption = #1058#1080#1087' '#1074#1080#1090#1088#1072#1090
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'status_id'
            Title.Caption = #1057#1090#1072#1090#1091#1089
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'date_cost'
            Title.Caption = #1044#1072#1090#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'kind'
            Visible = False
          end>
      end
      object Panel12: TPanel
        Left = 0
        Top = 0
        Width = 922
        Height = 44
        Align = alTop
        BiDiMode = bdLeftToRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentBackground = False
        ParentColor = True
        ParentFont = False
        ShowCaption = False
        TabOrder = 2
        object Label19: TLabel
          Left = 9
          Top = 0
          Width = 25
          Height = 13
          Caption = #1057#1091#1084#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 152
          Top = 0
          Width = 57
          Height = 13
          Caption = #1058#1080#1087' '#1074#1080#1090#1088#1072#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 296
          Top = 0
          Width = 58
          Height = 13
          Caption = #1042#1080#1076' '#1074#1080#1090#1088#1072#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object ComboBox17: TComboBox
          Left = 9
          Top = 17
          Width = 125
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Sorted = True
          TabOrder = 0
          OnChange = ComboBox17Change
          OnClick = ComboBox17Click
          Items.Strings = (
            '0-1000'
            '1000-4000'
            '4000-8000'
            '8000- '#1110' '#1073#1110#1083#1100#1096#1077)
        end
        object ComboBox18: TComboBox
          Left = 152
          Top = 17
          Width = 125
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Sorted = True
          TabOrder = 1
          OnChange = ComboBox18Change
          OnClick = ComboBox18Click
        end
        object ComboBox19: TComboBox
          Left = 296
          Top = 17
          Width = 125
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Sorted = True
          TabOrder = 2
          OnChange = ComboBox19Change
          OnClick = ComboBox19Click
          Items.Strings = (
            #1053#1077' '#1088#1077#1075#1091#1083#1103#1088#1085#1110
            #1056#1077#1075#1091#1083#1103#1088#1085#1110)
        end
        object Button23: TButton
          Left = 590
          Top = 17
          Width = 100
          Height = 21
          Caption = #1057#1082#1080#1085#1091#1090#1080' '#1092#1110#1083#1100#1090#1088
          TabOrder = 3
          OnClick = Button23Click
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = #1047#1072#1088#1087#1083#1072#1090#1072
      ImageIndex = 7
      OnShow = TabSheet8Show
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel13: TPanel
        Left = 0
        Top = 0
        Width = 922
        Height = 44
        Align = alTop
        BiDiMode = bdLeftToRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentBackground = False
        ParentColor = True
        ParentFont = False
        ShowCaption = False
        TabOrder = 0
        object Label22: TLabel
          Left = 9
          Top = 0
          Width = 47
          Height = 13
          Caption = #1055#1088#1110#1079#1074#1080#1097#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label29: TLabel
          Left = 152
          Top = 0
          Width = 22
          Height = 13
          Caption = #1030'`'#1084#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 296
          Top = 0
          Width = 26
          Height = 13
          Caption = #1044#1072#1090#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object ComboBox20: TComboBox
          Left = 9
          Top = 17
          Width = 125
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Sorted = True
          TabOrder = 0
          OnChange = ComboBox20Change
          Items.Strings = (
            '0-1000'
            '1000-4000'
            '4000-8000')
        end
        object ComboBox21: TComboBox
          Left = 152
          Top = 17
          Width = 125
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Sorted = True
          TabOrder = 1
          OnChange = ComboBox21Change
        end
        object Button24: TButton
          Left = 590
          Top = 17
          Width = 100
          Height = 21
          Caption = #1057#1082#1080#1085#1091#1090#1080' '#1092#1110#1083#1100#1090#1088
          TabOrder = 2
          OnClick = Button24Click
        end
        object DateTimePicker2: TDateTimePicker
          Left = 296
          Top = 17
          Width = 129
          Height = 21
          Date = 41393.857738078700000000
          Time = 41393.857738078700000000
          DateMode = dmUpDown
          TabOrder = 3
          OnChange = DateTimePicker2Change
        end
      end
      object Panel14: TPanel
        Left = 742
        Top = 44
        Width = 180
        Height = 399
        Align = alRight
        ParentBackground = False
        TabOrder = 1
        object Button25: TButton
          Left = 49
          Top = 42
          Width = 100
          Height = 25
          Caption = #1047#1072#1088#1087#1083#1072#1090#1072
          TabOrder = 0
          OnClick = Button25Click
        end
        object Button27: TButton
          Left = 49
          Top = 73
          Width = 100
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 1
          OnClick = Button27Click
        end
      end
      object DBGrid7: TDBGrid
        Left = 0
        Top = 44
        Width = 742
        Height = 399
        Align = alClient
        DataSource = DataSource8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnCellClick = DBGrid7CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'user_first_name'
            Title.Caption = #1055#1088#1110#1079#1074#1080#1097#1077
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'user_last_name'
            Title.Caption = #1030#1084'`'#1103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cost'
            Title.Caption = #1057#1091#1084#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'date_wage'
            Title.Caption = #1044#1072#1090#1072
            Visible = True
          end>
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 19
    Top = 352
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N6: TMenuItem
        Caption = #1047#1074#1110#1090
        object N7: TMenuItem
          Caption = #1042#1086#1076#1072
          OnClick = N7Click
        end
        object N8: TMenuItem
          Caption = #1045#1083#1077#1082#1090#1088#1080#1082#1072
          OnClick = N8Click
        end
      end
      object N2: TMenuItem
        Caption = #1047#1072#1074#1077#1088#1096#1080#1090#1080' '#1089#1077#1072#1085#1089
        OnClick = N2Click
      end
      object N4: TMenuItem
        Caption = #1042#1080#1093#1110#1076
        ShortCut = 32856
        OnClick = N4Click
      end
    end
    object N3: TMenuItem
      Caption = #1053#1072#1083#1072#1096#1090#1091#1074#1072#1085#1085#1103
      object N5: TMenuItem
        Caption = #1050#1091#1088#1089' '#1074#1072#1083#1102#1090
        OnClick = N5Click
      end
    end
    object N9: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      object Help1: TMenuItem
        Caption = 'Help     '
        ShortCut = 112
        OnClick = Help1Click
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 459
    Top = 280
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 491
    Top = 280
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Left = 523
    Top = 280
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT clients.id, clients.first_name,clients.last_name,'
      'clients.middle_name,clients.birth_date,'
      'clients.mobile_tel,clients.home_tel,clients.skype,'
      'clients.e_mail,clients.city,clients.adresa,'
      'clients.add_date, users.login as add_user_name FROM clients '
      'INNER JOIN users ON (clients.add_user_id = users.id)')
    SQLConnection = Form1.SQLConnection1
    Left = 552
    Top = 280
  end
  object SQLQuery2: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT projects.id, projects.name, projects.description, '
      
        'projects.creation_date, projects.cost, projects.deadline, projec' +
        'ts.active, '
      'users.login as creator_id, clients.first_name as client_id'
      
        'FROM projects INNER JOIN users ON (projects.creator_id = users.i' +
        'd)'
      'INNER JOIN clients ON (projects.client_id = clients.id)')
    SQLConnection = Form1.SQLConnection1
    Left = 552
    Top = 312
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet2
    Left = 459
    Top = 312
  end
  object ClientDataSet2: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'name'
        DataType = ftWideString
        Size = 750
      end
      item
        Name = 'description'
        DataType = ftWideMemo
        Size = 1
      end
      item
        Name = 'creation_date'
        DataType = ftDate
      end
      item
        Name = 'cost'
        DataType = ftSingle
      end
      item
        Name = 'deadline'
        DataType = ftDate
      end
      item
        Name = 'active'
        DataType = ftShortint
      end
      item
        Name = 'creator_id'
        DataType = ftWideString
        Size = 135
      end
      item
        Name = 'client_id'
        DataType = ftWideString
        Size = 750
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    StoreDefs = True
    Left = 491
    Top = 312
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLQuery2
    Left = 523
    Top = 312
  end
  object SQLQuery3: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from db.users ')
    SQLConnection = Form1.SQLConnection1
    Left = 552
    Top = 344
  end
  object DataSource3: TDataSource
    DataSet = ClientDataSet3
    Left = 456
    Top = 344
  end
  object ClientDataSet3: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider3'
    Left = 488
    Top = 344
  end
  object DataSetProvider3: TDataSetProvider
    DataSet = SQLQuery3
    Left = 520
    Top = 344
  end
  object DataSource4: TDataSource
    DataSet = ClientDataSet4
    Left = 592
    Top = 280
  end
  object ClientDataSet4: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider4'
    Left = 624
    Top = 280
  end
  object DataSetProvider4: TDataSetProvider
    DataSet = SQLQuery4
    Left = 656
    Top = 280
  end
  object SQLQuery4: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from db.type_costs')
    SQLConnection = Form1.SQLConnection1
    Left = 688
    Top = 280
  end
  object DataSource5: TDataSource
    DataSet = ClientDataSet5
    Left = 592
    Top = 312
  end
  object ClientDataSet5: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'title'
        DataType = ftWideString
        Size = 750
      end
      item
        Name = 'cost'
        DataType = ftFloat
      end
      item
        Name = 'type_cost_id'
        DataType = ftWideString
        Size = 750
      end
      item
        Name = 'status_id'
        DataType = ftWideString
        Size = 300
      end
      item
        Name = 'date_cost'
        DataType = ftDate
      end
      item
        Name = 'kind'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DataSetProvider5'
    StoreDefs = True
    Left = 624
    Top = 312
  end
  object DataSetProvider5: TDataSetProvider
    DataSet = SQLQuery5
    Left = 656
    Top = 312
  end
  object SQLQuery5: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT costs.id,  costs.title,  costs.cost, '
      'type_costs.type_costs as type_cost_id, '
      'status.status as status_id, '
      'costs.date_cost, type_costs.kind AS kind FROM  costs'
      'INNER JOIN type_costs ON (costs.type_cost_id = type_costs.id)'
      'INNER JOIN status ON (costs.status_id = status.id)')
    SQLConnection = Form1.SQLConnection1
    Left = 688
    Top = 312
  end
  object DataSource6: TDataSource
    DataSet = ClientDataSet6
    Left = 456
    Top = 376
  end
  object ClientDataSet6: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider6'
    Left = 488
    Top = 376
  end
  object DataSetProvider6: TDataSetProvider
    DataSet = SQLQuery6
    Left = 520
    Top = 376
  end
  object SQLQuery6: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT coming.id, projects.name as id_project, '
      'clients.first_name as id_client, coming.title,  coming.cost, '
      'curency.curency as id_curency,  status.status as id_status, '
      'coming.pay_date FROM  coming'
      'INNER JOIN projects ON (coming.id_project = projects.id)'
      'INNER JOIN clients ON (coming.id_client = clients.id)'
      'INNER JOIN curency ON (coming.id_curency = curency.id)'
      'INNER JOIN status ON (coming.id_status = status.id)')
    SQLConnection = Form1.SQLConnection1
    Left = 552
    Top = 376
  end
  object DataSource7: TDataSource
    DataSet = ClientDataSet7
    Left = 320
    Top = 248
  end
  object ClientDataSet7: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider7'
    Left = 352
    Top = 248
  end
  object DataSetProvider7: TDataSetProvider
    DataSet = SQLQuery7
    Left = 384
    Top = 248
  end
  object SQLQuery7: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Form1.SQLConnection1
    Left = 416
    Top = 248
  end
  object DataSource8: TDataSource
    DataSet = ClientDataSet8
    Left = 456
    Top = 408
  end
  object ClientDataSet8: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider8'
    Left = 488
    Top = 408
  end
  object DataSetProvider8: TDataSetProvider
    DataSet = SQLQuery8
    Left = 520
    Top = 408
  end
  object SQLQuery8: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM  wage'
      ''
      ''
      '')
    SQLConnection = Form1.SQLConnection1
    Left = 552
    Top = 408
  end
  object frxReport1: TfrxReport
    Version = '4.9.32'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41391.469602881900000000
    ReportOptions.LastChange = 41391.531037326400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 752
    Top = 280
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Shape1: TfrxShapeView
        Top = 196.535560000000000000
        Width = 1046.929810000000000000
        Height = 328.819110000000000000
        ShowHint = False
        Frame.Width = 2.000000000000000000
      end
      object Line1: TfrxLineView
        Left = 37.795300000000000000
        Top = 196.535560000000000000
        Height = 113.385900000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
        Frame.Width = 2.000000000000000000
      end
      object Line2: TfrxLineView
        Top = 309.921460000000000000
        Width = 1046.929810000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
        Frame.Width = 2.000000000000000000
      end
      object Line3: TfrxLineView
        Top = 291.023810000000000000
        Width = 1046.929810000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
        Frame.Width = 2.000000000000000000
      end
      object Line4: TfrxLineView
        Left = 151.181200000000000000
        Top = 196.535560000000000000
        Height = 113.385900000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
        Frame.Width = 2.000000000000000000
      end
      object Line5: TfrxLineView
        Left = 249.448980000000000000
        Top = 196.535560000000000000
        Height = 113.385900000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
        Frame.Width = 2.000000000000000000
      end
      object Line6: TfrxLineView
        Left = 302.362400000000000000
        Top = 196.535560000000000000
        Height = 113.385900000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
        Frame.Width = 2.000000000000000000
      end
      object Line7: TfrxLineView
        Left = 249.448980000000000000
        Top = 272.126160000000000000
        Width = 52.913420000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
        Frame.Width = 2.000000000000000000
      end
      object Line8: TfrxLineView
        Left = 249.448980000000000000
        Top = 253.228510000000000000
        Width = 52.913420000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
        Frame.Width = 2.000000000000000000
      end
      object Line9: TfrxLineView
        Left = 249.448980000000000000
        Top = 234.330860000000000000
        Width = 204.094620000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
        Frame.Width = 2.000000000000000000
      end
      object Line10: TfrxLineView
        Left = 377.953000000000000000
        Top = 234.330860000000000000
        Height = 75.590600000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
        Frame.Width = 2.000000000000000000
      end
      object Line11: TfrxLineView
        Left = 453.543600000000000000
        Top = 196.535560000000000000
        Height = 113.385900000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
        Frame.Width = 2.000000000000000000
      end
      object Line13: TfrxLineView
        Left = 529.134200000000000000
        Top = 196.535560000000000000
        Height = 113.385900000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
        Frame.Width = 2.000000000000000000
      end
      object Line14: TfrxLineView
        Left = 604.724800000000000000
        Top = 196.535560000000000000
        Height = 113.385900000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
        Frame.Width = 2.000000000000000000
      end
      object Line15: TfrxLineView
        Left = 661.417750000000000000
        Top = 196.535560000000000000
        Height = 113.385900000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
        Frame.Width = 2.000000000000000000
      end
      object Line16: TfrxLineView
        Left = 737.008350000000000000
        Top = 196.535560000000000000
        Height = 113.385900000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
        Frame.Width = 2.000000000000000000
      end
      object Line17: TfrxLineView
        Left = 793.701300000000000000
        Top = 234.330860000000000000
        Height = 75.590600000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
        Frame.Width = 2.000000000000000000
      end
      object Line18: TfrxLineView
        Left = 850.394250000000000000
        Top = 253.228510000000000000
        Height = 56.692950000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
        Frame.Width = 2.000000000000000000
      end
      object Line19: TfrxLineView
        Left = 907.087200000000000000
        Top = 196.535560000000000000
        Height = 113.385900000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
        Frame.Width = 2.000000000000000000
      end
      object Line12: TfrxLineView
        Left = 986.457330000000000000
        Top = 196.535560000000000000
        Height = 113.385900000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
        Frame.Width = 2.000000000000000000
      end
      object Line20: TfrxLineView
        Left = 737.008350000000000000
        Top = 234.330860000000000000
        Width = 170.078850000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
        Frame.Width = 2.000000000000000000
      end
      object Line21: TfrxLineView
        Left = 793.701300000000000000
        Top = 253.228510000000000000
        Width = 113.385900000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
        Frame.Width = 2.000000000000000000
      end
      object Line22: TfrxLineView
        Top = 355.275820000000000000
        Width = 1046.929810000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line23: TfrxLineView
        Top = 400.630180000000000000
        Width = 1046.929810000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line24: TfrxLineView
        Top = 445.984540000000000000
        Width = 1046.929810000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line26: TfrxLineView
        Top = 332.598640000000000000
        Width = 1046.929810000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line27: TfrxLineView
        Top = 377.953000000000000000
        Width = 1046.929810000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line28: TfrxLineView
        Top = 423.307360000000000000
        Width = 1046.929810000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line29: TfrxLineView
        Top = 468.661720000000000000
        Width = 1046.929810000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
        Frame.Width = 2.000000000000000000
      end
      object Line25: TfrxLineView
        Left = 604.724800000000000000
        Top = 468.661720000000000000
        Height = 56.692950000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
        Frame.Width = 2.000000000000000000
      end
      object Line30: TfrxLineView
        Left = 604.724800000000000000
        Top = 487.559370000000000000
        Width = 442.205010000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line31: TfrxLineView
        Left = 604.724800000000000000
        Top = 506.457020000000000000
        Width = 442.205010000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo1: TfrxMemoView
        Top = 196.535560000000000000
        Width = 37.795300000000000000
        Height = 94.488250000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          ''
          #8470)
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Left = 37.795300000000000000
        Top = 196.535560000000000000
        Width = 113.385900000000000000
        Height = 94.488250000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          ''
          #1053#1072#1081#1084#1077#1085#1091#1074#1072#1085#1085#1103
          ''
          #1087#1088#1080#1108#1076#1085#1072#1085#1085#1103)
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 151.181200000000000000
        Top = 196.535560000000000000
        Width = 98.267780000000000000
        Height = 94.488250000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          ''
          #8470'  '#1087#1088#1080#1083#1072#1076#1091
          ''
          #1086#1073#1083#1110#1082#1091)
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Left = 249.448980000000000000
        Top = 196.535560000000000000
        Width = 52.913420000000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #1042#1080#1076
          #1077#1085#1077#1088#1075#1110#1111)
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        Left = 302.362400000000000000
        Top = 196.535560000000000000
        Width = 151.181200000000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #1055#1086#1082#1072#1079#1080' '#1087#1088#1080#1083#1072#1076#1110#1074
          #1086#1073#1083#1110#1082#1091)
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        Left = 249.448980000000000000
        Top = 234.330860000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #1057#1040)
        ParentFont = False
      end
      object Memo7: TfrxMemoView
        Left = 249.448980000000000000
        Top = 253.228510000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #1057#1056)
        ParentFont = False
      end
      object Memo8: TfrxMemoView
        Left = 249.448980000000000000
        Top = 272.126160000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #1057#1043)
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        Left = 302.362400000000000000
        Top = 234.330860000000000000
        Width = 75.590600000000000000
        Height = 56.692950000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #1087#1086#1090#1086#1095#1085#1110)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo10: TfrxMemoView
        Left = 377.953000000000000000
        Top = 234.330860000000000000
        Width = 75.590600000000000000
        Height = 56.692950000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #1087#1086#1087#1077#1088#1077#1076#1085#1110)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo11: TfrxMemoView
        Left = 453.543600000000000000
        Top = 196.535560000000000000
        Width = 75.590600000000000000
        Height = 94.488250000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          ''
          #1056#1110#1079#1085#1080#1094#1103)
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        Left = 529.134200000000000000
        Top = 196.535560000000000000
        Width = 75.590600000000000000
        Height = 94.488250000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #1047#1072
          #1074#1080#1076#1086#1084
          #1090#1072#1088#1080#1092#1091)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo13: TfrxMemoView
        Left = 604.724800000000000000
        Top = 196.535560000000000000
        Width = 56.692950000000000000
        Height = 94.488250000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #1056#1086#1079#1088#1072#1093'.'
          #1082#1086#1077#1092'.')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo14: TfrxMemoView
        Left = 661.417750000000000000
        Top = 196.535560000000000000
        Width = 75.590600000000000000
        Height = 94.488250000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #1042#1080#1090#1088#1072#1090#1080
          '('#1082#1042#1090'*'#1075#1086#1076')')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo15: TfrxMemoView
        Left = 737.008350000000000000
        Top = 196.535560000000000000
        Width = 170.078850000000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #1042#1090#1088#1072#1090#1080)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo16: TfrxMemoView
        Left = 793.701300000000000000
        Top = 234.330860000000000000
        Width = 113.385900000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #1074' '#1090#1088#1072#1085#1089#1092#1086#1088#1084#1072#1090#1086#1088#1072#1093)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo17: TfrxMemoView
        Left = 737.008350000000000000
        Top = 234.330860000000000000
        Width = 56.692950000000000000
        Height = 56.692950000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #1074' '#1051#1045#1055','
          '('#1082#1042#1090'*'#1075#1086#1076')')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo18: TfrxMemoView
        Left = 793.701300000000000000
        Top = 253.228510000000000000
        Width = 56.692950000000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #1079#1084#1110#1085#1085#1110','
          '('#1082#1042#1090'*'#1075#1086#1076')')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo19: TfrxMemoView
        Left = 850.394250000000000000
        Top = 253.228510000000000000
        Width = 56.692950000000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #1087#1086#1089#1090#1110#1081#1085#1110','
          '('#1082#1042#1090'*'#1075#1086#1076')')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo20: TfrxMemoView
        Left = 907.087200000000000000
        Top = 215.433210000000000000
        Width = 79.370130000000000000
        Height = 75.590600000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          #1079#1072' '#1085#1077#1074#1110#1076#1087#1086#1074#1110#1076#1085#1110#1089#1090#1100
          #1090#1077#1084#1087#1077#1088#1072#1090#1091#1088#1085#1086#1084#1091
          #1088#1077#1078#1080#1084#1091
          #1083#1110#1095#1080#1083#1100#1085#1080#1082#1072
          '('#1082#1042#1090'*'#1075#1086#1076')')
        ParentFont = False
      end
      object Memo21: TfrxMemoView
        Left = 907.087200000000000000
        Top = 196.535560000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haRight
        Memo.UTF8W = (
          '5%')
        ParentFont = False
      end
      object Memo22: TfrxMemoView
        Left = 986.457330000000000000
        Top = 196.535560000000000000
        Width = 60.472480000000000000
        Height = 94.488250000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          ''
          #1088#1072#1079#1086#1084)
        ParentFont = False
      end
      object Memo23: TfrxMemoView
        Top = 291.023810000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haRight
        Memo.UTF8W = (
          '1')
        ParentFont = False
      end
      object Memo24: TfrxMemoView
        Left = 37.795300000000000000
        Top = 291.023810000000000000
        Width = 113.385900000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haRight
        Memo.UTF8W = (
          '2')
        ParentFont = False
      end
      object Memo25: TfrxMemoView
        Left = 151.181200000000000000
        Top = 291.023810000000000000
        Width = 98.267780000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haRight
        Memo.UTF8W = (
          '3')
        ParentFont = False
      end
      object Memo26: TfrxMemoView
        Left = 249.448980000000000000
        Top = 291.023810000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haRight
        Memo.UTF8W = (
          '4')
        ParentFont = False
      end
      object Memo27: TfrxMemoView
        Left = 302.362400000000000000
        Top = 291.023810000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haRight
        Memo.UTF8W = (
          '5')
        ParentFont = False
      end
      object Memo28: TfrxMemoView
        Left = 377.953000000000000000
        Top = 291.023810000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haRight
        Memo.UTF8W = (
          '6')
        ParentFont = False
      end
      object Memo29: TfrxMemoView
        Left = 453.543600000000000000
        Top = 291.023810000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haRight
        Memo.UTF8W = (
          '7')
        ParentFont = False
      end
      object Memo30: TfrxMemoView
        Left = 529.134200000000000000
        Top = 291.023810000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haRight
        Memo.UTF8W = (
          '8')
        ParentFont = False
      end
      object Memo31: TfrxMemoView
        Left = 604.724800000000000000
        Top = 291.023810000000000000
        Width = 56.692950000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haRight
        Memo.UTF8W = (
          '9')
        ParentFont = False
      end
      object Memo32: TfrxMemoView
        Left = 661.417750000000000000
        Top = 291.023810000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haRight
        Memo.UTF8W = (
          '10')
        ParentFont = False
      end
      object Memo33: TfrxMemoView
        Left = 737.008350000000000000
        Top = 291.023810000000000000
        Width = 56.692950000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haRight
        Memo.UTF8W = (
          '11')
        ParentFont = False
      end
      object Memo34: TfrxMemoView
        Left = 793.701300000000000000
        Top = 291.023810000000000000
        Width = 56.692950000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haRight
        Memo.UTF8W = (
          '12')
        ParentFont = False
      end
      object Memo35: TfrxMemoView
        Left = 850.394250000000000000
        Top = 291.023810000000000000
        Width = 56.692950000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haRight
        Memo.UTF8W = (
          '13')
        ParentFont = False
      end
      object Memo36: TfrxMemoView
        Left = 907.087200000000000000
        Top = 291.023810000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haRight
        Memo.UTF8W = (
          '14')
        ParentFont = False
      end
      object Memo37: TfrxMemoView
        Left = 986.457330000000000000
        Top = 291.023810000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haRight
        Memo.UTF8W = (
          '15')
        ParentFont = False
      end
      object Line32: TfrxLineView
        Left = 37.795300000000000000
        Top = 309.921460000000000000
        Height = 158.740260000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
      end
      object Line33: TfrxLineView
        Left = 151.181200000000000000
        Top = 309.921460000000000000
        Height = 158.740260000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
      end
      object Line34: TfrxLineView
        Left = 249.448980000000000000
        Top = 309.921460000000000000
        Height = 158.740260000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
      end
      object Line35: TfrxLineView
        Left = 302.362400000000000000
        Top = 309.921460000000000000
        Height = 158.740260000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
      end
      object Line36: TfrxLineView
        Left = 377.953000000000000000
        Top = 309.921460000000000000
        Height = 158.740260000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
      end
      object Line37: TfrxLineView
        Left = 453.543600000000000000
        Top = 309.921460000000000000
        Height = 158.740260000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
      end
      object Line38: TfrxLineView
        Left = 529.134200000000000000
        Top = 309.921460000000000000
        Height = 158.740260000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
      end
      object Line39: TfrxLineView
        Left = 604.724800000000000000
        Top = 309.921460000000000000
        Height = 158.740260000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
      end
      object Line40: TfrxLineView
        Left = 661.417750000000000000
        Top = 309.921460000000000000
        Height = 215.433210000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
      end
      object Line41: TfrxLineView
        Left = 737.008350000000000000
        Top = 309.921460000000000000
        Height = 215.433210000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
      end
      object Line42: TfrxLineView
        Left = 793.701300000000000000
        Top = 309.921460000000000000
        Height = 215.433210000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
      end
      object Line43: TfrxLineView
        Left = 850.394250000000000000
        Top = 309.921460000000000000
        Height = 215.433210000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
      end
      object Line44: TfrxLineView
        Left = 907.087200000000000000
        Top = 309.921460000000000000
        Height = 215.433210000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
      end
      object Line45: TfrxLineView
        Left = 986.457330000000000000
        Top = 309.921460000000000000
        Height = 215.433210000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
      end
      object Memo38: TfrxMemoView
        Top = 480.000310000000000000
        Width = 249.448980000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        Memo.UTF8W = (
          #1042#1089#1100#1086#1075#1086' '#1087#1086' '#1086#1073'`'#1108#1082#1090#1072#1093' '#1089#1087#1086#1078#1080#1074#1072#1095#1072)
        ParentFont = False
      end
      object Memo39: TfrxMemoView
        Top = 502.677490000000000000
        Width = 249.448980000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          #1074' '#1090#1086#1084#1091' '#1095#1080#1089#1083#1110' '#1087#1086' '#1089#1091#1073#1089#1087#1086#1078#1080#1074#1072#1095#1072#1093)
        ParentFont = False
      end
      object Memo40: TfrxMemoView
        Left = 37.795300000000000000
        Width = 623.622450000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          
            #1044#1086#1076#1072#1090#1086#1082' 6 '#1076#1086' '#1076#1086#1075#1086#1074#1086#1088#1091' '#1087#1088#1086' '#1087#1086#1089#1090#1072#1095#1072#1085#1085#1103' '#1077#1083#1077#1082#1090#1088#1080#1095#1085#1086#1111' '#1077#1085#1077#1088#1075#1110#1111'        ' +
            ' '#8470'                '#1074#1110#1076'  ')
        ParentFont = False
      end
      object Memo41: TfrxMemoView
        Left = 211.653680000000000000
        Top = 37.795300000000000000
        Width = 506.457020000000000000
        Height = 94.488250000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        HAlign = haCenter
        Memo.UTF8W = (
          #1040#1050#1058
          ''
          #1087#1088#1086' '#1074#1080#1082#1086#1088#1080#1089#1090#1072#1085#1091' '#1077#1083#1077#1082#1090#1088#1080#1095#1085#1091' '#1077#1085#1077#1088#1075#1110#1102
          ''
          #1079#1072' '#1088#1086#1079#1088#1072#1093#1091#1085#1082#1086#1074#1080#1081' '#1087#1077#1088#1110#1086#1076' _______________ '#1084#1110#1089#1103#1094#1100' 20___'#1088'.')
        ParentFont = False
        VAlign = vaCenter
      end
      object Line46: TfrxLineView
        Top = 170.078850000000000000
        Width = 1046.929810000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
        Frame.Width = 2.000000000000000000
      end
      object Memo42: TfrxMemoView
        Left = 154.960730000000000000
        Top = 170.078850000000000000
        Width = 589.606680000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          
            '('#1087#1086#1074#1085#1072' '#1102#1088#1080#1076#1080#1095#1085#1072' '#1085#1072#1079#1074#1072' '#1057#1087#1086#1078#1080#1074#1072#1095#1072', '#1076#1072#1090#1072' '#1091#1082#1083#1072#1076#1072#1085#1085#1103' '#1090#1072' '#8470' '#1076#1086#1075#1086#1074#1086#1088#1091' '#1087#1088 +
            #1086' '#1087#1086#1089#1090#1072#1095#1072#1085#1085#1103' '#1077#1083#1077#1082#1090#1088#1080#1095#1085#1086#1111' '#1077#1085#1077#1075#1088#1110#1111')')
        ParentFont = False
      end
      object Memo43: TfrxMemoView
        Top = 529.134200000000000000
        Width = 132.283550000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1074' '#1082#1086#1083#1086#1085#1094#1110' 4 '#1074#1082#1072#1079#1072#1090#1080' '#1086#1076#1085#1077' '#1110#1079' :')
        ParentFont = False
      end
      object Memo44: TfrxMemoView
        Left = 302.362400000000000000
        Top = 529.134200000000000000
        Width = 192.756030000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1057#1040' - '#1089#1087#1086#1078#1080#1074#1072#1085#1085#1103' '#1072#1082#1090#1080#1074#1085#1086#1111' '#1077#1083#1077#1082#1090#1088#1086#1077#1085#1077#1088#1075#1110#1111';')
        ParentFont = False
      end
      object Memo45: TfrxMemoView
        Left = 302.362400000000000000
        Top = 544.252320000000000000
        Width = 200.315090000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1057#1056' - '#1089#1087#1086#1078#1080#1074#1072#1085#1085#1103' '#1088#1077#1072#1082#1090#1080#1074#1085#1086#1111' '#1077#1083#1077#1082#1090#1088#1086#1077#1085#1077#1088#1075#1110#1111)
        ParentFont = False
      end
      object Memo46: TfrxMemoView
        Left = 302.362400000000000000
        Top = 559.370440000000000000
        Width = 185.196970000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1043#1056' - '#1075#1077#1085#1077#1088#1072#1094#1110#1103' '#1088#1077#1072#1082#1090#1080#1074#1085#1086#1111' '#1077#1083#1077#1082#1090#1088#1086#1077#1085#1077#1088#1075#1110#1111)
        ParentFont = False
      end
      object Memo47: TfrxMemoView
        Top = 574.488560000000000000
        Width = 517.795610000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          
            #1074' '#1082#1086#1083#1086#1085#1094#1110' 8 '#1074#1082#1072#1079#1072#1090#1080' '#1088#1086#1079#1073#1080#1074#1082#1091' '#1088#1110#1079#1085#1080#1094#1110' '#1087#1086#1082#1072#1079#1085#1080#1082#1110#1074' '#1087#1088#1080#1083#1072#1076#1110#1074' '#1086#1073#1083#1110#1082#1091' ' +
            #1079#1072' '#1074#1080#1076#1086#1084' '#1090#1072#1088#1080#1092#1091' ('#1086#1076#1085#1086#1079#1086#1085#1085#1080#1081', '#1076#1074#1086#1079#1086#1085#1085#1080#1081', '#1090#1088#1080#1079#1086#1085#1085#1080#1081')')
        ParentFont = False
      end
      object Memo48: TfrxMemoView
        Top = 623.622450000000000000
        Width = 472.441250000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1050#1077#1088#1110#1074#1085#1080#1082' '#1087#1110#1076#1087#1088#1080#1108#1084#1089#1090#1074#1072' '#1089#1087#1086#1078#1080#1074#1072#1095#1072' __________________________')
        ParentFont = False
      end
      object Memo49: TfrxMemoView
        Left = 313.700990000000000000
        Top = 642.520100000000000000
        Width = 68.031540000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '('#1055#1110#1076#1087#1080#1089'  '#1055'.'#1030'.'#1041' )')
        ParentFont = False
      end
    end
  end
end
