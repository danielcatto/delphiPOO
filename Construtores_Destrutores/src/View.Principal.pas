unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
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
  lCliente1, lCliente2, lCliente3 : TCliente;
  lPessoa1 : TPessoa;
begin
  lCliente1 := TCliente.Create  ;
  lCliente2 := TCliente.Create ;
  lCliente3 := TCliente.Create;

end;

end.
