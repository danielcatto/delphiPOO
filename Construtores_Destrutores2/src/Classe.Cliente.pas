unit Classe.Cliente;

interface

uses
  Classe.Pessoa, Classe.Endereco;

type
  TCliente = class(TPessoa)
  private
    FEndereco: TEndereco;
  public
    constructor Create; overload;
    constructor Create(vNome: String; vDataNascimento: String; Endereco: TEndereco; Numero: String); overload;
    destructor Destroy; override;
    property Endereco: TEndereco read FEndereco write FEndereco;
  end;

implementation

constructor TCliente.Create;
begin
  inherited Create;
  FEndereco := TEndereco.Create;
end;

constructor TCliente.Create(vNome: String; vDataNascimento: String; Endereco: TEndereco; Numero: String);
begin
  inherited Create;
  Self.Nome := vNome;
  Self.DataNascimento := vDataNascimento;
  FEndereco := Endereco;
  FEndereco.Numero := Numero;
end;

destructor TCliente.Destroy;
begin
  FEndereco.Free;
  inherited Destroy;
end;

end.

