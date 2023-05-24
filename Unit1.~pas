unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnproses: TButton;
    Button2: TButton;
    edtnilai1: TEdit;
    edtnilai2: TEdit;
    edthsl: TEdit;
    GroupBox1: TGroupBox;
    hslkali: TEdit;
    hslbagi: TEdit;
    hslkurang: TEdit;
    hsltambah: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    btnkali: TButton;
    btnbagi: TButton;
    btnkurang: TButton;
    btntambah: TButton;
    procedure btnprosesClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnprosesClick(Sender: TObject);
begin
  hslkali.Text:=IntToStr(StrToInt(edtnilai1.text)*(strtoint(edtnilai2.Text)));
  hslbagi.Text:=FloatToStr(StrToFloat(edtnilai1.text)/(strtoFloat(edtnilai2.Text)));
  hslkurang.Text:=IntToStr(StrToInt(edtnilai1.text)-(strtoint(edtnilai2.Text)));
  hsltambah.Text:=IntToStr(StrToInt(edtnilai1.text)+(strtoint(edtnilai2.Text)));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
