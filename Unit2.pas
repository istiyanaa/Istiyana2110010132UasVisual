unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, frxClass, frxDBSet, Grids, DBGrids, StdCtrls,
  Buttons;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    btn5: TBitBtn;
    btn6: TBitBtn;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    edt3: TEdit;
    zqry1: TZQuery;
    ds1: TDataSource;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure Bersih;
    procedure PosisiAwal;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Bersih;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
end;

procedure TForm2.PosisiAwal;
begin
  btn1.Enabled := True;
  btn2.Enabled := False;
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn5.Enabled := False;
  edt1.Enabled := False;
  edt2.Enabled := False;
  edt3.Enabled := False;
end;

procedure TForm2.btn1Click(Sender: TObject);
begin
  Bersih;
  btn1.Enabled := False;
  btn2.Enabled := True;
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn5.Enabled := True;
  edt1.Enabled := True;
  edt2.Enabled := True;
  edt3.Enabled := True;
end;

procedure TForm2.btn2Click(Sender: TObject);
var
  idKelas: string;
begin
  if edt1.Text = '' then
  begin
    ShowMessage('ID KELAS TIDAK BOLEH KOSONG!');
  end
  else if edt2.Text = '' then
  begin
    ShowMessage('NAMA TIDAK BOLEH KOSONG!');
  end
  else if edt3.Text = '' then
  begin
    ShowMessage('JURUSAN TIDAK BOLEH KOSONG!');
  end
  else
  begin
    idKelas := edt1.Text;
    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT id_kelas FROM tabel_kelas WHERE id_kelas = :id_kelas');
    zqry1.ParamByName('id_kelas').AsString := idKelas;
    zqry1.Open;
    
    if zqry1.IsEmpty then
    begin
      zqry1.Close;
      zqry1.SQL.Clear;
      zqry1.SQL.Add('INSERT INTO tabel_kelas (id_kelas, nama, jurusan) VALUES (:id_kelas, :nama, :jurusan)');
      zqry1.ParamByName('id_kelas').AsString := idKelas;
      zqry1.ParamByName('nama').AsString := edt2.Text;
      zqry1.ParamByName('jurusan').AsString := edt3.Text;
      zqry1.ExecSQL;

      ShowMessage('DATA BERHASIL DISIMPAN!');
      PosisiAwal;
    end
    else
    begin
      ShowMessage('ID KELAS sudah ada dalam database!');
      zqry1.Close;
    end;
  end;
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
  if (edt1.Text = '') or (edt2.Text = '') or (edt3.Text = '') then
  begin
    ShowMessage('Semua input harus diisi!');
  end
  else
  begin
    zqry1.Open; // Buka dataset
    zqry1.Edit;
    zqry1.FieldByName('id_kelas').AsString := edt1.Text;
    zqry1.FieldByName('nama').AsString := edt2.Text;
    zqry1.FieldByName('jurusan').AsString := edt3.Text;
    zqry1.Post;

    ShowMessage('Data berhasil diperbarui!');
    zqry1.Refresh;
    PosisiAwal;
  end;
end;

procedure TForm2.btn4Click(Sender: TObject);
var
  idKelas: string;
begin
  idKelas := zqry1.FieldByName('id_Kelas').AsString;

  if MessageDlg('Apakah Anda yakin menghapus data ini?', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    zqry1.Open; // Buka dataset
    zqry1.SQL.Clear;
    zqry1.SQL.Add('DELETE FROM tabel_kelas WHERE id_kelas = "' + idKelas + '"');
    zqry1.ExecSQL;
    ShowMessage('Data berhasil dihapus');
    PosisiAwal;
  end
  else
  begin
    ShowMessage('Penghapusan data dibatalkan');
    PosisiAwal;
  end;
end;

procedure TForm2.btn5Click(Sender: TObject);
begin
  Bersih;
  PosisiAwal;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  PosisiAwal;
end;

end.
