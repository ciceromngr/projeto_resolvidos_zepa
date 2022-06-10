unit projeto12_25;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Memo1: TMemo;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Edit3: TEdit;
    Label3: TLabel;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button10Click(Sender: TObject);
var
  calcas, camisetas , probabilidade: Integer;
begin
//4 calças e 8 camisetas.
  calcas := 4;
  camisetas := 8;
  probabilidade := calcas * camisetas;
  ShowMessage(Format('Quantas combinações, ou, de quantas formas diferentes ela poderá usar essas roupas = %d ',[probabilidade]));
end;

procedure TForm1.Button11Click(Sender: TObject);
var
  cupons : Integer;
begin
  AllocConsole();

  Write('Digite seus cupons: ');
  Read(cupons);

  Writeln(Format('De acordo com seus cupons, você tem %d pontos no programa de fidelidade!',[cupons]));
end;

procedure TForm1.Button12Click(Sender: TObject);
var
  cupons : Integer;
begin
  AllocConsole();

  Write('Digite seus cupons: ');
  Read(cupons);

  Writeln(Format('De acordo com seus cupons, você tem %d pontos no programa de fidelidade!',[cupons * 3]));
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  PrimeiraExpressao, SegundaExpressa: Integer;
begin
  AllocConsole();

  PrimeiraExpressao := 2 + 3 - 5 * 8 - 4 + 354 - 521 + 7 * 66;
  Writeln(PrimeiraExpressao);

  SegundaExpressa := 2 + 7 * (14 - 21) + 28 * 3 * 42 + 740 - (156 + 4 + 40) * 9 ;
  Writeln(SegundaExpressa);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  TemperaturaC, TemperaturaF : Double;
begin

  AllocConsole();
  TemperaturaF := 0;
  TemperaturaC := 0;

  Writeln('Digite a temperatura em graus C');
  Read(TemperaturaC);

  TemperaturaF := TemperaturaC * 1.8 + 32;
  Write('Temperatura em F -> ');
  Writeln(Format('%.1fF',[TemperaturaF]));
  //F = C x 1,8 + 32
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Valor , SinalOpostoValor : Integer;
begin

  Valor := 30;
  SinalOpostoValor := - Valor;
  ShowMessage(intToStr(SinalOpostoValor));
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  QuantidadeCompras : Integer;
begin

  AllocConsole();
  Write('Informe a quantidade de produtos que ira comprar: ');
  Read(QuantidadeCompras);

  Writeln(Format('Parabéns por comprar %d produtos!',[QuantidadeCompras]));

end;

procedure TForm1.Button5Click(Sender: TObject);
var
  PrimeiroValor, SegundoValor , Soma, Divisao, Multiplicacao, Subtracao: Double;
begin
  Memo1.Lines.Clear;
  PrimeiroValor := strToInt(Edit1.Text);
  SegundoValor := strToInt(Edit2.Text);

  Soma := PrimeiroValor + SegundoValor;
  Multiplicacao := PrimeiroValor * SegundoValor;
  Divisao := PrimeiroValor / SegundoValor;
  Subtracao :=  PrimeiroValor - SegundoValor;

  sleep(400);
  Memo1.Lines.Add(Format('A Soma de %.0f + %.0f = %.0f', [Primeirovalor, SegundoValor, Soma]));
  sleep(400);
  Memo1.Lines.Add(Format('A Subtração de %.0f - %.0f = %.0f', [Primeirovalor, SegundoValor, Subtracao]));
  sleep(400);
  Memo1.Lines.Add(Format('A Multiplicação de %.0f * %.0f = %.0f', [Primeirovalor, SegundoValor, Multiplicacao]));
  sleep(400);
  Memo1.Lines.Add(Format('A Divisão de %.0f / %.0f = %.0f', [Primeirovalor, SegundoValor, Divisao]));
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  X, Y , Z : Integer;
begin

  X := 130;
  Z := 33;
  Y := X - Z;

  AllocConsole();

  Writeln(Format('“Teresópolis tem %d anos. Desses,',[X]));
  sleep(500);
  Writeln(Format('%d foram antes de mim.',[Y]));
  sleep(500);
  Writeln(Format('Mas os últimos %d anos contaram comigo!”',[Z]));

end;
{
  O sistema “Betmais” organiza as apostas de seus amigos. Você irá solicitar no
  grupo do Discord, ou whatsapp, que cada amigo lhe fale um número entre 1 e 10.
  Quando você receber todos os números, então irá criar uma variável e atribuir
  nela os valores, da seguinte forma: Os pares são somados, os ímpares subtraídos.
   O programa irá imprimir o resultado, para você repassar aos amigos.
}
procedure TForm1.Button7Click(Sender: TObject);
var
  i: Integer;
begin

end;

procedure TForm1.Button8Click(Sender: TObject);
var
  Valor, Resultado: Double;
begin

  Valor := StrToFloat(Edit3.Text);
  Resultado := Valor * 2;

  ShowMessage(FloatToStr(Resultado));
end;

{
Gustavo foi até uma loja de eletrônicos e comprou alguns jogos e um
videogame novo, pagando R$ 345,00 por todos os jogos e R$ 1.545,00 pelo
videogame. Para o pagamento, o sistema irá apresentar 3 opções de parcelamento
e o valor de cada parcela: 3 vezes sem juros, 5 vezes sem juros e em 10 vezes
com 1,5% de juros sobre o total da compra.
}
procedure TForm1.Button9Click(Sender: TObject);
var
  cJuros, sJuros3, sJuros5 ,valorCompra : Double;
  cupons : Integer;
begin
  valorCompra := 1890;
  sJuros3 := (valorCompra / 3);
  sJuros5 := (valorCompra / 5);
  cJuros := (valorCompra * 1.5)/100;

  AllocConsole();
  Writeln(Format('O Total das suas compras é %.f e formas de parcelamento',[valorCompra]));
  Writeln(Format('3x sem jutros fica = %.f',[sJuros3]));
  Writeln(Format('5x sem jutros fica = %.2f',[sJuros5]));
  Writeln(Format('10x com jutros fica = %.2f',[cJuros]));

  sleep(500);
  Writeln('carregando cupons....');
  sleep(500);

  cupons := Trunc(valorCompra / 190);
  Writeln(Format('Total de cupons ganho %d',[cupons]))
end;

end.
