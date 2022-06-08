object fmrSaldacao: TfmrSaldacao
  Left = 0
  Top = 0
  Caption = 'Sauda'#231#245'es Console'
  ClientHeight = 134
  ClientWidth = 481
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnPuxaSaco: TButton
    Left = 24
    Top = 56
    Width = 121
    Height = 25
    Caption = 'Salda'#231#245'es puxa-saco'
    TabOrder = 0
    OnClick = btnPuxaSacoClick
  end
  object btnDesafio: TButton
    Left = 320
    Top = 56
    Width = 121
    Height = 25
    Caption = 'Desafio'
    TabOrder = 1
    OnClick = btnDesafioClick
  end
end
