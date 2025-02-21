unit CalcularIdade;

interface
uses System.SysUtils;
type
  TCalculaIdade = class
  public
    function Calcula(const Valor: String): Integer;
  end;

implementation

{ TCalculadora }

function TCalculaIdade.Calcula(const Valor: String): Integer;
begin
  Result := Trunc((now - StrToDate(Valor)) / 365.25);
end;
end.
