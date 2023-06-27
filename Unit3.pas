unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls,
  Buttons;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    edt7: TEdit;
    edt8: TEdit;
    edt9: TEdit;
    edt10: TEdit;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    btn5: TBitBtn;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    ds1: TDataSource;
    btn6: TBitBtn;
    procedure bersih;
    procedure posisiawal;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.bersih;
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
end;

procedure TForm3.posisiawal;
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

procedure TForm3.btn1Click(Sender: TObject);
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
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
ShowMessage('ID ORANG TUA TIDAK BOLEH KOSONG!');
end else
if edt2.Text ='' then
begin
ShowMessage('NIK TIDAK BOLEH KOSONG!');
end else
if edt3.Text ='' then
begin
ShowMessage('NAMA TIDAK BOLEH KOSONG!');
end else
if edt4.Text ='' then
begin
ShowMessage('PENDIDIKAN TIDAK BOLEH KOSONG!');
end else
if edt5.Text ='' then
begin
ShowMessage('PEKERJAAN TIDAK BOLEH KOSONG!');
end else
if edt6.Text ='' then
begin
ShowMessage('TELEPHONE TIDAK BOLEH KOSONG!');
end else
if edt7.Text ='' then
begin
ShowMessage('ALAMAT TIDAK BOLEH KOSONG!');
end else
if edt8.Text ='' then
begin
ShowMessage('JENIS KELAMIN TIDAK BOLEH KOSONG!');
end else
if edt9.Text ='' then
begin
ShowMessage('AGAMA TIDAK BOLEH KOSONG!');
end else
if edt10.Text ='' then
begin
ShowMessage('STATUS TIDAK BOLEH KOSONG!');
end else
begin
zqry1.SQL.Clear; //simpan
zqry1.SQL.Add('insert into tabel_otang_tua values("'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'","'+edt9.Text+'","'+edt10.Text+'")');
zqry1.ExecSQL ;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_otang_tua');
zqry1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm3.btn3Click(Sender: TObject);
var
  idOrtu: string;
begin
  if (edt1.Text = '') or (edt2.Text = '') or (edt3.Text = '') or (edt4.Text = '') or (edt5.Text = '') or (edt6.Text = '') or (edt7.Text = '') or (edt8.Text = '') or (edt9.Text = '') or (edt10.Text = '')then
  begin
    ShowMessage('Semua input harus diisi!');
  end
  else
  begin
    idOrtu := zqry1.FieldByName('id_ortu').AsString;
    if edt1.Text = idOrtu then
    begin
      zqry1.Edit;
      zqry1.FieldByName('id_ortu').AsString := edt1.Text;
      zqry1.FieldByName('nik').AsString := edt2.Text;
      zqry1.FieldByName('nama').AsString := edt3.Text;
      zqry1.FieldByName('pendidikan').AsString := edt4.Text;
      zqry1.FieldByName('pekerjaan').AsString := edt5.Text;
      zqry1.FieldByName('telp').AsString := edt6.Text;
      zqry1.FieldByName('alamat').AsString := edt7.Text;
      zqry1.FieldByName('jenis_kelamin').AsString := edt8.Text;
      zqry1.FieldByName('agama').AsString := edt9.Text;
      zqry1.FieldByName('status').AsString := edt10.Text;
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

procedure TForm3.btn4Click(Sender: TObject);
var
  idOrtu: string;
begin
  idOrtu := zqry1.FieldByName('id_ortu').AsString;

  if MessageDlg('Apakah Anda yakin menghapus data ini?', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('DELETE FROM tabel_otang_tua WHERE id_ortu = "' + idOrtu + '"');
    zqry1.ExecSQL;
    ShowMessage('Data berhasil dihapus');
    posisiawal;
  end
  else
  begin
    ShowMessage('Penghapusan data dibatalkan');
    posisiawal;
  end;
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text := zqry1.FieldByName('id_ortu').AsString;
  edt2.Text := zqry1.FieldByName('nik').AsString;
  edt3.Text := zqry1.FieldByName('nama').AsString;
  edt4.Text := zqry1.FieldByName('pendidikan').AsString;
  edt5.Text := zqry1.FieldByName('pekerjaan').AsString;
  edt6.Text := zqry1.FieldByName('telp').AsString;
  edt7.Text := zqry1.FieldByName('alamat').AsString;
  edt8.Text := zqry1.FieldByName('jenis_kelamin').AsString;
  edt9.Text := zqry1.FieldByName('agama').AsString;
  edt10.Text := zqry1.FieldByName('status').AsString;
  btn1.Enabled := False;
  btn2.Enabled := False;
  btn3.Enabled := True;
  btn4.Enabled := True;
  btn5.Enabled := True;
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
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  con1.Connected := True;
  zqry1.Active := True;
  posisiawal;
end;

procedure TForm3.btn6Click(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm3.btn5Click(Sender: TObject);
begin
posisiawal;
end;

end.

