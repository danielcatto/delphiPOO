program Polimorfismo;

uses
  Vcl.Forms,
  View.Principal in 'src\View.Principal.pas' {Form1},
  Classe.Pessoa in 'src\Classe.Pessoa.pas',
  Classe.Cliente in 'src\Classe.Cliente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
