unit Classe.Pessoa;

interface
uses
  System.SysUtils;

type TPessoa =class
  private
    FNome: String;
    FDataNascimento: string;
    FEmail: String;
    procedure SetNome(const Value: String);
  public
  //Nome: String;
  //DataNascimento: String;
  //Email : String;
  //Idade : Integer;
  function Idade:Integer;
  property Nome : String  read FNome write SetNome;
  property Email: String read FEmail write FEmail;
 property DataNascimento : string read FDataNascimento write FDataNascimento;
end;
implementation


{ TPessoa }

function TPessoa.Idade: Integer;
begin
  Result := trunc((now - StrToDate(DataNascimento)) / 365.25) ;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

end.
