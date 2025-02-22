unit View.PRincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, pessoa;

type
  TfrmPrincipal = class(TForm)
    Memo1: TMemo;
    btnCalcularLimite: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    txtNome: TEdit;
    txtNasc: TEdit;
    txtSalario: TEdit;
    btnReset: TButton;
    procedure btnCalcularLimiteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  Cliente, CalculoLimiteCredito, CalcularIdade;

{$R *.dfm}

procedure TfrmPrincipal.btnCalcularLimiteClick(Sender: TObject);
var
  Nome: String;
  DataNasc: String;
   pessoa1 : TPessoa;
   pessoa2 : TCliente;
   lCredito : TCredito;
   lCalculaIdade : TCalculaIdade;
begin
  lCredito := TCredito.Create;
  lCalculaIdade := TCalculaIdade.Create;
  ///  fim credito

  pessoa2 := TCliente.Create;

  ////credito

  try

    //entrada de dados no formul�rio
    pessoa2.Nome := txtNome.Text;
    pessoa2.DataNascimento := txtNasc.Text;
    pessoa2.Salario := StrToCurr(txtSalario.Text);

    {
    chamando classes de calcular a idade
    calcular rediario de acordo com sal�rio
    }

    //calcular a idade do cliente
    pessoa2.Idade := lCalculaIdade.Calcula(pessoa2.DataNascimento);

    //calcular o valor do credi�rio
    lCredito.CalcCredito(pessoa2.Salario);

    //retorna os valores
    pessoa2.ValorCredito := lCredito.Credito;
    Memo1.Lines.Add('Cliente');
    Memo1.Lines.Add('Nome: ' +  pessoa2.Nome);
    Memo1.Lines.Add('Data Nascimento: ' +  pessoa2.DataNascimento);
    Memo1.Lines.Add('Idade: '   + pessoa2.Idade.ToString );
    Memo1.Lines.Add('Sal�rio: ' +  pessoa2.Salario.ToString());
    Memo1.Lines.Add('Cr�dito: ' +  pessoa2.ValorCredito.ToString());
finally
  pessoa2.free;
end;

end;


procedure TfrmPrincipal.btnResetClick(Sender: TObject);
begin
  txtNome.text := '';
  txtNasc.text := '';
  txtSalario.text := '';
  Memo1.Lines.Clear;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
Memo1.Lines.Clear;
end;

end.
