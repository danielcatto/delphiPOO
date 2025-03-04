unit Classe.Cliente;

interface

uses
  System.SysUtils,
  Classe.Pessoa, Classe.Endereco;

type
  TCliente  = class(TPessoa)

  private
    FCPF: string;
    FEndereco: TEndereco;
    FContrato: String;


  public
    constructor Create;  overload;
    constructor Create(Value: String); overload;
    constructor Create(Value: TPessoa); overload;

    destructor Destroy;  override;

    property Contrato: String read FContrato write FContrato;
    property CPF: string read FCPF write FCPF;
    property Endereco: TEndereco   read FEndereco write FEndereco;     //instanciado classe Classe.Endere�o dentro da classe classe.cliente

    function RetornaDados: String; override;
  end;


implementation

{ TCliente }


constructor TCliente.Create(Value: String);
begin
  Nome := Value;
end;

constructor TCliente.Create;
begin
  Nome := 'Nome n�o informado';
  Endereco := TEndereco.Create; //instanciado objeto da Classe.Endereco
end;

constructor TCliente.Create(Value: TPessoa);
begin
  Nome := Value.Nome;
  DataNascimento := Value.DataNascimento;
end;

destructor TCliente.Destroy;
begin
  FEndereco.Free;
end;

function TCliente.RetornaDados: String;
begin
  //inherited;  //hera da classe Pai
  Result := Dados + ' CPF: ' + self.CPF + ' Contrato: ' + self.Contrato + ' Heran�a inherited: ' + ClasseNome;
end;

end.
