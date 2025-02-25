unit Classe.Pessoa;

interface
uses
  System.SysUtils ;
type
  TPessoa = class
  private
    FDataNascimento: string;
    FNome: string;

  public
    property Nome: string read FNome write FNome;
    property DataNascimento: string read FDataNascimento write FDataNascimento;

    function Idade: Integer;
    function RetornaDados: String; virtual;    // virtual pode sobreescrever a function

  end;
implementation

{ TMyClass }

function TPessoa.Idade: Integer;
begin
  Result := Trunc((now - StrToDate(FDataNascimento))     / 365.25);
end;

function TPessoa.RetornaDados: String;
begin
  Result := 'Nome: ' + self.FNome +
  ' Data Nascimento: ' + self.FDataNascimento +
  ' Idade: ' + self.Idade.ToString;
end;

end.
