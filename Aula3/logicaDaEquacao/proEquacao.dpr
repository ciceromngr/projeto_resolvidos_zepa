program proEquacao;

uses
  Vcl.Forms,
  unLogicaDaEquacao in 'src\unLogicaDaEquacao.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
