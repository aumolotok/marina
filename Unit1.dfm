object Form1: TForm1
  Left = 328
  Top = 156
  Width = 609
  Height = 633
  Caption = 'Bla-bla-bla'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
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
      Width = 39
      Height = 13
      Caption = 'EritroLbl'
    end
    object LeikoLbl: TLabel
      Left = 24
      Top = 64
      Width = 37
      Height = 13
      Caption = 'LeikoLbl'
    end
    object GemoglobinLbl: TLabel
      Left = 16
      Top = 104
      Width = 68
      Height = 13
      Caption = 'GemoglobinLbl'
    end
    object SOELbl: TLabel
      Left = 24
      Top = 136
      Width = 33
      Height = 13
      Caption = 'SOELbl'
    end
    object LimfoLbl: TLabel
      Left = 24
      Top = 168
      Width = 38
      Height = 13
      Caption = 'LimfoLbl'
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
    Left = 48
    Top = 216
    Width = 241
    Height = 105
    Caption = 'Pist'
    TabOrder = 1
    object ProteinLbl: TLabel
      Left = 32
      Top = 24
      Width = 47
      Height = 13
      Caption = 'ProteinLbl'
    end
    object PistLeikoLbl: TLabel
      Left = 32
      Top = 64
      Width = 54
      Height = 13
      Caption = 'PistLeikoLbl'
    end
    object Protein: TEdit
      Left = 104
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object PistLeiko: TEdit
      Left = 104
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 1
    end
  end
  object Edges: TGroupBox
    Left = 312
    Top = 16
    Width = 169
    Height = 193
    Caption = 'Edges'
    TabOrder = 2
    object resolution: TRadioGroup
      Left = 8
      Top = 32
      Width = 129
      Height = 97
      Caption = 'resolution'
      TabOrder = 0
    end
    object goodresolution: TRadioButton
      Left = 32
      Top = 56
      Width = 113
      Height = 17
      Caption = 'goodresolution'
      TabOrder = 1
    end
    object rbBadResolution: TRadioButton
      Left = 32
      Top = 80
      Width = 113
      Height = 17
      Caption = 'rbBadResolution'
      TabOrder = 2
    end
  end
  object CauthOut: TGroupBox
    Left = 496
    Top = 24
    Width = 217
    Height = 185
    Caption = 'CauthOut'
    TabOrder = 3
    object BloodCauthOut: TCheckBox
      Left = 16
      Top = 24
      Width = 97
      Height = 17
      Caption = 'BloodCauthOut'
      TabOrder = 0
    end
    object CauthOutType: TRadioGroup
      Left = 16
      Top = 48
      Width = 169
      Height = 105
      Caption = 'CauthOutType'
      TabOrder = 1
    end
    object BloodOut: TRadioButton
      Left = 40
      Top = 80
      Width = 113
      Height = 17
      Caption = 'BloodOut'
      TabOrder = 2
    end
    object PusOut: TRadioButton
      Left = 40
      Top = 104
      Width = 113
      Height = 17
      Caption = 'PusOut'
      TabOrder = 3
    end
    object MucusOut: TRadioButton
      Left = 40
      Top = 128
      Width = 113
      Height = 17
      Caption = 'MucusOut'
      TabOrder = 4
    end
  end
  object Shading: TGroupBox
    Left = 296
    Top = 224
    Width = 201
    Height = 345
    Caption = 'Shading'
    TabOrder = 4
    object ShadingLocation: TGroupBox
      Left = 8
      Top = 24
      Width = 153
      Height = 81
      Caption = 'ShadingLocation'
      TabOrder = 0
      object ShadingUp: TRadioButton
        Left = 24
        Top = 16
        Width = 113
        Height = 17
        Caption = 'ShadingUp'
        TabOrder = 0
      end
      object ShadingDown: TRadioButton
        Left = 24
        Top = 48
        Width = 113
        Height = 17
        Caption = 'ShadingDown'
        TabOrder = 1
      end
    end
    object ShadingAreas: TRadioGroup
      Left = 8
      Top = 120
      Width = 153
      Height = 73
      Caption = 'ShadingAreas'
      TabOrder = 1
    end
    object MultipleAreas: TRadioButton
      Left = 24
      Top = 144
      Width = 113
      Height = 17
      Caption = 'MultipleAreas'
      TabOrder = 2
    end
    object SingleArea: TRadioButton
      Left = 24
      Top = 168
      Width = 113
      Height = 17
      Caption = 'SingleArea'
      TabOrder = 3
    end
    object ShadowSize: TRadioGroup
      Left = 8
      Top = 200
      Width = 185
      Height = 105
      Caption = 'ShadowSize'
      TabOrder = 4
    end
  end
  object TumorInf: TGroupBox
    Left = 504
    Top = 224
    Width = 433
    Height = 369
    Caption = 'TumorInf'
    TabOrder = 5
    object TumorShape: TRadioGroup
      Left = 8
      Top = 24
      Width = 297
      Height = 273
      Caption = 'TumorShape'
      TabOrder = 0
    end
    object StarShape: TRadioButton
      Left = 40
      Top = 48
      Width = 113
      Height = 17
      Caption = 'StarShape'
      TabOrder = 1
    end
    object RingShape: TRadioButton
      Left = 40
      Top = 72
      Width = 113
      Height = 17
      Caption = 'RingShape'
      TabOrder = 2
    end
    object LobitShape: TRadioButton
      Left = 40
      Top = 104
      Width = 113
      Height = 17
      Caption = 'LobitShape'
      TabOrder = 3
    end
    object IrregularShape: TRadioButton
      Left = 40
      Top = 136
      Width = 113
      Height = 17
      Caption = 'IrregularShape'
      TabOrder = 4
    end
    object CloudShape: TRadioButton
      Left = 40
      Top = 168
      Width = 113
      Height = 17
      Caption = 'CloudShape'
      TabOrder = 5
    end
    object OvalShape: TRadioButton
      Left = 40
      Top = 200
      Width = 113
      Height = 17
      Caption = 'OvalShape'
      TabOrder = 6
    end
    object SlitShape: TRadioButton
      Left = 40
      Top = 232
      Width = 113
      Height = 17
      Caption = 'SlitShape'
      TabOrder = 7
    end
    object Sealing: TCheckBox
      Left = 40
      Top = 304
      Width = 97
      Height = 17
      Caption = 'Sealing'
      TabOrder = 8
    end
    object RoundShape: TRadioButton
      Left = 32
      Top = 256
      Width = 113
      Height = 17
      Caption = 'RoundShape'
      TabOrder = 9
    end
  end
  object GeneralSymptoms: TGroupBox
    Left = 728
    Top = 32
    Width = 225
    Height = 177
    Caption = 'GeneralSymptoms'
    TabOrder = 6
    object ChestPain: TCheckBox
      Left = 32
      Top = 40
      Width = 97
      Height = 17
      Caption = 'ChestPain'
      TabOrder = 0
    end
  end
  object DiagnosBtn: TButton
    Left = 48
    Top = 344
    Width = 75
    Height = 25
    Caption = 'DiagnosBtn'
    TabOrder = 7
    OnClick = DiagnosBtnClick
  end
  object Form2: TButton
    Left = 64
    Top = 424
    Width = 75
    Height = 25
    Caption = 'Form2'
    TabOrder = 8
    OnClick = Form2Click
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
  end
end
