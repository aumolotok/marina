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
    Up: TRadioButton;
    Down: TRadioButton;
    Shading: TGroupBox;
    ShadingAreas: TRadioGroup;
    MultipleAreas: TRadioButton;
    SingleArea: TRadioButton;
    TumorInf: TGroupBox;
    TumorShape: TRadioGroup;
    StarShape: TRadioButton;
    CircleShape: TRadioButton;
    LobitShape: TRadioButton;
    IrregularShape: TRadioButton;
    CloudShape: TRadioButton;
    OvalShape: TRadioButton;
    SlitShape: TRadioButton;
    GeneralSymptoms: TGroupBox;
    ChestPain: TCheckBox;
    DiagnosBtn: TButton;
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
  EritroLevel, GemoLevel, LeikoLevel, LimfoLevel, SOELevel : string;
  EdgesResolutionST,ShadingLocationST,ShadingAreasST,CauthOutST, TumorShapeSt : string;
  ChestPainBool: Boolean;

implementation

{$R *.dfm}
  function IsLimitHigh (LowIndex,HighIndex: Real; Value: string): string;
begin
  if ( StrToFloat(Value)< LowIndex) then
      begin
        Result := 'Low';
      end
   else
      begin
        if ( StrToFloat(Value)> HighIndex)then
            begin
              Result := 'High';
            end
        else
            begin
              Result := 'Normal';
            end;
      end;
end;




procedure TForm1.DiagnosBtnClick(Sender: TObject);

begin
       s1 := Eritro.Text;
       Eritro.Text:= IsLimitHigh(3,5,s1);






  Fls :=False;
  if ({edges}Fls)then
    begin
          if ({LowGemoglo = Y}Fls)then
            begin
                  if ({bloodCathOut}Fls)then
                      begin
                        {Switch//Diagmos}
                      end
                  else
                      begin
                        //Diagnos
                      end;
            end
          else
            begin
                  if ({Eritro}Fls)then
                      begin
                        //Diagnose
                      end
                  else
                    begin
                        if ({LowLimfi =Y}Fls)then
                            begin
                                if ({ShadingUP}Fls)then
                                    begin
                                        if ({ShadingAreas = mult}Fls)then
                                            begin
                                                 if ({LeikoUp = Y}Fls)then
                                                      begin
                                                        //Diagnose
                                                      end
                                                  else
                                                      begin
                                                        if ({UpSOE = Y}Fls)then
                                                            begin
                                                              if ({BloodCathOut}Fls)then
                                                                  begin
                                                                    //Diagnose
                                                                  end
                                                              else
                                                                  begin
                                                                    //Diagnose
                                                                  end;
                                                            end
                                                        else
                                                            begin
                                                              //Diagnose
                                                            end;
                                                      end;
                                            end
                                        else
                                            begin
                                               //Diagnose
                                            end;
                                    end
                                else
                                    begin
                                      if ({plotno}Fls)then
                                          begin
                                              //Diagnose
                                          end
                                       else
                                          begin
                                              //Diagnose
                                          end;
                                    end;
                            end
                        else
                            begin
                                if ({LeikoUp}Fls)then
                                    begin
                                        //Diagnose
                                    end
                                else
                                    begin
                                        //Switch with if
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






procedure TForm1.EritroChange(Sender: TObject);
begin
  if (Eritro.Text <>'') then
    begin
    EritroLevel := IsLimitHigh(1.5,5.5,Eritro.Text);
    end
end;

procedure TForm1.LeikoChange(Sender: TObject);
begin
  if (Leiko.Text <>'') then
    begin
    LeikoLevel := IsLimitHigh(1.5,5.5,Leiko.Text);
    end
end;

procedure TForm1.GemoglobinChange(Sender: TObject);
begin
   if (Gemoglobin.Text <>'') then
    begin
    GemoLevel := IsLimitHigh(1.5,5.5,Gemoglobin.Text);
    end
end;

procedure TForm1.SOEChange(Sender: TObject);
begin
   if (SOE.Text <>'') then
    begin
    SOELevel := IsLimitHigh(1.5,5.5,SOE.Text);
    end
end;

procedure TForm1.LimfoChange(Sender: TObject);
begin
   if (Limfo.Text <>'') then
    begin
    LimfoLevel := IsLimitHigh(1.5,5.5,LimfoLevel.Text);
    end
end;

end.
