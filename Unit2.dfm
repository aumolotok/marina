object Form2: TForm2
  Left = 213
  Top = 138
  Width = 683
  Height = 563
  Caption = 'Form2'
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
        Width = 49
        Height = 17
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
        Text = 'NameField'
      end
      object SurnameField: TEdit
        Left = 128
        Top = 232
        Width = 121
        Height = 21
        TabOrder = 2
        Text = 'SurnameField'
      end
      object FatherNameField: TEdit
        Left = 128
        Top = 264
        Width = 121
        Height = 21
        TabOrder = 3
        Text = 'FatherNameField'
      end
      object BirthDateField: TEdit
        Left = 128
        Top = 296
        Width = 121
        Height = 21
        TabOrder = 4
        Text = 'BirthDateField'
      end
      object PhoneField: TEdit
        Left = 400
        Top = 200
        Width = 121
        Height = 21
        TabOrder = 5
        Text = 'PhoneField'
      end
      object PolicyNumberField: TEdit
        Left = 400
        Top = 232
        Width = 121
        Height = 21
        TabOrder = 6
        Text = 'PolicyNumberField'
      end
      object AddressField: TEdit
        Left = 400
        Top = 264
        Width = 121
        Height = 57
        Constraints.MinHeight = 57
        Constraints.MinWidth = 121
        TabOrder = 7
        Text = 'AddressField'
      end
      object Add: TButton
        Left = 168
        Top = 360
        Width = 75
        Height = 25
        Caption = 'Add'
        TabOrder = 8
        OnClick = AddClick
      end
      object Update: TButton
        Left = 400
        Top = 352
        Width = 75
        Height = 25
        Caption = 'Update'
        TabOrder = 9
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
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
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
    Left = 136
    Top = 488
  end
end
