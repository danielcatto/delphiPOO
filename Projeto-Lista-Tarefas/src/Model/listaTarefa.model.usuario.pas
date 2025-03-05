unit listaTarefa.model.usuario;

interface
type
  TUsuario = class
    private
    FId: Integer;
    FNome: String;
    FEmail: String;
    FSenha: String;
    FTarefas: TObjectList<TTarefas>;

    public
      property Id: Integer read FId write FId;

      property Nome: String read FNome write FNome;
      property Email: String read FEmail write FEmail;
      property Senha: String read FSenha write FSenha;
      property Tarefas: TObjectList<TTarefas> read FTarefas write FTarefas;
  end;
implementation

end.
