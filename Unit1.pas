unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus,Unit2, Grids, DBGrids, ComCtrls, DB,
  ADODB;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    BloodBox: TGroupBox;
    Eritro: TEdit;
    Leiko: TEdit;
    Gemoglobin: TEdit;
    SOE: TEdit;
    Limfo: TEdit;
    EritroLbl: TLabel;
    LeikoLbl: TLabel;
    GemoglobinLbl: TLabel;
    SOELbl: TLabel;
    LimfoLbl: TLabel;
    Pist: TGroupBox;
    Protein: TEdit;
    ProteinLbl: TLabel;
    PistLeiko: TEdit;
    PistLeikoLbl: TLabel;
    Edges: TGroupBox;
    resolution: TRadioGroup;
    goodresolution: TRadioButton;
    rbBadResolution: TRadioButton;
    CauthOut: TGroupBox;
    BloodCauthOut: TCheckBox;
    CauthOutType: TRadioGroup;
    BloodOut: TRadioButton;
    PusOut: TRadioButton;
    MucusOut: TRadioButton;
    ShadingLocation: TGroupBox;
    ShadingUp: TRadioButton;
    ShadingDown: TRadioButton;
    Shading: TGroupBox;
    ShadingAreas: TRadioGroup;
    MultipleAreas: TRadioButton;
    SingleArea: TRadioButton;
    TumorInf: TGroupBox;
    TumorShape: TRadioGroup;
    StarShape: TRadioButton;
    RingShape: TRadioButton;
    LobitShape: TRadioButton;
    IrregularShape: TRadioButton;
    CloudShape: TRadioButton;
    OvalShape: TRadioButton;
    SlitShape: TRadioButton;
    GeneralSymptoms: TGroupBox;
    ChestPain: TCheckBox;
    DiagnosBtn: TButton;
    Sealing: TCheckBox;
    RoundShape: TRadioButton;
    ShadowSize: TRadioGroup;
    Chose: TButton;
    NoShadow: TRadioButton;
    Smal: TRadioButton;
    Midle: TRadioButton;
    Big: TRadioButton;
    DataSourse1: TDataSource;
    PatientChooseQuery: TADOQuery;
    ChooseAndGive: TPageControl;
    ChoosePatient: TTabSheet;
    Diagnosises: TTabSheet;
    PatientChooseTB: TDBGrid;
    lChoosedPatientTitle: TLabel;
    ChosenNameTitle: TLabel;
    ChosenSurnameTitle: TLabel;
    ChosenFatherNameTitle: TLabel;
    PolicyNumberTitle: TLabel;
    PhoneTitle: TLabel;
    Form1Connection: TADOConnection;
    DiagnosisesTB: TDBGrid;
    DiagnosisesSourse: TDataSource;
    DiagnosisQuery: TADOQuery;
    AddDiagnose: TButton;
    DescrimDiagnose: TButton;
    WeakNess: TCheckBox;
    Exhaustingness: TCheckBox;
    WeightLoss: TCheckBox;
    Paleness: TCheckBox;
    Cough: TCheckBox;
    Temperature: TGroupBox;
    TemperatureValue: TEdit;
    Puke: TCheckBox;
    Headaches: TCheckBox;
    BloodInExcrement: TCheckBox;
    Diarrhea: TCheckBox;
    CoughOutIs: TCheckBox;
    Walls: TGroupBox;
    Smooth: TCheckBox;
    Even: TCheckBox;
    Clear: TCheckBox;
    Unclear: TCheckBox;
    Bumpy: TCheckBox;
    Loose: TCheckBox;
    Swollen: TCheckBox;
    IrregularWall: TCheckBox;
    RegularShape: TRadioButton;
    procedure DiagnosBtnClick(Sender: TObject);
    procedure EritroChange(Sender: TObject);
    procedure LeikoChange(Sender: TObject);
    procedure GemoglobinChange(Sender: TObject);
    procedure SOEChange(Sender: TObject);
    procedure LimfoChange(Sender: TObject);
    procedure ChoseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PatientChooseTBCellClick(Column: TColumn);
    procedure DescrimDiagnoseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Fls: Boolean;
  s1: string;
  i: Integer;

  EritroLevel, GemoLevel, LeikoLevel, LimfoLevel, SOELevel,
  EdgesResolutionST,ShadingLocationST,ShadingAreasST,CauthOutST, TumorShapeSt,
  Diagnosis, DiagnosisDisc:string;

  ChestPainBool: Boolean;

    arx1: array[1 .. 6, 1 .. 14] of integer = (
   (3, 3, 6, 1, 4, 3, 6, 6, 5, 3, 3, 2, 1, 1),   // каверозный
   (3, 3, 2, 2, 5, 1, 2, 2, 1, 4, 2, 2, 1, 2),   //Инф
   (3, 3, 5, 2, 3, 3, 5, 2, 4, 5, 2, 2, 1, 1),   //Очаг
   (4, 4, 4, 2, 3, 5, 2, 1, 1, 3, 1, 2, 1, 1),   // Дисс
   (3, 3, 5, 3, 5, 5, 1, 2, 5, 2, 4, 2, 1, 2),   //Онкол
   (3, 3, 1, 2, 3, 4, 1, 4, 1, 1, 2, 2, 1, 1));   //Пнев

   arx2: array[1 .. 6, 1 .. 3] of integer = (
  (5, 5, 3),
  (5, 3, 5),
  (2, 4, 5),
  (4, 3, 4),
  (1, 4, 4),
  (4, 2, 3));

  arx3: array[1 .. 6, 1 .. 5] of integer = (
  (2, 5, 4, 5, 3),
  (2, 3, 4, 2, 4),
  (3, 3, 2, 4, 4),
  (1, 3, 3, 5, 5),
  (3, 2, 4, 4, 4),
  (2, 5, 3, 5, 3));

  arx4: array[1 .. 6, 1 .. 3] of integer = (
  (1, 3, 3),
  (3, 3, 4),
  (3, 4, 3),
  (6, 2, 2),
  (4, 5, 6),
  (4, 4, 6));

  arx5: array [1..6, 1..4] of integer =(
  (5, 3, 5, 5),
  (6, 3, 5, 4),
  (5, 2, 6, 4),
  (5, 3, 3, 6),
  (6, 2, 5, 6),
  (3, 3, 4, 4));

  arx6: array [1..6, 1..8] of integer =(
   (5, 3, 2, 1, 3, 3, 4, 5),
   (3, 2, 1, 6, 2, 2, 1, 3),
   (3, 2, 1, 2, 2, 2, 3, 3),
   (4, 3, 1, 6, 2, 1, 3, 5),
   (4, 3, 3, 6, 5, 3, 6, 5),
   (3, 2, 2, 5, 2, 2, 3, 4));

   arx7 : array [1..6,1..7] of integer =  (
    (4, 5, 3, 5, 3, 2, 2),
    (2, 6, 1, 3, 4, 5, 3),
    (3, 4, 2, 5, 5, 3, 2),
    (3, 6, 2, 5, 4, 2, 2),
    (3, 5, 2, 5, 5, 5, 4),
    (2, 5, 3, 4, 1, 3, 4));

   arx8 :array [1..6] of integer = (5,6,5,5,5,4);

