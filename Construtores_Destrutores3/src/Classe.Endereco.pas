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
end;
implementation

{ TEndereco }

constructor TEndereco.Create;
begin

end;


end.
