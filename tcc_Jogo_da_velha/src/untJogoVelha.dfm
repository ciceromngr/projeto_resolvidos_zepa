object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'TCC jogo da velha'
  ClientHeight = 345
  ClientWidth = 284
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 52
    Width = 122
    Height = 19
    Caption = 'Pr'#243'ximo a Jogar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblVezJogador: TLabel
    Left = 136
    Top = 48
    Width = 12
    Height = 24
    Caption = 'X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object sbtnNovoJogo: TSpeedButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Novo Jogo'
    OnClick = sbtnNovoJogoClick
  end
  object Label2: TLabel
    Left = 106
    Top = 8
    Width = 42
    Height = 19
    Caption = 'Placar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblPlacarX: TLabel
    Left = 165
    Top = 8
    Width = 15
    Height = 19
    Caption = 'X:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblPlacarO: TLabel
    Left = 216
    Top = 8
    Width = 23
    Height = 19
    Caption = 'O :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblPontosX: TLabel
    Left = 186
    Top = 8
    Width = 9
    Height = 19
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblPontosO: TLabel
    Left = 245
    Top = 8
    Width = 9
    Height = 19
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnBloco1: TButton
    Tag = 1
    Left = 8
    Top = 104
    Width = 75
    Height = 65
    Cursor = crHandPoint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnBloco1Click
  end
  object btnBloco2: TButton
    Tag = 2
    Left = 105
    Top = 104
    Width = 75
    Height = 65
    Cursor = crHandPoint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnBloco2Click
  end
  object btnBloco3: TButton
    Tag = 3
    Left = 200
    Top = 104
    Width = 75
    Height = 65
    Cursor = crHandPoint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnBloco3Click
  end
  object btnBloco4: TButton
    Tag = 4
    Left = 8
    Top = 184
    Width = 75
    Height = 65
    Cursor = crHandPoint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnBloco4Click
  end
  object btnBloco5: TButton
    Tag = 5
    Left = 105
    Top = 184
    Width = 75
    Height = 65
    Cursor = crHandPoint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnBloco5Click
  end
  object btnBloco6: TButton
    Tag = 6
    Left = 200
    Top = 184
    Width = 75
    Height = 65
    Cursor = crHandPoint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btnBloco6Click
  end
  object btnBLoco7: TButton
    Tag = 7
    Left = 8
    Top = 272
    Width = 75
    Height = 65
    Cursor = crHandPoint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btnBLoco7Click
  end
  object btnBloco8: TButton
    Tag = 8
    Left = 105
    Top = 272
    Width = 75
    Height = 65
    Cursor = crHandPoint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = btnBloco8Click
  end
  object btnBloco9: TButton
    Tag = 9
    Left = 200
    Top = 272
    Width = 75
    Height = 65
    Cursor = crHandPoint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = btnBloco9Click
  end
end
