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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.DiagnosBtnClick(Sender: TObject);
begin
  if ({edges})then
    begin
          if ({LowGemoglo = Y})then
            begin
                  if ({bloodCathOut})then
                      begin
                        {Switch//Diagmos}
                      end;
                  else
                      begin
                        //Diagnos
                      end;
            end;
          else
            begin
                  if ({Eritro})then
                      begin
                        //Diagnose
                      end;
                  else
                    begin
                        if ({LowLimfi =Y})then
                            begin
                                if ({ShadingUP})then
                                    begin
                                        if ({ShadingAreas = mult})then
                                            begin
                                                 if ({LeikoUp = Y})then
                                                      begin
                                                        //Diagnose
                                                      end;
                                                  else
                                                      begin
                                                        if ({UpSOE = Y})then
                                                            begin
                                                              if ({BloodCathOut})then
                                                                  begin
                                                                    //Diagnose
                                                                  end;
                                                              else
                                                                  begin
                                                                    //Diagnose
                                                                  end;
                                                            end;
                                                        else
                                                            begin
                                                              //Diagnose
                                                            end;
                                                      end;
                                            end;
                                        else
                                            begin
                                               //Diagnose
                                            end;
                                    end;
                                else
                                    begin
                                      if ({plotno})then
                                          begin
                                              //Diagnose
                                          end;
                                       else
                                          begin
                                              //Diagnose
                                          end;
                                    end;
                            end;
                        else
                            begin
                                if ({LeikoUp})then
                                    begin
                                        //Diagnose
                                    end;
                                else
                                    begin
                                        //Switch with if
                                    end;
                            end;
                    end;
            end;
    end;
  else
    begin
        if ({UpLeiko =y})then
            begin
                if ()then
                    begin
                     if ({LowLimfo})then
                        begin
                         //diagnose
                        end;
                      else
                        begin
                         //diagnose
                        end;
                    end;
                else
                    begin
                      if ({ChestPain})then
                        begin
                          // diagnose
                        end;
                      else
                        begin
                          // diagnose
                        end;
                    end;
            end;
        else
            begin
                //Case diagnose
            end;
    end;








end;

end.
