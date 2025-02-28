unit Classe.Pessoa;


interface
uses
  System.SysUtils ;
type
  TPessoa = class
  private
    FDataNascimento: string;
    FNome: string;
    FDados: String;
    FClasseNome: String;

    FManual: String;

  public
    property Nome: string read FNome write FNome;
    property DataNascimento: string read FDataNascimento write FDataNascimento;
    property Dados: String read FDados write FDados;
    property ClasseNome: String read FClasseNome write FClasseNome;
    property Manual: String read FManual write FManual;
    function Idade: Integer;
    function ManualClasse : String;
    function RetornaDados: String; virtual;    // virtual pode sobreescrever a function
    function Contrato: String; virtual; abstract;

  end;
implementation

{ TMyClass }

function TPessoa.Idade: Integer;
begin
  Result := Trunc((now - StrToDate(FDataNascimento))     / 365.25);
end;

function TPessoa.ManualClasse: String;
begin
  Result := 'Classe Pai, implementa dos metodos básicos de uma pessoa. Tem como metodo ';
end;

function TPessoa.RetornaDados: String;
begin
  ClasseNome := 'sou herdado da classe Pai TPessoa' ;
  self.Dados := 'Nome: ' + self.FNome +
  ' Data Nascimento: ' + self.FDataNascimento +
  ' Idade: ' + self.Idade.ToString;

end;

end.
