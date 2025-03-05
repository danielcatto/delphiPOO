program ListaTarefas;

uses
  Vcl.Forms,
  ViewPrincipal in 'src\Views\ViewPrincipal.pas' {Form1},
  listaTarefa.model.usuario in 'src\Model\listaTarefa.model.usuario.pas',
  listaTarefa.model.tarefa in 'src\Model\listaTarefa.model.tarefa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
