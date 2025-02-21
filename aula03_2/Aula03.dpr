program Aula03;

uses
  Vcl.Forms,
  View.Principal in 'src\View.Principal.pas' {Form1},
  ContaBancaria in 'src\ContaBancaria.pas',
  Classe.Testeconta in 'src\Classe.Testeconta.pas',
  Classe.Pessoa in 'src\Classe.Pessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
