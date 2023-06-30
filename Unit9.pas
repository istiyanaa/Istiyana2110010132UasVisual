unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm9 = class(TForm)
    mm1: TMainMenu;
    mniFILE1: TMenuItem;
    DATAHUBUNGAN1: TMenuItem;
    mniDATAKELAS1: TMenuItem;
    mniDATAORANGTUA1: TMenuItem;
    mniDATAPOIN1: TMenuItem;
    mniDATASEMSESTER1: TMenuItem;
    mniDATASISWA1: TMenuItem;
    mniDATAUSER1: TMenuItem;
    mniDATAWALIKELAS1: TMenuItem;
    procedure DATAHUBUNGAN1Click(Sender: TObject);
    procedure mniDATAKELAS1Click(Sender: TObject);
    procedure mniDATAORANGTUA1Click(Sender: TObject);
    procedure mniDATAPOIN1Click(Sender: TObject);
    procedure mniDATASEMSESTER1Click(Sender: TObject);
    procedure mniDATASISWA1Click(Sender: TObject);
    procedure mniDATAUSER1Click(Sender: TObject);
    procedure mniDATAWALIKELAS1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8;

{$R *.dfm}

procedure TForm9.DATAHUBUNGAN1Click(Sender: TObject);
begin
Form1.ShowModal;
end;

procedure TForm9.mniDATAKELAS1Click(Sender: TObject);
begin
Form2.ShowModal;
end;

procedure TForm9.mniDATAORANGTUA1Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm9.mniDATAPOIN1Click(Sender: TObject);
begin
Form4.ShowModal;
end;

procedure TForm9.mniDATASEMSESTER1Click(Sender: TObject);
begin
Form5.ShowModal;
end;

procedure TForm9.mniDATASISWA1Click(Sender: TObject);
begin
Form6.ShowModal;
end;

procedure TForm9.mniDATAUSER1Click(Sender: TObject);
begin
Form7.ShowModal;
end;

procedure TForm9.mniDATAWALIKELAS1Click(Sender: TObject);
begin
Form8.ShowModal;
end;

end.
