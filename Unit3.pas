unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TMain = class(TForm)
    MainMenu1: TMainMenu;
    PRAKTEK1: TMenuItem;
    PRAKTEK11: TMenuItem;
    NilaiMahasiswa1: TMenuItem;
    Mandiri31: TMenuItem;
    Mandiri41: TMenuItem;
    ambah1: TMenuItem;
    ContohKondisional1: TMenuItem;
    abelDatabase1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure PRAKTEK11Click(Sender: TObject);
    procedure NilaiMahasiswa1Click(Sender: TObject);
    procedure Mandiri31Click(Sender: TObject);
    procedure Mandiri41Click(Sender: TObject);
    procedure ambah1Click(Sender: TObject);
    procedure ContohKondisional1Click(Sender: TObject);
    procedure abelDatabase1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

uses Unit1, Unit2, Unit4, Unit5, Unit6, Unit7, Unit8;

{$R *.dfm}

procedure TMain.Button1Click(Sender: TObject);
begin
     Form1.ShowModal;
end;

procedure TMain.Button2Click(Sender: TObject);
begin
     Form2.ShowModal;
end;

procedure TMain.Button3Click(Sender: TObject);
begin
     Form5.ShowModal;
end;

procedure TMain.PRAKTEK11Click(Sender: TObject);
begin
    Form1.ShowModal;
end;

procedure TMain.NilaiMahasiswa1Click(Sender: TObject);
begin
Form2.ShowModal;
end;

procedure TMain.Mandiri31Click(Sender: TObject);
begin
     Form4.ShowModal;
end;

procedure TMain.Mandiri41Click(Sender: TObject);
begin
Form5.ShowModal;
end;

procedure TMain.ambah1Click(Sender: TObject);
begin
Form6.ShowModal;
end;

procedure TMain.ContohKondisional1Click(Sender: TObject);
begin
Form7.ShowModal;
end;

procedure TMain.abelDatabase1Click(Sender: TObject);
begin
Form8.ShowModal;
end;

end.
