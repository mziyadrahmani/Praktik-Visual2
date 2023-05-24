unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button3Click(Sender: TObject);
begin
Application.Terminate;

end;

procedure TForm2.Button1Click(Sender: TObject);
var
    nil1,nil2,nil3,nil4,nil5 ,hasil :real ;
    b1,b2,b3,b4,b5 : real  ;
    grade, ket : string  ;
begin
    nil1 := strtofloat(Edit1.Text);
    nil2 := strtofloat(Edit2.Text);
    nil3 := strtofloat(Edit3.Text);
    nil4 := strtofloat(Edit4.Text);
    nil5 := strtofloat(Edit5.Text);
    b1 := strtofloat(Edit6.Text)/100;
    b2 := strtofloat(Edit7.Text)/100;
    b3 := strtofloat(Edit8.Text)/100;
    b4 := strtofloat(Edit9.Text)/100;
    b5 := strtofloat(Edit10.Text)/100;
    hasil := nil1*b1 + nil2*b2 + nil3*b3 + nil4*b4 + nil5*b5;
    
    if (hasil >= 80) then
      grade:='A'
    else
    if (hasil >= 70) then
      grade :='B'
    else
    if (hasil >= 60) then
      grade := 'C'
    else
    if (hasil >= 50) then
      grade :='D'
    else
      grade :='E';
    
    if (hasil >=60) then
      ket := 'LULUS'
    else 
    if (hasil <=59) then
      ket := 'TIDAK LULUS';
    Edit11.Text := floattostr(hasil);
    Edit12.Text := grade;
    Edit13.Text := ket;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
    Edit1.Text := '';
    Edit2.Text := '';
    Edit3.Text := '';
    Edit4.Text := '';
    Edit5.Text := '';
    Edit11.Text := '';
    Edit12.Text := '';
    Edit13.Text := '';
end;

end.
