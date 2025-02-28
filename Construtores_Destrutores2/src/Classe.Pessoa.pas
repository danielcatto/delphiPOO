unit Classe.Pessoa;

interface
uses
  System.SysUtils ;
type
  TPessoa = class
    private
    FManual: String;
    FDados: String;
    FDataNascimento: string;
    FClasseNome: String;
    FNome: string;
    public
    property Nome: string read FNome write FNome;
    property DataNascimento: string read FDataNascimento write FDataNascimento;
    property Dados: String read FDados write FDados;
    property ClasseNome: String read FClasseNome write FClasseNome;
    property Manual: String read FManual write FManual;
    function Idade: Integer;
  end;
implementation

{ TPessoa }

function TPessoa.Idade: Integer;
begin
  Result := Trunc((now - StrToDate(FDataNascimento))     / 365.25);
end;

end.
