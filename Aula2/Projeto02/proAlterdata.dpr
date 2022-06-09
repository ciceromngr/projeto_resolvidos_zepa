program proAlterdata;

uses
  Vcl.Forms,
  unProjetoAlterdata in 'src\unProjetoAlterdata.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
