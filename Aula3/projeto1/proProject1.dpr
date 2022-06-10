program proProject1;

uses
  Vcl.Forms,
  unProjeto1 in 'src\unProjeto1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
