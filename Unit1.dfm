object Form1: TForm1
  Left = 219
  Top = 106
  Width = 1144
  Height = 684
  Caption = 
    #1055#1088#1086#1075#1088#1072#1084#1084#1085#1086#1077' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077' '#1087#1086#1076#1089#1080#1089#1090#1077#1084#1099' '#1076#1080#1072#1075#1085#1086#1089#1090#1080#1082#1080' '#1083#1077#1075#1086#1095#1085#1099#1093' '#1079#1072#1073#1086#1083#1077#1074#1072 +
    #1085#1080#1081
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object BloodBox: TGroupBox
    Left = 48
    Top = 8
    Width = 241
    Height = 201
    Caption = #1050#1088#1086#1074#1100
    TabOrder = 0
    object EritroLbl: TLabel
      Left = 16
      Top = 32
      Width = 63
      Height = 13
      Caption = #1069#1088#1080#1090#1088#1086#1094#1080#1090#1099
    end
    object LeikoLbl: TLabel
      Left = 24
      Top = 64
      Width = 56
      Height = 13
      Caption = #1083#1077#1081#1082#1086#1094#1080#1090#1099
    end
    object GemoglobinLbl: TLabel
      Left = 16
      Top = 104
      Width = 59
      Height = 13
      Caption = #1043#1077#1084#1086#1075#1083#1086#1073#1080#1085
    end
    object SOELbl: TLabel
      Left = 24
      Top = 136
      Width = 22
      Height = 13
      Caption = #1057#1054#1069
    end
    object LimfoLbl: TLabel
      Left = 24
      Top = 168
      Width = 59
      Height = 13
      Caption = #1051#1080#1084#1092#1086#1094#1080#1090#1099
    end
    object Eritro: TEdit
      Left = 104
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 0
      OnChange = EritroChange
    end
    object Leiko: TEdit
      Left = 104
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 1
      OnChange = LeikoChange
    end
    object Gemoglobin: TEdit
      Left = 104
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 2
      OnChange = GemoglobinChange
    end
    object SOE: TEdit
      Left = 104
      Top = 128
      Width = 121
      Height = 21
      TabOrder = 3
      OnChange = SOEChange
    end
    object Limfo: TEdit
      Left = 104
      Top = 168
      Width = 121
      Height = 21
      TabOrder = 4
      OnChange = LimfoChange
    end
  end
  object Pist: TGroupBox
    Left = 32
    Top = 216
    Width = 249
    Height = 105
    Caption = #1040#1085#1072#1083#1080#1079' '#1084#1086#1095#1080
    TabOrder = 1
    object ProteinLbl: TLabel
      Left = 8
      Top = 24
      Width = 30
      Height = 13
      Caption = #1041#1077#1083#1086#1082
    end
    object PistLeikoLbl: TLabel
      Left = 8
      Top = 64
      Width = 106
      Height = 13
      Caption = #1059#1088#1086#1074#1077#1085#1100' '#1083#1077#1081#1082#1086#1094#1080#1090#1086#1074
    end
    object Protein: TEdit
      Left = 120
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object PistLeiko: TEdit
      Left = 120
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 1
    end
  end
  object CauthOut: TGroupBox
    Left = 464
    Top = 16
    Width = 217
    Height = 185
    Caption = #1054' '#1082#1072#1096#1083#1077
    TabOrder = 2
    object BloodCauthOut: TCheckBox
      Left = 104
      Top = 48
      Width = 97
      Height = 17
      Caption = #1050#1088#1086#1074#1086#1093#1072#1088#1082#1072#1085#1080#1077
      TabOrder = 0
    end
    object Cough: TCheckBox
      Left = 16
      Top = 24
      Width = 57
      Height = 17
      Caption = #1050#1072#1096#1077#1083#1100
      TabOrder = 1
    end
    object CoughOutIs: TCheckBox
      Left = 104
      Top = 24
      Width = 81
      Height = 17
      Caption = #1052#1086#1082#1088#1086#1090#1072
      TabOrder = 2
    end
    object CauthOutType: TGroupBox
      Left = 8
      Top = 72
      Width = 185
      Height = 105
      Caption = #1042#1080#1076' '#1052#1086#1082#1088#1086#1090#1099
      TabOrder = 3
      object MucusOut: TRadioButton
        Left = 24
        Top = 16
        Width = 73
        Height = 17
        Caption = #1057#1083#1080#1079#1080#1089#1090#1072#1103
        TabOrder = 0
      end
      object BloodOut: TRadioButton
        Left = 24
        Top = 48
        Width = 73
        Height = 17
        Caption = #1050#1088#1086#1074#1103#1085#1080#1089#1090#1072#1103
        TabOrder = 1
      end
      object PusOut: TRadioButton
        Left = 24
        Top = 80
        Width = 65
        Height = 17
        Caption = #1043#1085#1086#1081#1085#1072#1103
        TabOrder = 2
      end
    end
  end
  object Shading: TGroupBox
    Left = 296
    Top = 216
    Width = 521
    Height = 121
    Caption = #1047#1072#1090#1077#1084#1085#1077#1085#1080#1103
    TabOrder = 3
    object ShadingLocation: TGroupBox
      Left = 8
      Top = 24
      Width = 153
      Height = 89
      Caption = #1056#1072#1089#1087#1086#1083#1086#1078#1077#1085#1080#1077
      TabOrder = 0
      object ShadingUp: TRadioButton
        Left = 24
        Top = 24
        Width = 113
        Height = 17
        Caption = #1042#1077#1088#1093#1085#1080#1077
        TabOrder = 0
      end
      object ShadingDown: TRadioButton
        Left = 24
        Top = 56
        Width = 113
        Height = 17
        Caption = #1053#1080#1078#1085#1080#1077
        TabOrder = 1
      end
    end
    object ShadoSize: TGroupBox
      Left = 344
      Top = 16
      Width = 169
      Height = 97
      Caption = #1056#1072#1079#1084#1077#1088' '#1090#1077#1085#1080
      TabOrder = 1
      object NoShadow: TRadioButton
        Left = 16
        Top = 32
        Width = 73
        Height = 17
        Caption = #1053#1077#1090
        TabOrder = 0
      end
      object Smal: TRadioButton
        Left = 88
        Top = 32
        Width = 73
        Height = 17
        Caption = #1052#1072#1083#1077#1085#1100#1082#1080#1081
        TabOrder = 1
      end
      object Midle: TRadioButton
        Left = 16
        Top = 64
        Width = 57
        Height = 17
        Caption = #1057#1088#1077#1076#1085#1080#1081
        TabOrder = 2
      end
      object Big: TRadioButton
        Left = 88
        Top = 64
        Width = 65
        Height = 17
        Caption = #1041#1086#1083#1100#1096#1086#1081
        TabOrder = 3
      end
    end
    object ShadingAreas: TGroupBox
      Left = 168
      Top = 24
      Width = 161
      Height = 89
      Caption = #1054#1073#1083#1072#1089#1090#1080' '#1079#1072#1090#1077#1084#1085#1077#1085#1080#1081
      TabOrder = 2
      object MultipleAreas: TRadioButton
        Left = 16
        Top = 24
        Width = 113
        Height = 17
        Caption = #1052#1085#1086#1078#1077#1089#1090#1074#1077#1085#1085#1099#1077
        TabOrder = 0
      end
      object SingleArea: TRadioButton
        Left = 16
        Top = 56
        Width = 113
        Height = 17
        Caption = #1054#1076#1080#1085#1086#1095#1085#1099#1077
        TabOrder = 1
      end
    end
  end
  object TumorInf: TGroupBox
    Left = 824
    Top = 16
    Width = 273
    Height = 329
    Caption = #1054#1087#1091#1093#1086#1083#1100
    TabOrder = 4
    object Walls: TGroupBox
      Left = 144
      Top = 80
      Width = 121
      Height = 241
      Caption = #1057#1090#1077#1085#1082#1080' '#1087#1086#1083#1086#1089#1090#1080
      TabOrder = 0
      object Smooth: TCheckBox
        Left = 8
        Top = 24
        Width = 97
        Height = 17
        Caption = #1043#1083#1072#1076#1082#1080#1077
        TabOrder = 0
      end
      object Even: TCheckBox
        Left = 8
        Top = 48
        Width = 65
        Height = 17
        Caption = #1056#1086#1074#1085#1099#1077
        TabOrder = 1
      end
      object Bumpy: TCheckBox
        Left = 8
        Top = 72
        Width = 65
        Height = 17
        Caption = #1041#1091#1075#1088#1080#1089#1090#1099#1077
        TabOrder = 2
      end
      object Loose: TCheckBox
        Left = 8
        Top = 96
        Width = 65
        Height = 17
        Caption = #1056#1099#1093#1083#1099#1077
        TabOrder = 3
      end
      object Swollen: TCheckBox
        Left = 8
        Top = 120
        Width = 65
        Height = 17
        Caption = #1054#1090#1077#1095#1085#1099#1077
        TabOrder = 4
      end
      object IrregularWall: TCheckBox
        Left = 8
        Top = 144
        Width = 97
        Height = 17
        Caption = #1053#1077#1086#1076#1085#1086#1088#1086#1076#1085#1099#1077
        TabOrder = 5
      end
      object Unclear: TRadioButton
        Left = 8
        Top = 200
        Width = 97
        Height = 17
        Caption = #1053#1077#1095#1077#1090#1082#1080#1077' '#1075#1088#1072#1085#1080
        TabOrder = 6
      end
      object Clear: TRadioButton
        Left = 8
        Top = 176
        Width = 97
        Height = 17
        Caption = #1063#1077#1090#1082#1080#1077' '#1075#1088#1072#1085#1080
        TabOrder = 7
      end
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 96
      Width = 129
      Height = 225
      Caption = #1060#1086#1088#1084#1072
      TabOrder = 1
      object IrregularShape: TRadioButton
        Left = 8
        Top = 24
        Width = 97
        Height = 17
        Caption = #1053#1077#1087#1088#1072#1074#1080#1083#1100#1085#1072#1103
        TabOrder = 0
      end
      object RoundShape: TRadioButton
        Left = 8
        Top = 48
        Width = 89
        Height = 17
        Caption = #1054#1082#1088#1091#1075#1083#1072#1103
        TabOrder = 1
      end
      object StarShape: TRadioButton
        Left = 8
        Top = 72
        Width = 81
        Height = 17
        Caption = #1047#1074#1077#1079#1076#1095#1072#1090#1072#1103
        TabOrder = 2
      end
      object SlitShape: TRadioButton
        Left = 8
        Top = 96
        Width = 81
        Height = 17
        Caption = #1065#1077#1083#1077#1074#1080#1076#1085#1072#1103
        TabOrder = 3
      end
      object RingShape: TRadioButton
        Left = 8
        Top = 120
        Width = 81
        Height = 17
        Caption = #1050#1086#1083#1100#1094#1077#1074#1080#1076#1085#1072#1103
        TabOrder = 4
      end
      object OvalShape: TRadioButton
        Left = 8
        Top = 144
        Width = 89
        Height = 17
        Caption = #1054#1074#1072#1083#1100#1085#1072#1103
        TabOrder = 5
      end
      object LobitShape: TRadioButton
        Left = 8
        Top = 168
        Width = 81
        Height = 17
        Caption = #1051#1086#1073#1080#1090
        TabOrder = 6
      end
      object CloudShape: TRadioButton
        Left = 8
        Top = 192
        Width = 89
        Height = 17
        Caption = #1054#1073#1083#1072#1082#1086#1074#1080#1076#1085#1072#1103
        TabOrder = 7
      end
    end
    object Sealing: TCheckBox
      Left = 8
      Top = 48
      Width = 97
      Height = 17
      Caption = #1059#1087#1083#1086#1090#1085#1077#1085#1080#1103
      TabOrder = 2
    end
  end
  object GeneralSymptoms: TGroupBox
    Left = 688
    Top = 16
    Width = 121
    Height = 185
    Caption = #1040#1085#1072#1084#1085#1077#1079
    TabOrder = 5
    object ChestPain: TCheckBox
      Left = 8
      Top = 24
      Width = 97
      Height = 17
      Caption = #1043#1088#1091#1076#1085#1099#1077' '#1073#1086#1083#1080
      TabOrder = 0
    end
    object WeakNess: TCheckBox
      Left = 8
      Top = 40
      Width = 97
      Height = 17
      Caption = #1057#1083#1072#1073#1086#1089#1090#1100
      TabOrder = 1
    end
    object Exhaustingness: TCheckBox
      Left = 8
      Top = 56
      Width = 97
      Height = 17
      Caption = #1059#1090#1086#1084#1083#1103#1077#1084#1086#1089#1090#1100
      TabOrder = 2
    end
    object WeightLoss: TCheckBox
      Left = 8
      Top = 72
      Width = 97
      Height = 17
      Caption = #1055#1086#1090#1077#1088#1103' '#1074#1077#1089#1072
      TabOrder = 3
    end
    object Paleness: TCheckBox
      Left = 8
      Top = 88
      Width = 97
      Height = 17
      Caption = #1041#1083#1077#1076#1085#1086#1089#1090#1100
      TabOrder = 4
    end
    object Puke: TCheckBox
      Left = 8
      Top = 104
      Width = 97
      Height = 17
      Caption = #1056#1074#1086#1090#1072
      TabOrder = 5
    end
    object Headaches: TCheckBox
      Left = 8
      Top = 120
      Width = 97
      Height = 17
      Caption = #1043#1086#1083#1086#1074#1085#1072#1103' '#1073#1086#1083#1100
      TabOrder = 6
    end
    object BloodInExcrement: TCheckBox
      Left = 8
      Top = 136
      Width = 97
      Height = 17
      Caption = #1050#1088#1086#1074#1072#1074#1099#1081' '#1082#1072#1083
      TabOrder = 7
    end
    object Diarrhea: TCheckBox
      Left = 8
      Top = 152
      Width = 97
      Height = 17
      Caption = #1044#1080#1072#1088#1077#1103
      TabOrder = 8
    end
  end
  object DiagnosBtn: TButton
    Left = 48
    Top = 584
    Width = 265
    Height = 49
    Caption = #1044#1080#1072#1075#1085#1086#1079' '#1085#1072' '#1086#1089#1085#1086#1074#1077' '#1076#1077#1088#1077#1074#1072' '#1088#1077#1096#1077#1085#1080#1081
    TabOrder = 6
    OnClick = DiagnosBtnClick
  end
  object Chose: TButton
    Left = 664
    Top = 584
    Width = 177
    Height = 49
    Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1073#1072#1079#1086#1081' '#1076#1072#1085#1085#1099#1093
    TabOrder = 7
    OnClick = ChoseClick
  end
  object ChooseAndGive: TPageControl
    Left = 48
    Top = 344
    Width = 1049
    Height = 217
    ActivePage = ChoosePatient
    TabOrder = 8
    object ChoosePatient: TTabSheet
      Caption = #1042#1099#1073#1086#1088' '#1087#1072#1094#1080#1077#1085#1090#1072
      object lChoosedPatientTitle: TLabel
        Left = 864
        Top = 8
        Width = 106
        Height = 13
        Caption = #1042#1099#1073#1088#1072#1085#1085#1099#1081'  '#1087#1072#1094#1080#1077#1085#1090
      end
      object ChosenNameTitle: TLabel
        Left = 864
        Top = 32
        Width = 3
        Height = 13
      end
      object ChosenSurnameTitle: TLabel
        Left = 864
        Top = 48
        Width = 3
        Height = 13
      end
      object ChosenFatherNameTitle: TLabel
        Left = 864
        Top = 64
        Width = 3
        Height = 13
      end
      object PolicyNumberTitle: TLabel
        Left = 864
        Top = 80
        Width = 3
        Height = 13
      end
      object PhoneTitle: TLabel
        Left = 864
        Top = 96
        Width = 3
        Height = 13
      end
      object DateLbl: TLabel
        Left = 832
        Top = 104
        Width = 26
        Height = 13
        Caption = #1044#1072#1090#1072
      end
      object lbl1: TLabel
        Left = 704
        Top = 104
        Width = 112
        Height = 13
        Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1076#1080#1072#1075#1085#1086#1079#1072
      end
      object PatientChooseTB: TDBGrid
        Left = 8
        Top = 16
        Width = 689
        Height = 153
        DataSource = DataSourse1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = PatientChooseTBCellClick
      end
      object DAte: TEdit
        Left = 888
        Top = 104
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object DescAdd: TButton
        Left = 704
        Top = 144
        Width = 129
        Height = 25
        Caption = #1055#1086' '#1044#1077#1089#1082#1088#1080#1084#1080#1085#1072#1085#1090#1085#1086#1084#1091
        TabOrder = 2
        OnClick = DescAddClick
      end
      object TreeAdd: TButton
        Left = 856
        Top = 144
        Width = 155
        Height = 25
        Caption = #1055#1086' '#1076#1077#1088#1077#1074#1091' '#1088#1077#1096#1077#1085#1080#1081
        TabOrder = 3
        OnClick = TreeAddClick
      end
    end
    object Diagnosises: TTabSheet
      Caption = #1048#1089#1090#1086#1088#1080#1103' '#1044#1080#1072#1075#1085#1086#1079#1086#1074
      ImageIndex = 1
      object DiagnosisesTB: TDBGrid
        Left = 8
        Top = 16
        Width = 617
        Height = 145
        DataSource = DiagnosisesSourse
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Refresh: TButton
        Left = 640
        Top = 16
        Width = 75
        Height = 25
        Caption = #1054#1073#1085#1086#1074#1080#1090#1100
        TabOrder = 1
        OnClick = RefreshClick
      end
    end
  end
  object DescrimDiagnose: TButton
    Left = 344
    Top = 584
    Width = 265
    Height = 49
    Caption = #1044#1080#1072#1075#1085#1086#1079' '#1085#1072' '#1086#1089#1085#1086#1074#1077' '#1076#1080#1089#1082#1088#1080#1084#1080#1085#1072#1085#1090#1085#1086#1075#1086' '#1072#1085#1072#1083#1080#1079#1072
    TabOrder = 9
    OnClick = DescrimDiagnoseClick
  end
  object Temperature: TGroupBox
    Left = 294
    Top = 16
    Width = 161
    Height = 73
    Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072
    TabOrder = 10
    object TemperatureValue: TEdit
      Left = 8
      Top = 40
      Width = 137
      Height = 21
      TabOrder = 0
      Text = '36'
    end
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
    object N1: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N2Click
    end
  end
  object DataSourse1: TDataSource
    DataSet = PatientChooseQuery
    Left = 8
    Top = 136
  end
  object PatientChooseQuery: TADOQuery
    Connection = Form1Connection
    Parameters = <>
    SQL.Strings = (
      
        'Select '#1060#1072#1084#1080#1083#1080#1103', '#1048#1084#1103', '#1054#1090#1095#1077#1089#1090#1074#1086', '#1044#1072#1090#1072#1056#1086#1076#1078#1077#1085#1080#1103' AS '#1044#1072#1090#1072#1056#1086#1078#1076#1077#1085#1080#1103', '#1058#1077#1083 +
        #1077#1092#1086#1085', '#1040#1076#1088#1077#1089', '#1053#1086#1084#1077#1088#1055#1086#1083#1080#1089#1072','#8470#1087#1072#1094#1080#1077#1085#1090#1072
      'From '#1055#1072#1094#1080#1077#1085#1090)
    Left = 8
    Top = 184
  end
  object Form1Connection: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=DataB' +
      'ase\Voylikova_12345 2003.mdb;Mode=Share Deny None;Persist Securi' +
      'ty Info=False;Jet OLEDB:System database="";Jet OLEDB:Registry Pa' +
      'th="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet' +
      ' OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops' +
      '=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database P' +
      'assword="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encr' +
      'ypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;' +
      'Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=Fal' +
      'se'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 8
    Top = 56
  end
  object DiagnosisesSourse: TDataSource
    DataSet = DiagnosisQuery
    Left = 8
    Top = 264
  end
  object DiagnosisQuery: TADOQuery
    Connection = Form1Connection
    Parameters = <>
    SQL.Strings = (
      
        'Select '#1048#1084#1103', '#1060#1072#1084#1080#1083#1080#1103', '#1054#1090#1095#1077#1089#1090#1074#1086', '#1053#1072#1079#1074#1072#1085#1080#1077#1044#1080#1072#1075#1085#1086#1079#1072', '#1044#1072#1090#1072#1056#1086#1076#1078#1077#1085#1080#1103', '#1044 +
        #1072#1090#1072#1044#1080#1072#1075#1085#1086#1079#1072
      'From '
      
        '('#1044#1080#1072#1075#1085#1086#1079#1055#1072#1094#1080#1077#1085#1090#1072' LEFT JOIN '#1055#1072#1094#1080#1077#1085#1090' ON '#1044#1080#1072#1075#1085#1086#1079#1055#1072#1094#1080#1077#1085#1090#1072'.'#8470#1087#1072#1094#1080#1077#1085#1090#1072' ' +
        '=  '#1055#1072#1094#1080#1077#1085#1090'.'#8470#1055#1072#1094#1080#1077#1085#1090#1072')'
      
        '                                  LEFT JOIN '#1044#1080#1072#1075#1085#1086#1079' ON '#1044#1080#1072#1075#1085#1086#1079#1055#1072 +
        #1094#1080#1077#1085#1090#1072'.'#1050#1086#1076#1044#1080#1072#1075#1085#1086#1079#1072' = '#1044#1080#1072#1075#1085#1086#1079'.'#1050#1086#1076#1044#1080#1072#1075#1085#1086#1079#1072)
    Left = 8
    Top = 312
  end
  object SupportQuery: TADOQuery
    Connection = Form1Connection
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1050#1086#1076#1044#1080#1072#1075#1085#1086#1079#1072' FROM '#1044#1080#1072#1075#1085#1086#1079' WHERE '#1053#1072#1079#1074#1072#1085#1080#1077#1044#1080#1072#1075#1085#1086#1079#1072' = '#39#1056#1072#1082' '#1083#1077 +
        #1075#1082#1080#1093#39)
    Left = 16
    Top = 464
  end
end
