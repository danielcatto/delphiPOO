unit pessoa;

interface
uses
  System.SysUtils;

type TPessoa =class
  private
  public
  Nome: String;
  DataNascimento: String;
  function Idade: Integer;
end;
implementation

{ TPessoa }

function TPessoa.Idade: Integer;
begin
  Result := Trunc((now - StrToDate(DataNascimento)) / 365.25);
end;

end.