const
  Low : string = 'Low';
  Normal : string = 'Normal';
  High : string = 'High';
  Oncology: string = 'Онкология';
  Infiltrate: string  = 'Инфильтративный туберкулез';
  Dissiminative: string = 'Диссеминированный туберкулез';
  Cavernoze: string = 'Каверозный туберкулез';
  Pneumonia: string = 'Пневмония';
  Hotbed : string = 'Очаговый туберкулез';


implementation

{$R *.dfm}
  function IsLimitHigh (LowIndex,HighIndex: Real; Value: string): string; // Функция. Получет пороги и определяет повышено, понижено или значение в норме
begin
  if ( StrToFloat(Value)< LowIndex) then
      begin
        Result := Low;
      end
   else
      begin
        if ( StrToFloat(Value)> HighIndex)then
            begin
              Result := High;
            end
        else
            begin
              Result := Normal;
            end;
      end;
end;

procedure TuneTheValue(TxtBx:TEdit; LowIndex,HighIndex:real;var ResultValue:string);// Процедура. Заполняет строковые меременные показателей на основе их данных и порогов
begin
     if (TxtBx.Text <>'') then
      begin
      ResultValue := IsLimitHigh(LowIndex,HighIndex,TxtBx.Text)
      end;

end;



procedure TForm1.EritroChange(Sender: TObject);// Определяем , повышен ли показатель Эритроцитов
begin
  TuneTheValue(Eritro,3.9,5.5,EritroLevel);
end;


