program Project2;

uses
  Vcl.Forms,
  View.PRincipal in 'src\View.PRincipal.pas' {frmPrincipal},
  pessoa in 'src\pessoa.pas',
  Cliente in 'src\Cliente.pas',
  CalculoLimiteCredito in 'src\CalculoLimiteCredito.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
