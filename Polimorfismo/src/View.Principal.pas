unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Classe.Pessoa, Classe.Cliente;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Pessoa : TPessoa;
  Cliente : TCliente;
begin
  Memo1.Clear;
  Pessoa := TPessoa.Create;
  Cliente := TCliente.Create;

  try
    Pessoa.Nome := 'daniel';
    Pessoa.DataNascimento := '24/09/1980';
    Pessoa.Email := 'daniel@gmail.com';



    Cliente.Nome := 'vinicius';
    Cliente.DataNascimento := '22/05/2014';
    Cliente.Email := 'vini6catto@gmail.com';
    Cliente.VAlorCredito := 700;

    Memo1.Lines.Add('Nome: ' + Cliente.Nome + ' - Email: ' + Cliente.Email);
    Memo1.Lines.Add('receber Integer dobra: ' + Cliente.Receber(45));
    Memo1.Lines.Add('valor credito currency subtrai: ' + Cliente.VAlorCredito.ToString());

  finally
    Pessoa.Free;
    Cliente.Free;
  end;
end;

end.
