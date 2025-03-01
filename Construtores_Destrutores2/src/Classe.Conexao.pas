unit Classe.Conexao;

interface

uses
  SysUtils, Classes,
  DB,
  MyDacVcl,
  Classe.Cliente; // MyDacVcl é um exemplo, ajuste conforme o componente que você está usando.

type
  TConexao = class
  private
    FConexao: TMyConnection;
    FQuery: TMyQuery;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Conectar;
    procedure Desconectar;
    procedure GravarCliente(Cliente: TCliente);
  end;

implementation

{ TConexao }

constructor TConexao.Create;
begin
  inherited;
  FConexao := TMyConnection.Create(nil);
  FQuery := TMyQuery.Create(nil);
  FQuery.Connection := FConexao;
end;

destructor TConexao.Destroy;
begin
  FQuery.Free;
  FConexao.Free;
  inherited;
end;

procedure TConexao.Conectar;
begin
  with FConexao do
  begin
    Database := 'nome_do_banco';
    UserName := 'usuario';
    Password := 'senha';
    Server := 'localhost'; // ou o endereço do servidor
    LoginPrompt := False;
    Connect;
  end;
end;

procedure TConexao.Desconectar;
begin
  FConexao.Disconnect;
end;

procedure TConexao.GravarCliente(Cliente: TCliente);
begin
  FQuery.SQL.Text := 'INSERT INTO clientes (nome, dataNascimento, idade, logradouro, numero) ' +
                     'VALUES (:Nome, :DataNascimento, :Idade, :Logradouro, :Numero)';
  FQuery.Params.ParamByName('Nome').AsString := Cliente.Nome;
  FQuery.Params.ParamByName('DataNascimento').AsDate := Cliente.DataNascimento;
  FQuery.Params.ParamByName('Idade').AsInteger := Cliente.Idade;
  FQuery.Params.ParamByName('Logradouro').AsString := Cliente.Logradouro;
  FQuery.Params.ParamByName('Numero').AsInteger := Cliente.Numero;
  FQuery.ExecSQL;
end;

end.

