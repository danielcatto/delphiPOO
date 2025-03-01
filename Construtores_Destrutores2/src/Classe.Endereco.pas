unit Classe.Endereco;

interface
type
    TEndereco = class
  private
    FLogradouro: String;
    FNumero: String;
  public
    property Logradouro: String read FLogradouro write FLogradouro;
    property Numero: String read FNumero write FNumero;

    constructor Create; overload;
  //  constructor Create(Logra, Num: String); overload;


end;
implementation

{ TEndereco }

constructor TEndereco.Create;
begin
  FLogradouro := 'sem endereço';
  FNumero := '0';
end;
{
constructor TEndereco.Create(Logra, Num: String);
begin

end;
 }
end.
