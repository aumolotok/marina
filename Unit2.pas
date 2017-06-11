unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, ComCtrls, StdCtrls;

type
  TForm2 = class(TForm)
    AdoCon1: TADOConnection;
    DataSourse1: TDataSource;
    QueryPatient: TADOQuery;
    BaseShift1: TPageControl;
    Patients: TTabSheet;
    DataGrig1: TDBGrid;
    Diagnosis: TTabSheet;
    DiagnosisTable: TDBGrid;
    NameField: TEdit;
    Name: TLabel;
    SurnameField: TEdit;
    Surname: TLabel;
    FatherNameField: TEdit;
    FatherName: TLabel;
    BirthDateField: TEdit;
    BirthDate: TLabel;
    PhoneField: TEdit;
    Phone: TLabel;
    PolicyNumberField: TEdit;
    Policy: TLabel;
    AddressField: TEdit;
    Address: TLabel;
    Add: TButton;
    Update: TButton;
    procedure FormCreate(Sender: TObject);
    procedure DataGrig1CellClick(Column: TColumn);
    procedure AddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure EditFieldClear;
begin
    Form2.NameField.Clear;
     Form2.SurnameField.Clear;
     Form2.FatherNameField.Clear;
     Form2.BirthDateField.Clear;
     Form2.PhoneField.Clear;
     Form2.PolicyNumberField.Clear;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
   QueryPatient.SQL.Clear;
   QueryPatient.SQL.Add('SELECT * FROM Пациент');
   QueryPatient.Active:=True;

   NameField.Text := QueryPatient.FieldByName('Имя').AsString;


end;




procedure TForm2.DataGrig1CellClick(Column: TColumn);
begin

  NameField.Text := QueryPatient.FieldByName('Имя').AsString;
  SurnameField.Text := QueryPatient.FieldByName('Фамилия').AsString;
  FatherNameField.Text := QueryPatient.FieldByName('Отчество').AsString;
  BirthDateField.Text := QueryPatient.FieldByName('ДатаРоджения').AsString;
  PhoneField.Text := QueryPatient.FieldByName('Телефон').AsString;
  PolicyNumberField.Text := QueryPatient.FieldByName('НомерПолиса').AsString;
  AddressField.Text := QueryPatient.FieldByName('Адрес').AsString;
end;

procedure TForm2.AddClick(Sender: TObject);
begin
    QueryPatient.Insert;
    QueryPatient.FieldByName('Имя').AsString := NameField.Text;
    QueryPatient.FieldByName('Фамилия').AsString := SurnameField.Text;
    QueryPatient.FieldByName('Отчество').AsString := FatherNameField.Text;
    QueryPatient.FieldByName('ДатаРоджения').AsDateTime := StrToDate(BirthDateField.Text);
    QueryPatient.FieldByName('Телефон').AsInteger := StrToInt(PhoneField.Text);
    QueryPatient.FieldByName('НомерПолиса').AsInteger := StrToInt(PolicyNumberField.Text);
    QueryPatient.FieldByName('Адрес').AsString := AddressField.Text;

    QueryPatient.Active := True;
    QueryPatient.Post;
    EditFieldClear;

end;




end.
