unit unLogicaDaEquacao;

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
  tenis, menino, apito : Integer;
begin
  AllocConsole();

  tenis := 10;
  menino := 5;
  apito := 4;

  // 10 + 10 + 10 = 30
  Writeln(Format('tênis + tênis + tênis = %d',[tenis+tenis+tenis]));

  // 10 + 5 + 5 = 20
  Writeln(Format('tênis + menino + menino = %d',[tenis+menino+menino]));

  // 5 + 4 + 4 = 13
  Writeln(Format('menino + apito + apito = %d',[menino+apito+apito]));

  // 10 + 5 + 4 = 19
  Writeln(Format('tênis + menino + apito = %d',[tenis+menino+apito]));

end;

end.
