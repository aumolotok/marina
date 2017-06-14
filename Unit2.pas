unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants,DB, ADODB, Buttons,
  StdCtrls, Controls, Grids, DBGrids, ComCtrls,  Graphics, Forms,
  Dialogs, Classes;

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
    Delete: TButton;
    QueryDiagnosis: TADOQuery;
    DiagnosisSourse: TDataSource;
    Refresh: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure DataGrig1CellClick(Column: TColumn);
    procedure AddClick(Sender: TObject);
    procedure UpdateClick(Sender: TObject);
    procedure DeleteClick(Sender: TObject);
    procedure RefreshClick(Sender: TObject);
    procedure BackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
 //////////////////////////////////////// Работа с БД незакончена
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
   QueryPatient.Active:=True;

   QueryDiagnosis.Active := True;
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
    QueryPatient.FieldByName('Телефон').AsString := PhoneField.Text;
    QueryPatient.FieldByName('НомерПолиса').AsString := PolicyNumberField.Text;
    QueryPatient.FieldByName('Адрес').AsString := AddressField.Text;

    QueryPatient.Active := True;
    QueryPatient.Post;
    EditFieldClear;
end;




procedure TForm2.UpdateClick(Sender: TObject);
begin
    QueryPatient.Edit;
    QueryPatient.FieldByName('Имя').AsString := NameField.Text;
    QueryPatient.FieldByName('Фамилия').AsString := SurnameField.Text;
    QueryPatient.FieldByName('Отчество').AsString := FatherNameField.Text;
    QueryPatient.FieldByName('ДатаРоджения').AsDateTime := StrToDate(BirthDateField.Text);
    QueryPatient.FieldByName('Телефон').AsString := PhoneField.Text;
    QueryPatient.FieldByName('НомерПолиса').AsString := PolicyNumberField.Text;
    QueryPatient.FieldByName('Адрес').AsString := AddressField.Text;

    QueryPatient.Post;
    EditFieldClear;
end;

procedure TForm2.DeleteClick(Sender: TObject);
begin
  QueryPatient.Delete;
  QueryPatient.Edit;

  EditFieldClear;
end;

procedure TForm2.RefreshClick(Sender: TObject);
begin
  QueryDiagnosis.Active := False;
  QueryDiagnosis.Active := True;
end;

procedure TForm2.BackClick(Sender: TObject);
begin
   //Unit2.
end;

end.
