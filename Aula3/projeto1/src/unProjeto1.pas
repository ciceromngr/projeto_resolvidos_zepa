unit unProjeto1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  multiplo : Integer;
  primeiros : Integer;
begin

 multiplo := 4 + 8 + 12;
 primeiros := 2 - 3 - 5 - 7;

 AllocConsole();
 Writeln(Format('Os soma dos primeiros multiplos de 4 é %d',[multiplo]));
 Writeln(Format('A subtração dos primeiros 4 primos é %d',[primeiros]));

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  colega1, colega2, colega3, resultado : Integer;
begin

  colega1 := 20;
  colega2 := 30;
  colega3 := 24;
  resultado := colega1 + colega2 + colega3;

  AllocConsole();

  Writeln('A Soma das idades dos meu colegas são');
  Write(resultado);

end;

end.
