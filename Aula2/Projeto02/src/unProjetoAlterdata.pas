unit unProjetoAlterdata;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button2: TButton;
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

procedure TForm1.Button2Click(Sender: TObject);
var
  idade: Integer;
  frase: String;
begin
  idade := 30;

  // Um recurso interessante de formatação de texto
  // mais https://docwiki.embarcadero.com/Libraries/Alexandria/en/System.SysUtils.Format
  frase := Format('A Alterdata tem %d anos.', [idade]);

  // Mostra um pop up na tela com uma mensagem
  ShowMessage(frase);
end;

end.
