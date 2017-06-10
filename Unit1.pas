unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus;

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
    procedure DiagnosBtnClick(Sender: TObject);
    procedure EritroChange(Sender: TObject);
    procedure LeikoChange(Sender: TObject);
    procedure GemoglobinChange(Sender: TObject);
    procedure SOEChange(Sender: TObject);
    procedure LimfoChange(Sender: TObject);
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
  Diagnosis:string;

  ChestPainBool: Boolean;

const
  Low : string = 'Low';
  Normal : string = 'Normal';
  High : string = 'High';
  Oncology: string = 'Онкология';
  Infiltrate: string  = 'Инфильтративный';
  Dissiminative: string = 'Диссеминированный';
  Cavernoze: string = 'Каверозный';
  Pneumonia: string = 'Пневмония';
  Hotbed : string = 'Очаговый';


implementation

{$R *.dfm}
  function IsLimitHigh (LowIndex,HighIndex: Real; Value: string): string;
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

procedure TuneTheValue(TxtBx:TEdit; LowIndex,HighIndex:real;var ResultValue:string);
begin
     if (TxtBx.Text <>'') then
      begin
      ResultValue := IsLimitHigh(LowIndex,HighIndex,TxtBx.Text)
      end;

end;



procedure TForm1.EritroChange(Sender: TObject);
begin
  TuneTheValue(Eritro,1.5,5.5,EritroLevel);
end;


procedure TForm1.LeikoChange(Sender: TObject);
begin
  TuneTheValue(Leiko,1.5,5.5,LeikoLevel);
end;


procedure TForm1.GemoglobinChange(Sender: TObject);
begin
  TuneTheValue(Gemoglobin,1.5,5.5,GemoLevel);
end;


procedure TForm1.SOEChange(Sender: TObject);
begin
  TuneTheValue(SOE,1.5,5.5,SOELevel);
end;


procedure TForm1.LimfoChange(Sender: TObject);
begin
  TuneTheValue(Limfo,1.5,5.5,LimfoLevel);

end;


procedure TForm1.DiagnosBtnClick(Sender: TObject);

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
                                             if(RoundShape.Checked)then
                                              begin
                                              
                                              end;



                                           end;



                                    end;
                            end;
                    end;
            end;
    end
  else
    begin
        if ({UpLeiko =y}Fls)then
            begin
                if (Fls)then
                    begin
                     if ({LowLimfo}Fls)then
                        begin
                         //diagnose
                        end
                      else
                        begin
                         //diagnose
                        end;
                    end
                else
                    begin
                      if ({ChestPain}Fls)then
                        begin
                          // diagnose
                        end
                      else
                        begin
                          // diagnose
                        end;
                    end;
            end
        else
            begin
                //Case diagnose
            end;
    end;
end;



end.
