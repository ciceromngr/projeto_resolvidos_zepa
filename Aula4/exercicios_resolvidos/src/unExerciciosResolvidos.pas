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

   Messagem := 'Ol� '+ Nome + ' ' + Sobrenome + ', seja bem vindo ao universo da programa��o!';
   Write(Messagem);
//Qual o seu nome? Mois�s
//E sobrenome? Baddini
//Ol� Mois�s Baddini, seja bem vindo ao universo da programa��o!
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  EcomSimbolo: Char;
  Com, Grandes, Poderes, vem, Responsabilidades, Frase : String;
begin
  //Com grandes poderes, v�m grandes responsabilidades.
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

  Write('Seu Nome Invertido �: ');
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

  Write('Nome da Fun��o: ');
  Readln(NomeFuncao);

  Write('Valor do empr�stimo que deseja contratar: ');
  Readln(ValorEmprestimo);

  SaldoCredito := (ValorEmprestimo * PorcentagemCredito)/100;

  MessagemInicial := Format('Senhor %s, voc� est� com sorte! Pela sua fun��o de %s, ', [Nome, NomeFuncao]);
  MensagemMeio := Format('sua excelente rela��o com a empresa %s, ',[NomeEmpresa]);
  MensagemFinal := Format('foi aprovado um cr�dito em sua conta corrente de R$ %.2f.',[SaldoCredito]);
  Mensagem := MessagemInicial + MensagemMeio + MensagemFinal;

  Write(Mensagem);
//nome, empresa e fun��o, al�m valor do empr�stimo que deseja contratar
//Senhor Mois�s, voc� est� com sorte! Pela sua fun��o de Programador, e
//sua excelente rela��o com a empresa Alterdata, foi aprovado um cr�dito
//em sua conta corrente de R$ 200.00
end;

end.
