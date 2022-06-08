program proSaldacao;

uses
  Vcl.Forms,
  unSaldacao in 'src\unSaldacao.pas' {fmrSaldacao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmrSaldacao, fmrSaldacao);
  Application.Run;
end.
