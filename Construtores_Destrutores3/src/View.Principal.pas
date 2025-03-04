unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    txtNome: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    txtDataNascimento: TEdit;
    Label3: TLabel;
    txtCPF: TEdit;
    txtLogradouro: TEdit;
    txtNumero: TEdit;
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
  Classe.Cliente, Classe.Endereco;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  lCliente : TCliente;
  lEndereco : TEndereco;
begin

  lCliente := TCliente.Create(txtNome.Text);
  lCliente.Nome := txtNome.Text;

  lEndereco := TEndereco.Create;
  lEndereco.Logradouro := txtLogradouro.Text;
  lEndereco.Numero := txtNumero.Text;

  Memo1.Lines.Add(lCliente.Nome) ;
  Memo1.Lines.Add(lEndereco.Logradouro);
  end;

end.
