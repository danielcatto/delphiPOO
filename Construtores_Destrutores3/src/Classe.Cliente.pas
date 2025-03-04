unit Classe.Cliente;


interface

uses
  Classe.Pessoa, Classe.Endereco;

type
  TCliente = class(TPessoa)
  private
    FCPF: String;
    FSalario: Currency;
    FEndereco: TEndereco;

  public
    constructor Create; overload;
    constructor Create(Value: String); overload;
    constructor Create(Value : TPessoa; Logra: String; Num: String);overload;
    property Endereco: TEndereco read FEndereco write FEndereco;
    property CPF: String read FCPF write FCPF;
    property Salario: Currency read FSalario write FSalario;
    function Credito: Currency;

  end;

implementation


{ TCliente }

constructor TCliente.Create;
begin
  Nome := 'sem nome';
end;

constructor TCliente.Create(Value: String);
begin
  FEndereco := TEndereco.Create;
  Nome := Value;
end;

constructor TCliente.Create(Value: TPessoa; Logra: String; Num: String);
begin

  Nome := Value.Nome;
  DataNascimento := Value.DataNascimento;


end;

function TCliente.Credito: Currency;
begin
  Result := FSalario  * 0.30
end;

end.
