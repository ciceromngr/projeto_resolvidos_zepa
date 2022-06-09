unit unTempoVida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{
 O programa “Tempo de vida” irá imprimir a soma das idades de todos os colegas
 da sua equipe. Pergunte a cada um a idade e não esqueça a sua! Depois faça a
 atribuição da expressão que você montou em uma variável inteira.
}
procedure TForm1.FormCreate(Sender: TObject);
var
  numeroDePessoas, idade , contador, I, soma: Integer;
  equipe: Array of Integer;

begin
  AllocConsole;

  numeroDePessoas := 0;
  idade := 0;
  contador  := 0;
  soma := 0;

  Writeln('Quantas pessoas a no seu time?');
  Read(numeroDePessoas);
  SetLength(equipe, numeroDePessoas);

  while contador < numeroDePessoas do
  begin
    Writeln(Format('Idade do colega %d',[contador + 1]));
    Read(idade);

    equipe[contador] := idade;
    Inc(contador);
  end;

  Writeln('A soma das idades é ');
  for I := 0 to numeroDePessoas - 1 do
    soma := soma + equipe[I];
  Writeln(soma);
end;

end.
