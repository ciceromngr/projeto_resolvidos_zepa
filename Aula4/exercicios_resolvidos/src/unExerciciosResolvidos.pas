unit unExerciciosResolvidos;

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
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
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
  Nome, Saldacoes: string;
begin
  AllocConsole();

  Writeln('Escreva seu nome: ');
  Read(Nome);

  Saldacoes := 'Bem vindo ' + Nome + ' Tenha um Bom dia!';
  Writeln(Saldacoes);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Nome, Sobrenome, Messagem: string;
begin
   AllocConsole;

   Write('Qual o seu nome? ');
   Readln(Nome);

   Write('E sobrenome: ');
   Readln(Sobrenome);

   Messagem := 'Olá '+ Nome + ' ' + Sobrenome + ', seja bem vindo ao universo da programação!';
   Write(Messagem);
//Qual o seu nome? Moisés
//E sobrenome? Baddini
//Olá Moisés Baddini, seja bem vindo ao universo da programação!
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  EcomSimbolo: Char;
  Com, Grandes, Poderes, vem, Responsabilidades, Frase : String;
begin
  //Com grandes poderes, vêm grandes responsabilidades.
  EcomSimbolo := #234;
  Com := #67'om ';
  Grandes := 'grandes ';
  Poderes := 'poderes ';
  vem := 'v'+EcomSimbolo+'m ';
  Responsabilidades := 'responsabilidades'#46;
  Frase := Com + Grandes + Poderes + vem + Grandes + Responsabilidades;
  ShowMessage(frase);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
I: Integer;
  Nome, Inverter: string;
begin
  AllocConsole();

  Write('Digite seu nome e veja como ele fica ao contrario :). : ');
  Read(Nome);

  Write('Seu Nome Invertido é: ');
  for I := Nome.Length downto Low(Nome) do
  begin
    Inverter := Nome[I];
    write(inverter);
  end;

end;

procedure TForm1.Button5Click(Sender: TObject);
var
  Nome, NomeEmpresa, NomeFuncao, MessagemInicial, MensagemMeio, MensagemFinal, Mensagem : string;
  ValorEmprestimo, PorcentagemCredito, SaldoCredito : double;
begin
  AllocConsole();
  PorcentagemCredito := 86;

  Write('Digite seu nome: ');
  Readln(Nome);

  Write('Nome da Empresa: ');
  Readln(NomeEmpresa);

  Write('Nome da Função: ');
  Readln(NomeFuncao);

  Write('Valor do empréstimo que deseja contratar: ');
  Readln(ValorEmprestimo);

  SaldoCredito := (ValorEmprestimo * PorcentagemCredito)/100;

  MessagemInicial := Format('Senhor %s, você está com sorte! Pela sua função de %s, ', [Nome, NomeFuncao]);
  MensagemMeio := Format('sua excelente relação com a empresa %s, ',[NomeEmpresa]);
  MensagemFinal := Format('foi aprovado um crédito em sua conta corrente de R$ %.2f.',[SaldoCredito]);
  Mensagem := MessagemInicial + MensagemMeio + MensagemFinal;

  Write(Mensagem);
//nome, empresa e função, além valor do empréstimo que deseja contratar
//Senhor Moisés, você está com sorte! Pela sua função de Programador, e
//sua excelente relação com a empresa Alterdata, foi aprovado um crédito
//em sua conta corrente de R$ 200.00
end;

end.