procedure TForm1.LeikoChange(Sender: TObject);  // Определяем , повышен ли показатель Лейкоцитов
begin
  TuneTheValue(Leiko,4,9,LeikoLevel);
end;


procedure TForm1.GemoglobinChange(Sender: TObject); // Определяем , повышен ли показатель Гемоглобина
begin
  TuneTheValue(Gemoglobin,120,160,GemoLevel);
end;


procedure TForm1.SOEChange(Sender: TObject); // Определяем , повышен ли показатель СОЭ
begin
  TuneTheValue(SOE,2,13,SOELevel);
end;


procedure TForm1.LimfoChange(Sender: TObject); // Определяем , повышен ли показатель Лимфоцитов
begin
  TuneTheValue(Limfo,18,40,LimfoLevel);

end;


procedure TForm1.DiagnosBtnClick(Sender: TObject);// Дерево решений

begin

  Fls :=False;
  if (rbBadResolution.Checked)then
    begin
          if (GemoLevel = Low)then
            begin
                  if (BloodCauthOut.Checked)then
                      begin
                            if (PusOut.Checked)then  Diagnosis := Infiltrate
                            else Diagnosis := Oncology;
                      end
                  else
                      begin
                      Diagnosis := Infiltrate;
                      end;
            end
          else
            begin
                  if (EritroLevel = Low)then
                      begin
                        Diagnosis := Oncology;
                      end
                  else
                    begin
                        if (LimfoLevel = Low)then
                            begin
                                if (ShadingUp.Checked)then
                                    begin
                                        if (MultipleAreas.Checked)then
                                            begin
                                                 if (LeikoLevel = High)then
                                                      begin
                                                        Diagnosis :=Dissiminative;
                                                      end
                                                  else
                                                      begin
                                                        if ({UpSOE = Y} SOELevel = High)then
                                                            begin
                                                              if (BloodCauthOut.Checked)then
                                                                  begin
                                                                    Diagnosis := Dissiminative;
                                                                  end
                                                              else
                                                                  begin
                                                                    Diagnosis := Dissiminative;
                                                                  end;
                                                            end
                                                        else
                                                            begin
                                                              Diagnosis := Infiltrate;
                                                            end;
                                                      end;
                                            end
                                        else
                                            begin
                                               Diagnosis := Infiltrate;
                                            end;
                                    end
                                else
                                    begin
                                      if (Sealing.Checked)then
                                          begin
                                              Diagnosis := Pneumonia;
                                          end
                                       else
                                          begin
                                              Diagnosis := Dissiminative;
                                          end;
                                    end;
                            end
                        else
                            begin
                                if ({LeikoUp} LeikoLevel = High)then
                                    begin
                                        Diagnosis := Dissiminative;
                                    end
                                else
                                    begin
                                        if(LobitShape.Checked or CloudShape.Checked)then
                                          Diagnosis := Infiltrate
                                        else
                                           begin
                                             if(StarShape.Checked or RingShape.Checked or IrregularShape.Checked or OvalShape.Checked or SlitShape.Checked)then
                                              begin
                                                Diagnosis := Hotbed;
                                              end
                                             else
                                              begin
                                                if (Big.Checked)then
                                                  begin
                                                    Diagnosis := Infiltrate;
                                                  end
                                                else
                                                  begin
                                                    Diagnosis := Hotbed;
                                                  end;
                                              end;
                                           end;
                                    end;
                            end;
                    end;
            end;
    end
  else
    begin
        if ({UpLeiko =y}LeikoLevel = High)then
            begin
                if (GemoLevel = Low)then
                    begin
                     if ({LowLimfo}LimfoLevel = Low)then
                        begin
                         Diagnosis := Dissiminative;
                        end
                      else
                        begin
                         Diagnosis := Cavernoze;
                        end;
                    end
                else
                    begin
                      if ({ChestPain}ChestPain.Checked)then
                        begin
                          Diagnosis := Pneumonia;
                        end
                      else
                        begin
                          Diagnosis := Dissiminative;
                        end;
                    end;
            end
        else
            begin
                if (MucusOut.Checked)then
                  begin
                    Diagnosis := Infiltrate;
                  end
                else
                  begin
                    Diagnosis := Cavernoze;
                  end;
            end;
    end;

    ShowMessage('Диагноз на основе дерева решений: ' + Diagnosis);

end;





procedure TForm1.ChoseClick(Sender: TObject);
begin
  Unit2.Form2.Show;
end;

