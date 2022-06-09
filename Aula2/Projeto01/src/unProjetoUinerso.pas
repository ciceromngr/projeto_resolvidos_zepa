unit unProjetoUinerso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  numeroUniverso, I: Integer;
  frasesUniverso: TArray<String>;
  frase01, frase02, frase03, frase04, frase05, frase06: String;
begin
  AllocConsole;

  // zerando a variavel pois pode vir com alguma "sujeira" com algum valor alocado
  numeroUniverso := 0;

  Writeln('Se fosse descrever tudo em que numero, universo, vida, etc., qual seria?!!, dica está entre 41 a 43 :)');
  Read(numeroUniverso);

  while numeroUniverso <> 42 do
  begin

    {
      Nesse caso poderia ser usado o case of
      se caso queira ter mais trataviva sem fazer ifs encadeados

      case numeroUniverso of
        0..39: Write ....
        40..41: write ....
        42: write...
        43..49: write...
    }
    if numeroUniverso = 41 then
      Writeln('Você quase acertou!!, Você está bem pertinho :)!!')
    else if numeroUniverso = 43 then
      Writeln('Se fosse uma cobra ja tinha lhe picado, :) !! ')
    else
      Writeln('Que pena você errou :( , mais calma se concentra na dica que tudo vai dar certo!');

    Writeln(' ');
    Writeln(' ');
    Writeln('Diga o numero! ');
    Read(numeroUniverso);
  end;

  // setando os valores do meu array
  frase01 := '42 Este número é a resposta para a Grande Pergunta sobre a Vida, ..';
  frase02 := 'o Universo e Tudo o Mais, no livro Guia do Mochileiro da Galáxia, de Douglas Adams. ..';
  frase03 := 'E Parece que o tio Douglas estava certo! ..';
  frase04 := 'a resposta para a vida, o universo e tudo, é 42 ..';
  frase05 := 'Osastrônomos de Cambridge descobriram que 42 .. é o valor de uma constante científica essencial .. – uma que determina a idade do universo';

  // So para mostrar o recurso de concatenação
  frase06 := frase01 + frase02 + frase03 + frase04 + frase05;

  {
    Nessa linha eu percorro minhas frase06
    e onde tiver '..' eu quebro um pedacinho e aloco numa position do meu array
    ou seja
    no split voce percorre a frase/string e cria um delimitador que voce queira
    usar para a separação no meu caso usei .. mais pode ser ',' , 'letra', 'simbolos'
    e por ai vai. A explicação foi meio Grotesca mais se quiserem pesquisar sobre o split
    no delphi aqui https://docwiki.embarcadero.com/Libraries/Alexandria/en/System.SysUtils.TStringHelper.Split
  }
  frasesUniverso := frase06.Split(['..']);

  {
    Funcao Low ela pega o primeira position no caso aqui,
    eu ano precisava dela pois eu ja sei qual a primeira position do meu array,
    porem fica a dica.
    Funcao High ela pega a tamanho todo do array e diminui -1 seria o mesmo que
    Length(frasesUniverso) - 1
  }
  for I := Low(frasesUniverso) to High(frasesUniverso) do
  begin
    // O trim basicamente ele retira os espacos do inicio e do final de uma string;
    Writeln(Trim(frasesUniverso[I]));
  end;

end;

end.
