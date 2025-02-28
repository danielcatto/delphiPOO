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
  Classe.Cliente, Classe.Pessoa;


{$R *.dfm}



procedure TForm1.Button1Click(Sender: TObject);
var
  lCliente1, lCliente2, lCliente3: TCliente;
  lPessoa : TPessoa;
begin

  lPessoa := TPessoa.Create;

  lCliente1 := TCliente.Create;
  lCliente1.Nome := 'daniel';
  lCliente1.DataNascimento := '30/11/1951';
  Memo1.Lines.Add('Cliente 1 ------------------------');
  Memo1.Lines.Add(lCliente1.Nome + ' data nasc: ' + lCliente1.DataNascimento + ' idade: ' + lCliente1.Idade.ToString);

  lCliente2 := TCliente.Create('samuca');
  Memo1.Lines.Add('Cliente 2 ------------------------');
  Memo1.Lines.Add(lCliente2.Nome);

  lCliente3 := TCliente.Create(lPessoa);
  //lCliente3.Endereco.Logradouro := 'rua sem saida';
  //lCliente3.Endereco.Numero := '001';

  Memo1.Lines.Add('Cliente 3 ------------------------');
  //Memo1.Lines.Add(lCliente3.Nome);
  Memo1.Lines.Add(lCliente3.Endereco.Logradouro);
  Memo1.Lines.Add(lCliente3.Endereco.Numero);
end;

end.
