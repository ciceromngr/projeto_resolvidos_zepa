program pro12_25;

uses
  Vcl.Forms,
  projeto12_25 in '..\projeto12_25.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
