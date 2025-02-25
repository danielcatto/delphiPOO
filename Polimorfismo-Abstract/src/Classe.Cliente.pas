unit Classe.Cliente;

interface

uses
  System.SysUtils,
  Classe.Pessoa;

type
  TCliente  = class(TPessoa)

  private
    Fname: string;

  public
  property CPF: string read Fname write Fname;
  function RetornaDados: String; override;
  function Contrato: String; override;
  end;
implementation

{ TCliente }

function TCliente.Contrato: String;
begin
  Result:= 'Metodo Contrato tpessoa';
end;

function TCliente.RetornaDados: String;
begin
  Result := 'Nome: ' + self.Nome +
  ' Data Nascimento: ' + self.DataNascimento +
  ' Idade: ' + self.Idade.ToString +
  ' CPF: ' + self.CPF + ' Contrato: ' + self.Contrato;
end;

end.
