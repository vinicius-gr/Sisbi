object FormLogin: TFormLogin
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = '   SISBI'
  ClientHeight = 350
  ClientWidth = 200
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object EditUsuario: TEdit
    Left = 23
    Top = 160
    Width = 145
    Height = 21
    TabOrder = 0
    TextHint = 'Usu'#225'rio'
  end
  object EditSenha: TEdit
    Left = 23
    Top = 200
    Width = 145
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    TextHint = 'Senha'
  end
  object ButtonLogar: TButton
    Left = 93
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Entrar'
    TabOrder = 2
    OnClick = ButtonLogarClick
  end
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 200
    Height = 25
    UseSystemFont = False
    ActionManager = ActionManager1
    AnimateDuration = 250
    AnimationStyle = asFade
    Caption = 'ActionMainMenuBar1'
    Color = clMenuBar
    ColorMap.DisabledFontColor = 7171437
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedFont = clBlack
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Spacing = 0
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = RecuperarSenha
              end
              item
                Action = Sobre
              end>
            Caption = '&Ajuda'
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Left = 32
    Top = 48
    StyleName = 'Platform Default'
    object RecuperarSenha: TAction
      Category = '&Ajuda'
      Caption = '&Recuperar Senha'
    end
    object Sobre: TAction
      Category = '&Ajuda'
      Caption = '&Sobre'
    end
  end
end
