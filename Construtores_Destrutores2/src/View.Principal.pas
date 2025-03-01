unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    txtNome: TEdit;
    txtDataNascimento: TEdit;
    txtLogradouro: TEdit;
    txtNumero: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
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
  Classe.Cliente, Classe.Pessoa, Classe.Endereco;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
   lCliente: TCliente;
  lEndereco: TEndereco;
begin
  lEndereco := TEndereco.Create;
  lEndereco.Logradouro := txtLogradouro.Text;
  lEndereco.Numero := txtNumero.Text;
  lCliente := TCliente.Create(txtNome.Text, txtDataNascimento.Text, lEndereco, lEndereco.Numero);


  try

    Memo1.Lines.Add('Cliente 1 ------------------------');
    Memo1.Lines.Add('Nome' + ' ' + lCliente.Nome);
    Memo1.Lines.Add('Data Nascimento: ' + lCliente.DataNascimento);
    Memo1.Lines.Add('Idade: ' + lCliente.Idade.ToString);
    Memo1.Lines.Add(lCliente.Endereco.Logradouro +' ' + lCliente.Endereco.Numero);

    Memo1.Lines.Add('-----------------------------------');
    Memo1.Lines.Add('');

  finally
    lCliente.Free;
  end;
end;

end.

