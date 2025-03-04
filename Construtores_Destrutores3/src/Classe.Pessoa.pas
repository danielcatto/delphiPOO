unit Classe.Pessoa;

interface
uses
  System.SysUtils ;
type
  TPessoa = class
    private
    FNome: string;
    FDataNascimento: string;

    public
    property Nome: string read FNome write FNome;
    property DataNascimento: string read FDataNascimento write FDataNascimento;
    function Idade: Integer;
  end;
implementation

{ TPessoa }

function TPessoa.Idade: Integer;
begin
  Result := Trunc((now - StrToDate(FDataNascimento))     / 365.25);
end;

end.
