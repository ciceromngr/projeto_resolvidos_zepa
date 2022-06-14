unit untJogoVelha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    btnBloco1: TButton;
    Label1: TLabel;
    lblVezJogador: TLabel;
    btnBloco2: TButton;
    btnBloco3: TButton;
    btnBloco4: TButton;
    btnBloco5: TButton;
    btnBloco6: TButton;
    btnBLoco7: TButton;
    btnBloco8: TButton;
    btnBloco9: TButton;
    sbtnNovoJogo: TSpeedButton;
    Label2: TLabel;
    lblPlacarX: TLabel;
    lblPlacarO: TLabel;
    lblPontosX: TLabel;
    lblPontosO: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure sbtnNovoJogoClick(Sender: TObject);
    procedure btnBloco1Click(Sender: TObject);
    procedure btnBloco2Click(Sender: TObject);
    procedure btnBloco3Click(Sender: TObject);
    procedure btnBloco4Click(Sender: TObject);
    procedure btnBloco5Click(Sender: TObject);
    procedure btnBloco6Click(Sender: TObject);
    procedure btnBLoco7Click(Sender: TObject);
    procedure btnBloco8Click(Sender: TObject);
    procedure btnBloco9Click(Sender: TObject);
  private
    { Private declarations }
    VezJogador  : string;
    PlacarX     : integer;
    PlacarO     : integer;
    Jogada      : integer;
    FimDeJogo   : boolean;
    Tabuleiro   : Array[0..2, 0..2] of string;
  public
    { Public declarations }
    procedure EstadoInicialJogo;
    procedure SequenciaVencedoras;
    procedure DesativarOsBotoes;
    procedure ReiniciarOsBotoes;
    procedure SetarOTabuleiro;
    procedure SetarOPlacar(jogador : string);
    procedure SetarOJogadorAtual(jogador : string);
    procedure ClickBotao(Sender : TObject);
  end;

const
  Jogadores   : Array[0..1] of String = ('X', 'O');

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnBloco1Click(Sender: TObject);
begin
  btnBloco1.Tag := 1; 
  ClickBotao(Sender);
  SetarOJogadorAtual(VezJogador);
end;

procedure TForm1.btnBloco2Click(Sender: TObject);
begin
  btnBloco1.Tag := 2;
  ClickBotao(Sender);
  SetarOJogadorAtual(VezJogador);
end;

procedure TForm1.btnBloco3Click(Sender: TObject);
begin
  btnBloco1.Tag := 3;
  ClickBotao(Sender);
  SetarOJogadorAtual(VezJogador);
end;

procedure TForm1.btnBloco4Click(Sender: TObject);
begin
  btnBloco1.Tag := 4;
  ClickBotao(Sender);
  SetarOJogadorAtual(VezJogador);
end;

procedure TForm1.btnBloco5Click(Sender: TObject);
begin
  btnBloco1.Tag := 5;
  ClickBotao(Sender);
  SetarOJogadorAtual(VezJogador);
end;

procedure TForm1.btnBloco6Click(Sender: TObject);
begin
  btnBloco1.Tag := 6;
  ClickBotao(Sender);
  SetarOJogadorAtual(VezJogador);
end;

procedure TForm1.btnBLoco7Click(Sender: TObject);
begin
  btnBloco1.Tag := 7;
  ClickBotao(Sender);
  SetarOJogadorAtual(VezJogador);
end;

procedure TForm1.btnBloco8Click(Sender: TObject);
begin
  btnBloco1.Tag := 8;
  ClickBotao(Sender);
  SetarOJogadorAtual(VezJogador);
end;

procedure TForm1.btnBloco9Click(Sender: TObject);
begin
  btnBloco1.Tag := 9;
  ClickBotao(Sender);
  SetarOJogadorAtual(VezJogador);
end;

{
  Nesta function(ClickBotao) eu capturo o botao que eu cliquei ,
  seto o caption do botao para o jogador atual e o desativo,
  tambem enumerei as tags dos botoes e coloquei dentro da estrutura
  escolha tag caso for 1 ou 2 ... dependendo da tag eu posso organizar o meu
  tabuleiro colocando-os nas posi��es corretas, incremento a jogada, e verifico se
  o tem algum vencedor pelas sequencias vencedoras.
}
procedure TForm1.ClickBotao(Sender: TObject);
var
  Linha, Coluna : integer;
