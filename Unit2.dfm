object Form2: TForm2
  Left = 264
  Top = 180
  Width = 658
  Height = 565
  Caption = #1041#1072#1079#1072' '#1044#1072#1085#1085#1099#1093
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object BaseShift1: TPageControl
    Left = 16
    Top = 24
    Width = 617
    Height = 457
    ActivePage = Patients
    TabOrder = 0
    object Patients: TTabSheet
      Caption = 'Patients'
      object Name: TLabel
        Left = 88
        Top = 200
        Width = 27
        Height = 13
        Caption = 'Name'
      end
      object Surname: TLabel
        Left = 72
        Top = 232
        Width = 42
        Height = 13
        Caption = 'Surname'
      end
      object FatherName: TLabel
        Left = 56
        Top = 264
        Width = 59
        Height = 13
        Caption = 'FatherName'
      end
      object BirthDate: TLabel
        Left = 64
        Top = 296
        Width = 45
        Height = 13
        Caption = 'BirthDate'
      end
      object Phone: TLabel
        Left = 360
        Top = 200
        Width = 30
        Height = 13
        Caption = 'Phone'
      end
      object Policy: TLabel
        Left = 360
        Top = 232
        Width = 27
        Height = 13
        Caption = 'Policy'
      end
      object Address: TLabel
        Left = 352
        Top = 264
        Width = 39
        Height = 13
        Caption = 'Address'
      end
      object DataGrig1: TDBGrid
        Left = 8
        Top = 16
        Width = 585
        Height = 161
        DataSource = DataSourse1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DataGrig1CellClick
      end
      object NameField: TEdit
        Left = 128
        Top = 200
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object SurnameField: TEdit
        Left = 128
        Top = 232
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object FatherNameField: TEdit
        Left = 128
        Top = 264
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object BirthDateField: TEdit
        Left = 128
        Top = 296
        Width = 121
        Height = 21
        TabOrder = 4
      end
      object PhoneField: TEdit
        Left = 400
        Top = 200
        Width = 121
        Height = 21
        TabOrder = 5
      end
      object PolicyNumberField: TEdit
        Left = 400
        Top = 232
        Width = 121
        Height = 21
        TabOrder = 6
      end
      object AddressField: TEdit
        Left = 400
        Top = 264
        Width = 121
        Height = 57
        Constraints.MinHeight = 57
        Constraints.MinWidth = 121
        TabOrder = 7
      end
      object Add: TButton
        Left = 176
        Top = 344
        Width = 75
        Height = 25
        Caption = 'Add'
        TabOrder = 8
        OnClick = AddClick
      end
      object Update: TButton
        Left = 272
        Top = 344
        Width = 75
        Height = 25
        Caption = 'Update'
        TabOrder = 9
        OnClick = UpdateClick
      end
      object Delete: TButton
        Left = 368
        Top = 344
        Width = 75
        Height = 25
        Caption = 'Delete'
        TabOrder = 10
        OnClick = DeleteClick
      end
    end
    object Diagnosis: TTabSheet
      Caption = 'Diagnosis'
      ImageIndex = 1
      object DiagnosisTable: TDBGrid
        Left = 8
        Top = 16
        Width = 585
        Height = 241
        DataSource = DiagnosisSourse
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Refresh: TBitBtn
        Left = 232
        Top = 288
        Width = 75
        Height = 25
        Caption = 'Refresh'
        TabOrder = 1
        OnClick = RefreshClick
      end
    end
  end
  object AdoCon1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=DataBase\Voylikova_' +
      '12345 2003.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 16
    Top = 488
  end
  object DataSourse1: TDataSource
    DataSet = QueryPatient
    Left = 72
    Top = 488
  end
  object QueryPatient: TADOQuery
    Connection = AdoCon1
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM '#1055#1072#1094#1080#1077#1085#1090)
    Left = 136
    Top = 488
  end
  object QueryDiagnosis: TADOQuery
    Connection = AdoCon1
    Parameters = <>
    SQL.Strings = (
      
        'Select '#1048#1084#1103', '#1060#1072#1084#1080#1083#1080#1103', '#1054#1090#1095#1077#1089#1090#1074#1086', '#1044#1072#1090#1072#1056#1086#1076#1078#1077#1085#1080#1103', '#1044#1072#1090#1072#1044#1080#1072#1075#1085#1086#1079#1072', '#1053#1072#1079#1074#1072 +
        #1085#1080#1077#1044#1080#1072#1075#1085#1086#1079#1072
      'From '
      
        '('#1044#1080#1072#1075#1085#1086#1079#1055#1072#1094#1080#1077#1085#1090#1072' LEFT JOIN '#1055#1072#1094#1080#1077#1085#1090' ON '#1044#1080#1072#1075#1085#1086#1079#1055#1072#1094#1080#1077#1085#1090#1072'.'#8470#1087#1072#1094#1080#1077#1085#1090#1072' ' +
        '=  '#1055#1072#1094#1080#1077#1085#1090'.'#8470#1055#1072#1094#1080#1077#1085#1090#1072')'
      
        '                                  LEFT JOIN '#1044#1080#1072#1075#1085#1086#1079' ON '#1044#1080#1072#1075#1085#1086#1079#1055#1072 +
        #1094#1080#1077#1085#1090#1072'.'#1050#1086#1076#1044#1080#1072#1075#1085#1086#1079#1072' = '#1044#1080#1072#1075#1085#1086#1079'.'#1050#1086#1076#1044#1080#1072#1075#1085#1086#1079#1072)
    Left = 600
    Top = 488
  end
  object DiagnosisSourse: TDataSource
    DataSet = QueryDiagnosis
    Left = 512
    Top = 488
  end
end
