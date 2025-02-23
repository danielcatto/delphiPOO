unit Classe.Cliente;

interface

uses
  System.SysUtils,
  Classe.Pessoa;
type
  TCliente  = class(TPessoa)

  private
    FVAlorCredito: Currency;

  public
    property VAlorCredito: Currency read FVAlorCredito write FVAlorCredito;
    function Receber(Value: Integer): String; overload;
    function Receber(Value: Currency): String; overload;


end;
implementation

{ TCliente }


function TCliente.Receber(Value: Currency): String;

var
  numero: Currency;

begin
  FVAlorCredito := FVAlorCredito - Value;

  Result := Value.ToString;
end;

{ TCliente }

function TCliente.Receber(Value: Integer): String;
var
  numero: integer;

begin
  numero := Value * 2;

  Result := numero.ToString;
end;

end.