begin
  TButton(Sender).Caption := VezJogador;
  TButton(Sender).Enabled := False;

  case TButton(Sender).Tag of
    1: begin
      Tabuleiro[0,0] := VezJogador;
      inc(Jogada);
      SequenciaVencedoras();
    end;
    2: begin
      Tabuleiro[0,1] := VezJogador;
      inc(Jogada);
      SequenciaVencedoras();
    end;
    3: begin
      Tabuleiro[0,2] := VezJogador;
      inc(Jogada);
      SequenciaVencedoras();
    end;
    4: begin
      Tabuleiro[1,0] := VezJogador;
      inc(Jogada);
      SequenciaVencedoras();
    end;
    5: begin
      Tabuleiro[1,1] := VezJogador;
      inc(Jogada);
      SequenciaVencedoras();
    end;
    6: begin 
      Tabuleiro[1,2] := VezJogador;
      inc(Jogada);
      SequenciaVencedoras();
    end;
    7: begin
      Tabuleiro[2,0] := VezJogador;
      inc(Jogada);
      SequenciaVencedoras();
    end;
    8: begin
      Tabuleiro[2,1] := VezJogador;
      inc(Jogada);
      SequenciaVencedoras();
    end;
    9: begin
      Tabuleiro[2,2] := VezJogador;
      inc(Jogada);
      SequenciaVencedoras();
    end
    else 
      ShowMessage('Error');
  end;
end;

{
  Nesta Function(DesativarOsBotoes) faco um laco for percorrendo os components do meu form
  e verifico se o tipo da classe � TButton, e passo/seto/atribuo o Enabled para
  false
}
procedure TForm1.DesativarOsBotoes;
var   
  Componente: integer;
begin
  for Componente := 0 to ComponentCount - 1 do
    if Components[Componente].ClassType = TButton then
      TButton(Components[Componente]).Enabled := False;
end;

{
  Fun��o(EstadoInicialJogo) sem return para alterar o status atual para inicial,
  ou seja , reseta os components do meu form , quanto a jogada, e os placares
}
procedure TForm1.EstadoInicialJogo;
begin
  // Setando o jogador para o jogador X
  lblVezJogador.Caption := Jogadores[0];
  VezJogador            := Jogadores[0];

  Jogada  := 0; // Este manitora se todas as jogadas foram feitas
  PlacarX := 0;
  PlacarO := 0;

  // Alterando o caption das lbl para os pontos iniciais
  lblPontosX.Caption := '0';
  lblPontosO.Caption := '0';

  // Limpando os Captions dos botoes
  ReiniciarOsBotoes();

  // zerando array;
  SetarOTabuleiro();
end;

{
  Nesse Trecho(FormCreate) de codigo assim que o form criado eu altero o estado do jogo
  para inicial.
}
procedure TForm1.FormCreate(Sender: TObject);
begin
  EstadoInicialJogo();
end;

{
  Nesta function(ReiniciarOsBotoes) sem return eu varro os components do meu form
  e verifico se eles tem um tipo de classe Tbutton, assim para cada
  button do meu form eu reseto os captions para vazio e reativo os botoes
}
procedure TForm1.ReiniciarOsBotoes;
var 
  Componente: integer;
begin
  for Componente := 0 to ComponentCount - 1 do
  begin
    if Components[Componente].ClassType = TButton then
    begin
      TButton (Components[Componente]).Caption := '';
      TButton (Components[Componente]).Enabled := True;
    end;
  end;
end;

{
 Esta fun��o(sbtnNovoJogoClick) reinicia todo o estado do jogo
}
procedure TForm1.sbtnNovoJogoClick(Sender: TObject);
begin
  EstadoInicialJogo();
end;

{
  Nesta fun��o(SequenciaVencedoras) eu crio a logica das posi��es vencedoras
  do tabuleiro, se cair em uma dessas logicas o programa Desativa os botoes para
  n�o permitir que a pessoa continue jogando apos o termino, seto o placar com a
  fun��o(SetarOPlacar) passando o jogador vencedor, e mostro um pop-up de
  vitoria.
}
procedure TForm1.SequenciaVencedoras;
var
  Linha, Coluna : integer;
