unit CalculoLimiteCredito;

interface
type
  TCredito = class
    private
    //FSalario: Currency;
    FCredito: Currency;

    public
      //property Salario : Currency read FSalario write FSalario;
      property Credito : Currency read FCredito write FCredito;
      procedure CalcCredito(const Value: Currency);

end;
implementation

{ TCredito }

procedure TCredito.CalcCredito(const Value: Currency);
begin
  FCredito := Value * 0.30;
end;

end.
