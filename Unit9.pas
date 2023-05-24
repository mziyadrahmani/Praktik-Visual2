unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls;

type
  TForm9 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure bersih;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  updt : String;

implementation

uses
  Unit8, ADODB, DB;

{$R *.dfm}

procedure TForm9.bersih;
begin
Edit1.Text:='00:00';
Edit2.Text:='00:00';
ComboBox1.Text:='--Pilih Hari--';
Edit3.Text:='-';
Edit4.Text:='-';
Edit5.Text:='-';
Edit6.Text:='0';

DBGrid1.columns[0].Width:=20;
DBGrid1.columns[1].Width:=50;
DBGrid1.columns[2].Width:=50;
DBGrid1.Columns[3].Width:=90;
DBGrid1.columns[4].Width:=60;
DBGrid1.Columns[5].Width:=60;
DBGrid1.Columns[6].Width:=90;
DBGrid1.Columns[7].Width:=80;
Button1.Enabled:= True;
Button2.Enabled:= False;
Button3.Enabled:= False;
end;

procedure TForm9.Button1Click(Sender: TObject);
begin
adotable1.insert;
end;

procedure TForm9.FormShow(Sender: TObject);
begin
bersih;
end;

procedure TForm9.DBGrid1CellClick(Column: TColumn);

begin
try
  updt := Form8.qry1.Fields[0].AsString;
  Edit1.Text := Form8.qry1.Fields[1].AsString;
  Edit2.Text := Form8.qry1.Fields[2].AsString;
  ComboBox1.Text := Form8.qry1.Fields[3].AsString;
  DateTimePicker1.Date := Form8.qry1.Fields[4].AsDateTime;
  Edit3.Text := Form8.qry1.Fields[5].AsString;
  Edit4.Text := Form8.qry1.Fields[6].AsString;
  Edit5.Text := Form8.qry1.Fields[7].AsString;
  Edit6.Text := Form8.qry1.Fields[8].AsString;
  Button1.Enabled := False;
  Button2.Enabled := True;
  Button3.Enabled := True;
except
end;
end;


procedure TForm9.Button2Click(Sender: TObject);
begin
  if (Edit1.Text = '') or (Edit1.Text = '00:00') or (Edit2.Text = '') or (Edit2.Text = '00:00') then
  begin
    ShowMessage('Data Belum Diisi Dengan Benar');
  end
  else if (ComboBox1.Text = '') or (ComboBox1.Text = '--Pilih Hari--') then
  begin
    ShowMessage('Data Belum Diisi Dengan Benar');
  end
  else if (Edit3.Text = '') or (Edit3.Text = '-') or (Edit4.Text = '') or (Edit4.Text = '-') then
  begin
    ShowMessage('Inputan Ruangan atau Matakuliah Belum Diisi');
  end
  else if (Edit5.Text = '') or (Edit5.Text = '-') or (Edit6.Text = '') or (Edit6.Text = '0') then
  begin
    ShowMessage('Inputan Kelas atau Total Hadir Masih Belum Selesai');
  end
  else if (Edit1.Text= Form8.qry1.Fields[1].AsString) and (ComboBox1.Text=Form8.qry1.Fields[2].AsString) then
  begin
    ShowMessage('Data Tidak Ada Perubahan');
  end
  else
  begin
    with Form8.qry1 do
    begin
      SQL.Clear;
      SQL.Add('UPDATE jadwal_table SET jam_mulai = "' + Edit1.Text + '", jam_akhir = "' + Edit2.Text + '", ' +'hari = "' + ComboBox1.Text + '", tanggal = "' + FormatDateTime('dd-mm-yyyy', DateTimePicker1.Date) + '", ' +'ruang = "' + Edit3.Text + '", matkul = "' + Edit4.Text + '", kelas = "' + Edit5.Text + '", ' +'kehadiran_total = "' + Edit6.Text + '" WHERE No = ' + updt);
      ExecSQL;

      SQL.Clear;
      SQL.Add('SELECT * FROM jadwal_table');
      Open;
      ShowMessage('Data Berhasil Di Update');
      bersih;
    end;
  end;
end;

procedure TForm9.Button4Click(Sender: TObject);
begin
if (Edit1.Text = '') or (Edit1.Text = '00:00') or (Edit2.Text = '') or (Edit2.Text = '00:00') then
  begin
    ShowMessage('Data Belum Diisi Dengan Benar');
  end
  else if (ComboBox1.Text = '') or (ComboBox1.Text = '--Pilih Hari--') then
  begin
    ShowMessage('Data Belum Diisi Dengan Benar');
  end
  else if (Edit3.Text = '') or (Edit3.Text = '-') or (Edit4.Text = '') or (Edit4.Text = '-') then
  begin
    ShowMessage('Inputan Ruangan atau Matakuliah Belum Diisi');
  end
  else if (Edit5.Text = '') or (Edit5.Text = '-') or (Edit6.Text = '') or (Edit6.Text = '0') then
  begin
    ShowMessage('Inputan Kelas atau Total Hadir Masih Belum Selesai');
  end
  else if (Edit1.Text= Form8.qry1.Fields[1].AsString) and (ComboBox1.Text=Form8.qry1.Fields[2].AsString) then
  begin
    ShowMessage('Data Tidak Ada Perubahan');
  end
  else
  begin
  if MessageDlg('Apakah Yakin Menghapus Data ini?',mtWarning,[mbYes,mbNo],0)=mryes then
  Begin
      with Form8.qry1 do
      begin
          SQL.Clear;
          SQL.Add('DELETE FROM jadwal_table WHERE No = ' + updt);
          ExecSQL;

          SQL.Clear;
          SQL.Add('SELECT * FROM jadwal_table');
          Open;
          ShowMessage('Data Berhasil Di Hapus');
          bersih;
      end;
  end else
  begin
      ShowMessage('Data Batal Di Hapus');
  end;
  end;
end;

procedure TForm9.Button3Click(Sender: TObject);
begin
bersih;
end;

end.
