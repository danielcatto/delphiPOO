unit Classe.Cliente;

interface

uses
  Classe.Pessoa, Classe.Endereco;
type
  TCliente = class(TPessoa)
    private
    FEndereco: TEndereco;
    public
    constructor Create;  overload;
    constructor Create(Value: String); overload;
    constructor Create(Value: TPessoa); overload;

    property Endereco: TEndereco read FEndereco write FEndereco;

  end;
implementation

{ TCliente }

constructor TCliente.Create;
begin
  Nome := 'N�o informado';
end;

constructor TCliente.Create(Value: String);
begin
  Nome := Value;
end;

constructor TCliente.Create(Value: TPessoa);
begin
  Nome := Value.Nome;
  DataNascimento := Value.DataNascimento;

end;

end.
