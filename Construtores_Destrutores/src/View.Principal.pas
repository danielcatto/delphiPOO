unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Memo2: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  lCliente1, lCliente2, lCliente3 : TCliente;
  lPessoa1 : TPessoa;
begin
  lPessoa1 := TPessoa.Create;
  lPessoa1.Nome := 'Samuel';
  lPessoa1.DataNascimento := '28/12/2020';


  Memo1.clear;
  lCliente1 := TCliente.Create;
  //lCliente1.Nome := 'Samuel';

  lCliente2 := TCliente.Create('daniel catto') ;
  lCliente3 := TCliente.Create(lPessoa1);
  lCliente3.Endereco.Logradouro := 'Rua henrique belloube 1173';


  try

    Memo1.Lines.Add('Pessoa1: ' + lCliente1.Nome);
    Memo1.Lines.Add(lCliente1.Endereco.Logradouro + ' numero: ' + lCliente1.Endereco.Numero);
    Memo1.Lines.Add('----------------------------------');
    Memo1.Lines.Add('Pessoa2: ' + lCliente2.Nome);
    Memo1.Lines.Add('----------------------------------');
    Memo1.Lines.Add('Pessoa3: ' + lCliente3.Nome + ' DataNascimento: ' + lCliente3.DataNascimento + ' idade: ' +   lCliente3.Idade.ToString);
    Memo1.Lines.Add('Endere�o: ' + lCliente3.Endereco.Logradouro);


  finally
    lCliente1.Free;
    lCliente2.Free;
    lCliente3.Free;
    lPessoa1.Free;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);

var
  lCliente1, lCliente2, lCliente3 : TCliente;
  lPessoa1 : TPessoa;
begin
  Memo2.clear;
  lCliente1 := TCliente.Create;
  lCliente2 := TCliente.Create('2daniel');
  lCliente3 := TCliente.Create;
  try
   Memo2.Lines.Add(lCliente1.Nome);


  finally
    lCliente1.Free;
    lCliente2.Free;
    lCliente3.Free;
    lPessoa1.Free;
  end;
end;

end.