procedure TForm1.FormCreate(Sender: TObject); // Активируем запросы для таблиц из БД ( Бд недоделано)
begin
  PatientChooseQuery.Active :=True;
  DiagnosisQuery.Active := True;
end;

procedure TForm1.PatientChooseTBCellClick(Column: TColumn); // Показываем, кто выбран
begin
   ChosenNameTitle.Caption:=   PatientChooseQuery.FieldByName('Имя').AsString;
   ChosenSurnameTitle.Caption:=   PatientChooseQuery.FieldByName('Фамилия').AsString;
   ChosenFatherNameTitle.Caption:=   PatientChooseQuery.FieldByName('Отчество').AsString;
   PolicyNumberTitle.Caption:= 'Номер Полиса: ' + PatientChooseQuery.FieldByName('НомерПолиса').AsString;
end;

function X1B (I:integer):Integer; // СОбирает переменную X1 -  Анемнез
  begin
     Result := arx1[i,1]*Integer(Form1.WeakNess.Checked) +
               arx1[i,2]*Integer(Form1.Exhaustingness.Checked) +
               arx1[i,3]*Integer(Form1.WeightLoss.Checked) +
               arx1[i,4]*Integer(Form1.Paleness.Checked) +
               arx1[i,5]*Integer(Integer((StrToInt(Form1.TemperatureValue.Text))< 38) and Integer((StrToInt(Form1.TemperatureValue.Text))> 37)) +
               arx1[i,6]*Integer(Integer((StrToInt(Form1.TemperatureValue.Text))>38)) +
               arx1[i,7]*Integer(Form1.Cough.Checked) +
               arx1[i,8]*Integer(Form1.CoughOutIs.Checked) +
               arx1[i,9]*Integer(Form1.BloodCauthOut.Checked)+
               arx1[i,10]*Integer(Form1.Puke.Checked)+
               arx1[i,11]*Integer(Form1.Headaches.Checked)+
               arx1[i,12]*Integer(Form1.BloodInExcrement.Checked)+
               arx1[i,13]*Integer(Form1.Diarrhea.Checked)+
               arx1[i,14]*Integer(Form1.ChestPain.Checked);
  end;

function X2B(i:Integer):Integer; //// СОбирает переменнуюX2 - Вид Мокроты
  begin
    Result := arx2[i,1]*Integer(Form1.PusOut.Checked) +
              arx2[i,2]*Integer(Form1.MucusOut.Checked)+
              arx2[i,3]*Integer(Form1.BloodOut.Checked);
  end;

function X3B(i:Integer):Integer; //// СОбирает переменную X3 - Анализ крови
  begin
    Result := arx3[i,1]*Integer((EritroLevel = 'Low')) +
              arx3[i,2]*Integer((LeikoLevel = 'High'))+
              arx3[i,3]*Integer((GemoLevel = 'Low'))+
              arx3[i,4]*Integer((SOELevel = 'High'))+
              arx3[i,5]*Integer((LimfoLevel = 'High'));
  end;

function X4B (i:Integer):Integer;// СОбирает переменную X4 -
  begin
    Result := arx4[i,1]*Integer(Form1.Smal.Checked) +
              arx4[i,2]*Integer(Form1.Midle.Checked) +
              arx4[i,3]*Integer(Form1.Big.Checked);
  end;

function X5B(i: integer):Integer;// СОбирает переменную X5 -


  begin
    Result := arx5[i,1]*Integer(Form1.ShadingUp.Checked) +
              arx5[i,2]*Integer(Form1.ShadingDown.Checked) +
              arx5[i,3]*Integer(Form1.SingleArea.Checked) +
              arx5[i,4]*Integer(Form1.MultipleAreas.Checked);
  end;

function X6B(i:Integer):Integer;// СОбирает переменную X6 -
  begin
    Result := arx6[i,1]*Integer(Form1.Smooth.Checked)+
              arx6[i,2]*Integer(Form1.Even.Checked)+
              arx6[i,3]*Integer(Form1.Clear.Checked)+
              arx6[i,4]*Integer(Form1.Unclear.Checked)+
              arx6[i,5]*Integer(Form1.Bumpy.Checked)+
              arx6[i,6]*Integer(Form1.Loose.Checked)+
              arx6[i,7]*Integer(Form1.Swollen.Checked)+
              arx6[i,8]*Integer(Form1.IrregularWall.Checked);
  end;

