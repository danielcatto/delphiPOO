unit ContaBancaria;

interface
type
  TContaBancaria= class
    private
    FNome: String;
    FSaldo: Double;
    function GetSaldo: Double;


    public
    property Nome: String read FNome write FNome;
    property Saldo: Double read GetSaldo;
    procedure Depositar(Value: Double);
  end;
implementation

{ TContaBancaria }


{ TContaBancaria }

procedure TContaBancaria.Depositar(Value: Double);
begin
  FSaldo := FSaldo + Value * 0.10;
end;

function TContaBancaria.GetSaldo: Double;
begin
  Result := FSaldo;
end;

end.
