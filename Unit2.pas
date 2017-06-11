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
   QueryPatient.SQL.Add('SELECT * FROM �������');
   QueryPatient.Active:=True;

   NameField.Text := QueryPatient.FieldByName('���').AsString;


end;




procedure TForm2.DataGrig1CellClick(Column: TColumn);
begin

  NameField.Text := QueryPatient.FieldByName('���').AsString;
  SurnameField.Text := QueryPatient.FieldByName('�������').AsString;
  FatherNameField.Text := QueryPatient.FieldByName('��������').AsString;
  BirthDateField.Text := QueryPatient.FieldByName('������������').AsString;
  PhoneField.Text := QueryPatient.FieldByName('�������').AsString;
  PolicyNumberField.Text := QueryPatient.FieldByName('�����������').AsString;
  AddressField.Text := QueryPatient.FieldByName('�����').AsString;
end;

procedure TForm2.AddClick(Sender: TObject);
begin
    QueryPatient.Insert;
    QueryPatient.FieldByName('���').AsString := NameField.Text;
    QueryPatient.FieldByName('�������').AsString := SurnameField.Text;
    QueryPatient.FieldByName('��������').AsString := FatherNameField.Text;
    QueryPatient.FieldByName('������������').AsDateTime := StrToDate(BirthDateField.Text);
    QueryPatient.FieldByName('�������').AsInteger := StrToInt(PhoneField.Text);
    QueryPatient.FieldByName('�����������').AsInteger := StrToInt(PolicyNumberField.Text);
    QueryPatient.FieldByName('�����').AsString := AddressField.Text;

    QueryPatient.Active := True;
    QueryPatient.Post;
    EditFieldClear;

end;




end.
