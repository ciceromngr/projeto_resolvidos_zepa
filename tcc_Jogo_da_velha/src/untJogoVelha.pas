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

procedure TForm1.DesativarOsBotoes;
var   
  Componente: integer;
begin
  for Componente := 0 to ComponentCount - 1 do
    if Components[Componente].ClassType = TButton then
      TButton(Components[Componente]).Enabled := False;
end;

procedure TForm1.EstadoInicialJogo;
begin
  // Setando o jogador para o jogador X
  lblVezJogador.Caption := Jogadores[0];
  VezJogador := Jogadores[0];
  Jogada := 0;
  PlacarX := 0;
  PlacarO := 0;

  lblPontosX.Caption := '0';
  lblPontosO.Caption := '0';

  // Limpando os Captions dos botoes
  ReiniciarOsBotoes();

  // zerando array;
  SetarOTabuleiro();
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  EstadoInicialJogo();
end;

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

procedure TForm1.sbtnNovoJogoClick(Sender: TObject);
begin
  EstadoInicialJogo();
end;

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
      SetarOPlacar(VezJogador);
      ShowMessage('Vitoria!!');
    end

  else if (Tabuleiro[1,0] = VezJogador) and (Tabuleiro[1,1] = VezJogador) and (Tabuleiro[1,2] = VezJogador) then
   begin
      DesativarOsBotoes();
      SetarOPlacar(VezJogador);
      ShowMessage('Vitoria!!');
   end

  else if (Tabuleiro[2,0] = VezJogador) and (Tabuleiro[2,1] = VezJogador) and (Tabuleiro[2,2] = VezJogador) then
   begin
      DesativarOsBotoes();
      SetarOPlacar(VezJogador);
      ShowMessage('Vitoria!!');
   end

  {
    X |
    X |
    X |
  }

  else if (Tabuleiro[0,0] = VezJogador) and (Tabuleiro[1,0] = VezJogador) and (Tabuleiro[2,0] = VezJogador) then
   begin
      DesativarOsBotoes();
      SetarOPlacar(VezJogador);
      ShowMessage('Vitoria!!');
   end

  else if (Tabuleiro[0,1] = VezJogador) and (Tabuleiro[1,1] = VezJogador) and (Tabuleiro[2,1] = VezJogador) then
   begin
      DesativarOsBotoes();
      SetarOPlacar(VezJogador);
      ShowMessage('Vitoria!!');
   end

  else if (Tabuleiro[0,2] = VezJogador) and (Tabuleiro[1,2] = VezJogador) and (Tabuleiro[2,2] = VezJogador) then
   begin
      DesativarOsBotoes();
      SetarOPlacar(VezJogador);
      ShowMessage('Vitoria!!');
   end

   {
    X | O |
    O | X |
      | O | X
   }
   else if (Tabuleiro[0,0] = VezJogador) and (Tabuleiro[1,1] = VezJogador) and (Tabuleiro[2,2] = VezJogador) then
   begin
      DesativarOsBotoes();
      SetarOPlacar(VezJogador);
      ShowMessage('Vitoria!!');
   end

   {
      | O | X
    O | X |
    X | O |
   }

   else if (Tabuleiro[0,2] = VezJogador) and (Tabuleiro[1,1] = VezJogador) and (Tabuleiro[2,0] = VezJogador) then
   begin
      DesativarOsBotoes();
      SetarOPlacar(VezJogador);
      ShowMessage('Vitoria!!');
   end
   {}
   else if Jogada = 9 then
   begin
      SetarOPlacar('');
      ShowMessage('Empate!!');
   end;
end;

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

procedure TForm1.SetarOPlacar(jogador: string);
begin
  if jogador = Jogadores[0] then
  begin
    Inc(PlacarX);
    lblPontosX.Caption := IntToStr(PlacarX);
    Sleep(200);
    SetarOTabuleiro();
    ReiniciarOsBotoes();
    Jogada := 0;
  end
  else if jogador = jogadores[1] then
  begin
    Inc(PlacarO);
    lblPontosO.Caption := IntToStr(PlacarO);
    Sleep(200);
    SetarOTabuleiro();
    ReiniciarOsBotoes();
    Jogada := 0;
  end
  else 
  begin
    Sleep(200);
    SetarOTabuleiro();
    ReiniciarOsBotoes();
    Jogada := 0; 
  end;
end;

procedure TForm1.SetarOTabuleiro;
var
  Linha, Coluna : integer;
begin
  for Linha := 0 to 2 do
    for Coluna := 0 to 2 do
      Tabuleiro[Linha, Coluna] := '';
end;

end.
