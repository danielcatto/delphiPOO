unit Cliente;

interface

uses
  pessoa;
type
  TCliente  = class(TPessoa)

  private
    FSalario: Currency;
    FValorCredito: Currency;
    procedure SetValorCredito(const Value: Currency);

  public
    property Salario : Currency read FSalario write FSalario;
    property ValorCredito: Currency read FValorCredito write SetValorCredito;

end;
implementation

{ TCliente }

procedure TCliente.SetValorCredito(const Value: Currency);
begin
  FValorCredito := Value;
end;

end.