function X7B(i: Integer):Integer;// СОбирает переменную X7 -
  begin
    Result := arx7[i,1]*Integer(Form1.SlitShape.Checked)+
              arx7[i,2]*Integer(Form1.RoundShape.Checked)+
              arx7[i,3]*Integer(Form1.RingShape.Checked)+
              arx7[i,4]*Integer(Form1.OvalShape.Checked)+
              arx7[i,5]*Integer(Form1.IrregularShape.Checked)+
              arx7[i,6]*Integer(Form1.CloudShape.Checked)+
              arx7[i,7]*Integer(Form1.StarShape.Checked);
  end;

function X8B(i:Integer):Integer;// СОбирает переменную X8 -


  begin
    Result := arx8[i]*Integer(Form1.Sealing.Checked);
  end;



procedure TForm1.DescrimDiagnoseClick(Sender: TObject); // Ставим диагноз исходя их Дискреминантного анализа
var
  Y1, //Каверозный туберкулез
  Y2, //инфильтративный туберкулез
  Y3, //Очаговый туберкулез
  Y4, //Диссеминированный туберкулез
  Y5, //Рак легких
  Y6  //Пневмония
  : Comp;


begin


  Y1 := -58.1604 + 0.8317*X1B(1) - 0.1794*X2B(1) + 1.6580*X3B(1) + 3.2724*X4B(1) + 6.6819*X5B(1) + 0.7874*X6B(1) + 0.5056*X7B(1) + 0.2059*X8B(1);
  Y2 := -57.7186 + 0.6910*X1B(2) - 0.4665*X2B(2) + 0.9706*X3B(2) + 4.0095*X4B(2) + 7.2931*X5B(2) + 0.8862*X6B(2) + 0.0328*X7B(2) + 0.2068*X8B(2);
  Y3 := -61.4562 + 0.8907*X1B(3) - 0.3883*X2B(3) + 1.3705*X3B(3) + 4.1512*X4B(3) + 7.1243*X5B(3) + 0.7874*X6B(3) + 0.2266*X7B(3) - 0.1462*X8B(3);
  Y4 := -68.7652 + 0.6998*X1B(4) - 0.1103*X2B(4) + 2.3850*X3B(4) + 3.9948*X4B(4) + 7.3588*X5B(4) + 0.8953*X6B(4) + 0.0823*X7B(4) - 0.1409*X8B(4);
  Y5 := -89.5891 + 1.1026*X1B(5) - 0.6665*X2B(5) + 1.2781*X3B(5) + 5.3228*X4B(5) + 7.8928*X5B(5) + 1.0969*X6B(5) + 1.0958*X7B(5) + 0.2534*X8B(5);
  Y6 := -54.3050 + 0.5079*X1B(0) - 0.0422*X2B(6) + 2.2101*X3B(6) + 4.4072*X4B(6) + 5.1064*X5B(6) + 0.7352*X6B(6) + 1.4130*X7B(6) + 0.0070*X8B(6);

  if ((Y1>Y2) and (Y1>Y3) and (Y1>Y4) and (Y1>Y5) and (Y1>Y6)) then DiagnosisDisc := Cavernoze;
  if ((Y2>Y1) and (Y2>Y3) and (Y2>Y4) and (Y2>Y5) and (Y2>Y6)) then DiagnosisDisc := Infiltrate;
  if ((Y3>Y1) and (Y3>Y2) and (Y3>Y4) and (Y3>Y5) and (Y3>Y6)) then DiagnosisDisc := Hotbed;
  if ((Y4>Y1) and (Y4>Y2) and (Y4>Y3) and (Y4>Y5) and (Y4>Y6)) then DiagnosisDisc := Dissiminative;
  if ((Y5>Y1) and (Y5>Y2) and (Y5>Y3) and (Y5>Y4) and (Y5>Y6)) then DiagnosisDisc := Oncology;
  //if ((Y6>Y1) and (Y6>Y2) and (Y6>Y3) and (Y6>Y4) and (Y6>Y5)) then DiagnosisDisc := Pneumonia;

  ShowMessage('Диагноз на основе дискриминантного анализа: ' + DiagnosisDisc);
   PistLeiko.Text := floatToStr(Y1);
    Y1 := 0;
    Y2 := 0;
    Y3 := 0;
    Y4 := 0;
    Y5 := 0;
    Y6 := 0;
end;

 //arx2: array[1 .. 6, 1 .. 3]







end.
