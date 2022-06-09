unit unSaldacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfmrSaldacao = class(TForm)
    btnPuxaSaco: TButton;
    btnDesafio: TButton;
    procedure btnPuxaSacoClick(Sender: TObject);
    procedure btnDesafioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmrSaldacao: TfmrSaldacao;

implementation

{$R *.dfm}

procedure TfmrSaldacao.btnDesafioClick(Sender: TObject);
var
  I: Integer;
  frase: String;
  fraseSeparacao: TArray<String>;

begin

  AllocConsole;

  Writeln('Digite algumas saldacoes e as separe com '';'' : ');
  Writeln('----> Lembrando que se nao colocar o ; a frase ficara junta !! <----');
  Read(frase);

  fraseSeparacao := frase.Split([';']);

  Writeln('-----------------------------------------------');

  for I := 0 to High(fraseSeparacao) do
    Writeln(Trim(fraseSeparacao[I]));

  Writeln('-----------------------------------------------');
end;

 procedure TfmrSaldacao.btnPuxaSacoClick(Sender: TObject);
var
  saldacoes: string;
  saldacoesArray: TArray<String>;
  I: Integer;
begin
  AllocConsole;
  saldacoes := 'Bom dia!;Boa tarde!;Boa noite!';
  saldacoesArray := saldacoes.Split([';']);
  for I := 0 to High(saldacoesArray) do
  begin
    Writeln(saldacoesArray[I]);
  end;
end;

end.