begin
  {
    X | X | X
  }
  if (Tabuleiro[0,0] = VezJogador) and (Tabuleiro[0,1] = VezJogador) and (Tabuleiro[0,2] = VezJogador) then
    begin
      DesativarOsBotoes();
      ShowMessage(Format('O jogador %s foi o vencedor!',[VezJogador]));
      SetarOPlacar(VezJogador);
    end

  else if (Tabuleiro[1,0] = VezJogador) and (Tabuleiro[1,1] = VezJogador) and (Tabuleiro[1,2] = VezJogador) then
   begin
      DesativarOsBotoes();
      ShowMessage(Format('O jogador %s foi o vencedor!',[VezJogador]));
      SetarOPlacar(VezJogador);
   end

  else if (Tabuleiro[2,0] = VezJogador) and (Tabuleiro[2,1] = VezJogador) and (Tabuleiro[2,2] = VezJogador) then
   begin
      DesativarOsBotoes();
      ShowMessage(Format('O jogador %s foi o vencedor!',[VezJogador]));
      SetarOPlacar(VezJogador);
   end

  {
    X |
    X |
    X |
  }

  else if (Tabuleiro[0,0] = VezJogador) and (Tabuleiro[1,0] = VezJogador) and (Tabuleiro[2,0] = VezJogador) then
   begin
      DesativarOsBotoes();
      ShowMessage(Format('O jogador %s foi o vencedor!',[VezJogador]));
      SetarOPlacar(VezJogador);
   end

  else if (Tabuleiro[0,1] = VezJogador) and (Tabuleiro[1,1] = VezJogador) and (Tabuleiro[2,1] = VezJogador) then
   begin
      DesativarOsBotoes();
      ShowMessage(Format('O jogador %s foi o vencedor!',[VezJogador]));
      SetarOPlacar(VezJogador);
   end

  else if (Tabuleiro[0,2] = VezJogador) and (Tabuleiro[1,2] = VezJogador) and (Tabuleiro[2,2] = VezJogador) then
   begin
      DesativarOsBotoes();
      ShowMessage(Format('O jogador %s foi o vencedor!',[VezJogador]));
      SetarOPlacar(VezJogador);
   end

   {
    X | O |
    O | X |
      | O | X
   }
   else if (Tabuleiro[0,0] = VezJogador) and (Tabuleiro[1,1] = VezJogador) and (Tabuleiro[2,2] = VezJogador) then
   begin
      DesativarOsBotoes();
      ShowMessage(Format('O jogador %s foi o vencedor!',[VezJogador]));
      SetarOPlacar(VezJogador);
   end

   {
      | O | X
    O | X |
    X | O |
   }

   else if (Tabuleiro[0,2] = VezJogador) and (Tabuleiro[1,1] = VezJogador) and (Tabuleiro[2,0] = VezJogador) then
   begin
      DesativarOsBotoes();
      ShowMessage(Format('O jogador %s foi o vencedor!',[VezJogador]));
      SetarOPlacar(VezJogador);
   end
   {
    Se as jogadas chegarem ate 9 siginifica que n�o houve vencedores
   }
   else if Jogada = 9 then
   begin
      SetarOPlacar('');
      ShowMessage('Empate! !');
   end;
end;

{
  Nesta Function(SetarOJogadorAtual) ela recebe por parametro o jogador atual
  para fazer a troca para o proximo jogador, apos o final se nao for reiniciado o
  jogo , o jogador atual � quem vai comecar , tanto pode ser o X quanto o O,
  alem de setar o caption da label vezJogador
}
procedure TForm1.SetarOJogadorAtual(jogador: string);
begin
  if jogador = Jogadores[0] then
  begin
    VezJogador := Jogadores[1];
    lblVezJogador.Caption := VezJogador;
  end
  else if jogador = Jogadores[1] then
  begin
    VezJogador := Jogadores[0];
    lblVezJogador.Caption := VezJogador;
  end;
end;

{
  Nesta function(SetarOPlacar) eu recebo por parametro o jogador vencedor,
  nesta etapa eu faco uma pequena verifica��o , do parametro passado,
  apos a verifical��o faco o incremento no placar , altero o lbl que � responsavel
  por mostrar o placar, faco uma pausa de 100ms, seto meu tabuleiro ou seja , deixo
  as positions do meu array zeradas , reinicio os botoes, para que eles voltem a
  estar com enable := true, e seto o placar, que � responsavel pela quantidade de
  jogadas
}
procedure TForm1.SetarOPlacar(jogador: string);
begin
  if jogador = Jogadores[0] then
  begin
    Inc(PlacarX);
    lblPontosX.Caption := IntToStr(PlacarX);
    Sleep(100);
    SetarOTabuleiro();
    ReiniciarOsBotoes();
    Jogada := 0;
  end
  else if jogador = jogadores[1] then
  begin
    Inc(PlacarO);
    lblPontosO.Caption := IntToStr(PlacarO);
    Sleep(100);
    SetarOTabuleiro();
    ReiniciarOsBotoes();
    Jogada := 0;
  end
  else 
  begin
    Sleep(100);
    SetarOTabuleiro();
    ReiniciarOsBotoes();
    Jogada := 0;
  end;
end;

{
 Nesta Function(SetarOTabuleiro) eu percorro minhas linhas e colunas , para
 zerar em cada posicao, fazendo com que meu array de tabuleiros ,
 fique "vazio"
}
procedure TForm1.SetarOTabuleiro;
var
  Linha, Coluna : integer;
begin
  for Linha := 0 to 2 do
    for Coluna := 0 to 2 do
      Tabuleiro[Linha, Coluna] := '';
end;

end.
