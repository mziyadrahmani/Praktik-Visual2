unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Grids;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    StringGrid1: TStringGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Chart1: TChart;
    Series1: TPieSeries;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AutoSizeCol(Grid: TStringGrid; Column: integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}


procedure TForm4.AutoSizeCol(Grid: TStringGrid; Column: integer);
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



procedure TForm4.Button1Click(Sender: TObject);
var
  RowIndex,i: Integer;
begin
  if (Edit1.Text <> '') and (Edit2.Text <> '') and (ComboBox1.Text <> '') then
  begin
    RowIndex := StringGrid1.RowCount; // Get the current row count
    StringGrid1.RowCount := RowIndex + 1; // Increase the row count by 1
    StringGrid1.FixedCols := 1;
    StringGrid1.FixedRows := 1;
  
    StringGrid1.Cells[0, RowIndex] := IntToStr(RowIndex);
    StringGrid1.Cells[1, RowIndex] := Edit1.Text;
    StringGrid1.Cells[2, RowIndex] := Edit2.Text;
    StringGrid1.Cells[3, RowIndex] := ComboBox1.Text;

    // Clear the input fields
    Edit1.Text := '';
    Edit2.Text := '';
    ComboBox1.ItemIndex := -1;
    
    for i := 0 to StringGrid1.ColCount - 1 do
      AutoSizeCol(StringGrid1, 0);
  end;
end;








procedure TForm4.Button2Click(Sender: TObject);
var i:Integer;
begin
for i:=1 to StringGrid1.rowcount-1 do
begin
Chart1.Series[0].Add(StrToFloat(StringGrid1.Cells[1,i]),StringGrid1.Cells[2,i]);
end;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
     StringGrid1.Cells[0,0]:='NO';
     StringGrid1.Cells[1,0]:='NIM';
     StringGrid1.Cells[2,0]:='NAMA MAHASISWA';
     StringGrid1.Cells[3,0]:='TAHUN ANGKATAN';
end;

end.
