unit Classe.Testeconta;

interface

//uses
 // Classe.Pessoa;
type
  TContaBan = class
  private
    //FNome: String;
    FSaldo : Double;
    function GetSaldo: Double;
//    FConta : TPessoa;

  public
    { public declarations }
    //property Nome: String read FNome write FNome;
    property Saldo: Double read GetSaldo;
    //property Conta : TPessoa read FConta write FConta
    procedure Depositar(Value: Double);

  end;
implementation

uses


{ TContaBan }

procedure TContaBan.Depositar(Value: Double);
begin
  FSaldo := FSaldo + Value;
end;

function TContaBan.GetSaldo: Double;
begin
  Result := FSaldo;
end;

end.
