unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, TeEngine, Series, Grids, ExtCtrls,
  TeeProcs, Chart, DBGrids, frxClass, frxDBSet;

type
  TForm8 = class(TForm)
    con1: TADOConnection;
    qry1: TADOQuery;
    ds1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Chart1: TChart;
    Series1: TBarSeries;
    DBGrid1: TDBGrid;
    qry2: TADOQuery;
    frxjadwal: TfrxReport;
    frxdetailjadwal: TfrxReport;
    frxDBJadwal: TfrxDBDataset;
    frxDBdetailjadwal: TfrxDBDataset;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    //procedure FormCreate(Sender: TObject);
    procedure frxjadwalClickObject(View: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
    procedure Button4Click(Sender: TObject);
    //procedure StringGrid1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit9;

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
var i:Integer;
begin
qry1.SQL.Clear;
qry1.SQL.Add('select Count(no)as jumlah_kelas,sum(kehadiran_total) as total_siswa,kelas as nama_kelas from jadwal_table group by kelas');
qry1.Open;
for i:=1 to qry1.RecordCount do
begin
Chart1.Series[0].Add(StrToInt(qry1.fieldbyname('total_siswa').AsString),qry1.Fields[2].AsString);
qry1.Next;
end;end;


procedure TForm8.Button3Click(Sender: TObject);
begin
qry1.SQL.Clear;
qry1.SQL.Add('select * from jadwal_table');
qry1.Open;
DBGrid1.columns[0].Width:=30;
DBGrid1.Columns[3].Width:=90;
DBGrid1.Columns[5].Width:=50;
DBGrid1.Columns[6].Width:=110;
DBGrid1.Columns[7].Width:=90;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
Chart1.Title.Text.Add('GRAFIK KEHADIRAN PRAKTIKUM SISWA');
DBGrid1.columns[0].Width:=30;
DBGrid1.Columns[3].Width:=90;
DBGrid1.Columns[5].Width:=50;
DBGrid1.Columns[6].Width:=110;
DBGrid1.Columns[7].Width:=90;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
frxjadwal.ShowReport();
end;

procedure TForm8.frxjadwalClickObject(View: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
begin
     if View.Name = 'Memo7' then
     begin
          qry2.SQL.Clear;
          qry2.SQL.Add('select * from jadwal_table where kelas=''' + view.TagStr + '''');
          qry2.Open;

          frxdetailjadwal.ShowReport();
     end;
end;

procedure TForm8.Button4Click(Sender: TObject);
begin
Form9.ShowModal;
end;

end.


