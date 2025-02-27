unit Classe.Cliente;

interface

uses
  System.SysUtils,
  Classe.Pessoa;

type
  TCliente  = class(TPessoa)

  private
    FCPF: string;

  public
    property CPF: string read FCPF write FCPF;
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
  //inherited;  //hera da classe Pai
  Result := Dados + ' CPF: ' + self.CPF + ' Contrato: ' + self.Contrato + ' Heran�a inherited: ' + ClasseNome;
end;

end.
