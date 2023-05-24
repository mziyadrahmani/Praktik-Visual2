unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Grids;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    StringGrid1: TStringGrid;
    Edit2: TEdit;
    ComboBox2: TComboBox;
    Chart1: TChart;
    Series1: TPieSeries;
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure AutoSizeCol(Grid: TStringGrid; Column: integer);
    procedure charadd;
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}
procedure TForm5.AutoSizeCol(Grid: TStringGrid; Column: integer);
var
  i, W, WMax: integer;
begin
  WMax := 0; 
  for i := 0 to (Grid.RowCount - 1) do begin
    W := Grid.Canvas.TextWidth(Grid.Cells[Column, i]);
    if W > WMax then 
      WMax := W;
  end;
  Grid.ColWidths[Column] := WMax + 5;
end;



procedure TForm5.Button1Click(Sender: TObject);
var
  RowIndex,i: Integer;
begin
  begin
  StringGrid1.RowCount := StringGrid1.RowCount+1;
  StringGrid1.Cells[0,StringGrid1.RowCount -1] := IntToStr(StringGrid1.RowCount -1);
  StringGrid1.Cells[1,StringGrid1.RowCount -1] := Edit2.Text;
  StringGrid1.Cells[2,StringGrid1.RowCount -1] := ComboBox2.Text;
  StringGrid1.Cells[3,StringGrid1.RowCount -1] := ComboBox1.Text;
  charadd;//procedure
  end;
end;

procedure TForm5.Button2Click(Sender: TObject);
var a,b:Integer;
begin
a:=StringGrid1.Selection.Bottom - StringGrid1.Selection.Top+1;
for b:=StringGrid1.Selection.Bottom +1 to StringGrid1.rowcount-1 do
StringGrid1.Rows[b-a]:=StringGrid1.Rows[b];

StringGrid1.RowCount:=StringGrid1.RowCount-1;
charadd; //procedure
end;

procedure TForm5.charadd;
var i:Integer;
begin
Chart1.Series[0].Clear; //membersihkan tampilan char
for i:=1 to StringGrid1.rowcount-1 do
begin
Chart1.Series[0].Add(StrToFloat(StringGrid1.Cells[1,i]),StringGrid1.Cells[2,i]);
end;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
     StringGrid1.Cells[0,0]:='NO';
     StringGrid1.Cells[1,0]:='NIM';
     StringGrid1.Cells[2,0]:='NAMA MAHASISWA';
     StringGrid1.Cells[3,0]:='TAHUN ANGKATAN';
end;
procedure TForm5.FormShow(Sender: TObject);
begin
StringGrid1.RowCount:=1;
StringGrid1.ColCount:=4;
StringGrid1.Cells[0,0]:='NO';
StringGrid1.Cells[1,0]:='JUMLAH TERDAFTAR';
StringGrid1.Cells[2,0]:='FAKULTAS';
StringGrid1.Cells[3,0]:='TAHUN ANGKATAN';
StringGrid1.ColWidths[0]:=20;
StringGrid1.ColWidths[1]:=70;
StringGrid1.ColWidths[2]:=170;
StringGrid1.ColWidths[3]:=100;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin

StringGrid1.RowCount:= StringGrid1.RowCount-
MAX_PATH; //hapus isi data stringgrid all

charadd;
end;


end.
