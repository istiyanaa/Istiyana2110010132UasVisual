unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frxClass, frxDBSet, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Grids,
  DBGrids, Buttons;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    edt9: TEdit;
    edt10: TEdit;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    edt11: TEdit;
    edt12: TEdit;
    edt13: TEdit;
    edt14: TEdit;
    edt15: TEdit;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    btn5: TBitBtn;
    btn6: TBitBtn;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    con1: TZConnection;
    zqry1: TZQuery;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    procedure btn1Click(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.btn1Click(Sender: TObject);
begin
bersih;
  btn1.Enabled := False;
  btn2.Enabled := True;
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn5.Enabled := True;
  btn6.Enabled := True;
  edt1.Enabled := True;
  edt2.Enabled := True;
  edt3.Enabled := True;
  edt4.Enabled := True;
  edt5.Enabled := True;
  edt6.Enabled := True;
  edt7.Enabled := True;
  edt8.Enabled := True;
  edt9.Enabled := True;
  edt10.Enabled := True;
  edt11.Enabled := True;
  edt12.Enabled := True;
  edt13.Enabled := True;
  edt14.Enabled := True;
  edt15.Enabled := True;
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
if edt1.Text = '' then
  begin
    ShowMessage('ID Siswa tidak boleh kosong!');
    Exit;
  end
  else if edt2.Text = '' then
  begin
    ShowMessage('NIS tidak boleh kosong!');
    Exit;
  end
  else if edt3.Text = '' then
  begin
    ShowMessage('NISN tidak boleh kosong!');
    Exit;
  end
  else if edt4.Text = '' then
  begin
    ShowMessage('Nama siswa tidak boleh kosong!');
    Exit;
  end
  else if edt5.Text = '' then
  begin
    ShowMessage('NIK tidak boleh kosong!');
    Exit;
  end
  else if edt6.Text = '' then
  begin
    ShowMessage('Tempat lahir tidak boleh kosong!');
    Exit;
  end
  else if edt7.Text = '' then
  begin
    ShowMessage('Tanggal lahir tidak boleh kosong!');
    Exit;
  end
  else if edt8.Text = '' then
  begin
    ShowMessage('Jenis kelamin tidak boleh kosong!');
    Exit;
  end
  else if edt9.Text = '' then
  begin
    ShowMessage('Alamat tidak boleh kosong!');
    Exit;
  end
  else if edt10.Text = '' then
  begin
    ShowMessage('Nomor telepon tidak boleh kosong!');
    Exit;
  end
  else if edt11.Text = '' then
  begin
    ShowMessage('Nomor HP tidak boleh kosong!');
    Exit;
  end
  else if edt12.Text = '' then
  begin
    ShowMessage('Status tidak boleh kosong!');
    Exit;
  end
  else if edt13.Text = '' then
  begin
    ShowMessage('Tingkat kelas tidak boleh kosong!');
    Exit;
  end
  else if edt14.Text = '' then
  begin
    ShowMessage('Jurusan tidak boleh kosong!');
    Exit;
  end
  else if edt15.Text = '' then
  begin
    ShowMessage('ID Wali tidak boleh kosong!');
  end
  else
  begin
    zqry1.SQL.Clear; //simpan
    zqry1.SQL.Add('insert into tabel_siswa values("'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'","'+edt9.Text+'","'+edt10.Text+'","'+edt11.Text+'","'+edt12.Text+'","'+edt13.Text+'","'+edt14.Text+'","'+edt15.Text+'")');
    zqry1.ExecSQL ;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from tabel_siswa');
    zqry1.Open;
    ShowMessage('Data berhasil disimpan!');
    posisiawal;
  end;
end;

procedure TForm6.btn3Click(Sender: TObject);
var
  idSiswa: string;
begin
  if (edt1.Text = '') or (edt2.Text = '') or (edt3.Text = '') or (edt4.Text = '') or (edt5.Text = '') or
    (edt6.Text = '') or (edt7.Text = '') or (edt8.Text = '') or (edt9.Text = '') or (edt10.Text = '') or
    (edt11.Text = '') or (edt12.Text = '') or (edt13.Text = '') or (edt14.Text = '') or (edt15.Text = '') then
  begin
    ShowMessage('Semua input harus diisi!');
  end
  else
  begin
    idSiswa := zqry1.FieldByName('id_siswa').AsString;
    if edt1.Text = idSiswa then
    begin
      zqry1.Edit;
      zqry1.FieldByName('id_siswa').AsString := edt1.Text;
      zqry1.FieldByName('tempat_lahir').AsString := edt2.Text;
      zqry1.FieldByName('nis').AsString := edt3.Text;
      zqry1.FieldByName('tanggal_lahir').AsDateTime := StrToDate(edt4.Text);
      zqry1.FieldByName('status').AsString := edt5.Text;
      zqry1.FieldByName('nisn').AsString := edt6.Text;
      zqry1.FieldByName('jenis_kelamin').AsString := edt7.Text;
      zqry1.FieldByName('tingkat_kelas').AsString := edt8.Text;
      zqry1.FieldByName('nama_siswa').AsString := edt9.Text;
      zqry1.FieldByName('nik').AsString := edt10.Text;
      zqry1.FieldByName('alamat').AsString := edt11.Text;
      zqry1.FieldByName('telp').AsString := edt12.Text;
      zqry1.FieldByName('hp').AsString := edt13.Text;
      zqry1.FieldByName('jurusan').AsString := edt14.Text;
      zqry1.FieldByName('id_wali').AsString := edt15.Text;
      zqry1.Post;
      ShowMessage('Data berhasil diperbarui!');
      posisiawal;
    end
    else
    begin
      ShowMessage('Data tidak ada perubahan');
      posisiawal;
    end;
  end;
end;

procedure TForm6.btn4Click(Sender: TObject);
var
  idSiswa: string;
begin
  idSiswa := zqry1.FieldByName('id_siswa').AsString;

  if MessageDlg('Apakah Anda yakin menghapus data ini?', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('DELETE FROM tabel_siswa WHERE id_siswa = "' + idSiswa + '"');
    zqry1.ExecSQL;
    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT * FROM tabel_siswa');
    zqry1.Open;
    ShowMessage('Data berhasil dihapus');
    posisiawal;
  end
  else
  begin
    ShowMessage('Penghapusan data dibatalkan');
    posisiawal;
  end;
end;

procedure TForm6.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.btn6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

procedure TForm6.posisiawal;
begin
bersih;
  btn1.Enabled := True;
  btn2.Enabled := False;
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn5.Enabled := False;
  btn6.Enabled := True;
  edt1.Enabled := False;
  edt2.Enabled := False;
  edt3.Enabled := False;
  edt4.Enabled := False;
  edt5.Enabled := False;
  edt6.Enabled := False;
  edt7.Enabled := False;
  edt8.Enabled := False;
  edt9.Enabled := False;
  edt10.Enabled := False;
end;

procedure TForm6.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  edt6.Clear;
  edt7.Clear;
  edt8.Clear;
  edt9.Clear;
  edt10.Clear;
  edt11.Clear;
  edt12.Clear;
  edt13.Clear;
  edt14.Clear;
  edt15.Clear;
end;

procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text := zqry1.Fields[0].AsString;
  edt2.Text := zqry1.Fields[1].AsString;
  edt3.Text := zqry1.Fields[2].AsString;
  edt4.Text := zqry1.Fields[3].AsString;
  edt5.Text := zqry1.Fields[4].AsString;
  edt6.Text := zqry1.Fields[5].AsString;
  edt7.Text := zqry1.Fields[6].AsString;
  edt8.Text := zqry1.Fields[7].AsString;
  edt9.Text := zqry1.Fields[8].AsString;
  edt10.Text := zqry1.Fields[9].AsString;
  edt11.Text := zqry1.Fields[10].AsString;
  edt12.Text := zqry1.Fields[11].AsString;
  edt13.Text := zqry1.Fields[12].AsString;
  edt14.Text := zqry1.Fields[13].AsString;
  edt15.Text := zqry1.Fields[14].AsString;
  btn1.Enabled := False;
  btn2.Enabled := False;
  btn3.Enabled := True;
  btn4.Enabled := True;
  btn5.Enabled := True;
  btn6.Enabled := True;
  edt1.Enabled := True;
  edt2.Enabled := True;
  edt3.Enabled := True;
  edt4.Enabled := True;
  edt5.Enabled := True;
  edt6.Enabled := True;
  edt7.Enabled := True;
  edt8.Enabled := True;
  edt9.Enabled := True;
  edt10.Enabled := True;
  edt11.Enabled := True;
  edt12.Enabled := True;
  edt13.Enabled := True;
  edt14.Enabled := True;
  edt15.Enabled := True;
end;

end.
