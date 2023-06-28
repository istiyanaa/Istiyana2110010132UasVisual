unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls,
  Buttons;

type
  TForm7 = class(TForm)
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
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    btn5: TBitBtn;
    btn6: TBitBtn;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    procedure btn1Click(Sender: TObject);
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure bersih;
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  id: String;
implementation

{$R *.dfm}

procedure TForm7.btn1Click(Sender: TObject);
begin
  bersih;
  btn1.Enabled:= False;
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= True;
  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  edt4.Enabled:= True;
  edt5.Enabled:= True;
end;

procedure TForm7.posisiawal;
begin
bersih;
  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= False;
  edt1.Enabled:= False;
  edt2.Enabled:= False;
  edt3.Enabled:= False;
  edt4.Enabled:= False;
  edt5.Enabled:= False;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm7.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
end;

procedure TForm7.btn2Click(Sender: TObject);
begin
if edt1.Text = '' then
  begin
    ShowMessage('Id User tidak boleh kosong!');
  end
  else if edt2.Text = '' then
  begin
    ShowMessage('Username tidak boleh kosong!');
  end
  else if edt3.Text = '' then
  begin
    ShowMessage('Password tidak boleh kosong!');
  end
  else if edt4.Text = '' then
  begin
    ShowMessage('Level tidak boleh kosong!');
  end
  else if edt5.Text = '' then
  begin
    ShowMessage('Status tidak boleh kosong!');
  end
  else
  begin
    zqry1.SQL.Clear; //simpan
    zqry1.SQL.Add('INSERT INTO tabel_user (Id_User, Username, Password, Level, Status) ' +
                  'VALUES ("'+edt1.Text+'", "'+edt2.Text+'", "'+edt3.Text+'", "'+edt4.Text+'", "'+edt5.Text+'")');
    zqry1.ExecSQL;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT * FROM tabel_user');
    zqry1.Open;
    ShowMessage('Data berhasil disimpan!');
    posisiawal;
  end;
end;

procedure TForm7.btn4Click(Sender: TObject);
var
  idUser: string;
begin
  idUser := zqry1.FieldByName('id_user').AsString;

  if MessageDlg('Apakah Anda yakin menghapus data ini?', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('DELETE FROM tabel_user WHERE id_user = "' + idUser + '"');
    zqry1.ExecSQL;
    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT * FROM tabel_user');
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

procedure TForm7.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm7.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text := zqry1.FieldByName('id_user').AsString;
  edt2.Text := zqry1.FieldByName('username').AsString;
  edt3.Text := zqry1.FieldByName('password').AsString;
  edt4.Text := zqry1.FieldByName('level').AsString;
  edt5.Text := zqry1.FieldByName('status').AsString;

  edt1.Enabled := True;
  edt2.Enabled := True;
  edt3.Enabled := True;
  edt4.Enabled := True;
  edt5.Enabled := True;

  btn1.Enabled := False;
  btn2.Enabled := True;
  btn3.Enabled := True;
  btn4.Enabled := True;
  btn5.Enabled := True;
end;

procedure TForm7.btn3Click(Sender: TObject);
var
  idUser: string;
begin
  if (edt1.Text = '') or (edt2.Text = '') or (edt3.Text = '') or (edt4.Text = '') or (edt5.Text = '') then
  begin
    ShowMessage('Semua input harus diisi!');
  end
  else
  begin
    idUser := zqry1.FieldByName('Id_User').AsString;
    if edt1.Text = idUser then
    begin
      zqry1.Edit;
      zqry1.FieldByName('id_user').AsString := edt1.Text;
      zqry1.FieldByName('username').AsString := edt2.Text;
      zqry1.FieldByName('Password').AsString := edt3.Text;
      zqry1.FieldByName('Level').AsString := edt4.Text;
      zqry1.FieldByName('Status').AsString := edt5.Text;
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

procedure TForm7.btn6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
