unit unIndeciso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
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
  numero: Integer;
  frase1, frase2, frase3: String;
begin

Randomize;

numero:= 50;

Memo1.Lines.Clear;

frase1 := Format('Quero te contar meu n�mero da sorte! � %d.', [Random(numero)]);
frase2 := Format('N�o, espera, � %d.. Ah esse era o da mam�e. O meu � %d.', [Random(numero), Random(numero)]);
frase3 := Format('J� decidi: � %d! Bingo :)', [Random(numero)]);

Memo1.Lines.Add(frase1);
Memo1.Lines.Add(frase2);
Memo1.Lines.Add(frase3);

end;

end.
