﻿object Form2: TForm2
  Left = 0
  Top = 0
  Caption = '   SISBI'
  ClientHeight = 431
  ClientWidth = 658
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
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 658
    Height = 25
    ActionManager = ActionManager1
    Caption = 'ActionMainMenuBar1'
    Color = clMenuBar
    ColorMap.DisabledFontColor = 7171437
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedFont = clBlack
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Spacing = 0
    ExplicitWidth = 550
    ExplicitHeight = 29
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 407
    Width = 658
    Height = 24
    Panels = <>
    ExplicitTop = 409
  end
  object PageControl1: TPageControl
    Left = 167
    Top = 25
    Width = 491
    Height = 382
    ActivePage = TabSheet1
    Align = alRight
    Style = tsFlatButtons
    TabOrder = 2
    ExplicitTop = 41
    object TabSheet1: TTabSheet
      Caption = 'Perfil'
      ExplicitLeft = 0
      ExplicitTop = 25
      ExplicitWidth = 650
      object GroupBox3: TGroupBox
        Left = 3
        Top = 0
        Width = 477
        Height = 177
        Caption = 'Informa'#231#245'es Pessoais'
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 24
          Width = 27
          Height = 13
          Caption = 'Nome'
        end
        object Label2: TLabel
          Left = 176
          Top = 24
          Width = 54
          Height = 13
          Caption = 'Sobrenome'
        end
        object Label3: TLabel
          Left = 384
          Top = 24
          Width = 55
          Height = 13
          Caption = 'Nascimento'
        end
        object Label4: TLabel
          Left = 16
          Top = 72
          Width = 36
          Height = 13
          Caption = 'Telfone'
        end
        object Label5: TLabel
          Left = 192
          Top = 72
          Width = 28
          Height = 13
          Caption = 'E-mail'
        end
        object Label6: TLabel
          Left = 16
          Top = 118
          Width = 19
          Height = 13
          Caption = 'CPF'
        end
        object Label7: TLabel
          Left = 176
          Top = 118
          Width = 30
          Height = 13
          Caption = 'Senha'
        end
        object LabelCpf: TLabel
          Left = 16
          Top = 137
          Width = 3
          Height = 13
        end
        object Label8: TLabel
          Left = 368
          Top = 74
          Width = 24
          Height = 13
          Caption = 'Sexo'
        end
        object EditNome: TEdit
          Left = 16
          Top = 43
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object EditSobrenome: TEdit
          Left = 176
          Top = 43
          Width = 177
          Height = 21
          TabOrder = 1
        end
        object EditNasc: TEdit
          Left = 384
          Top = 43
          Width = 65
          Height = 21
          TabOrder = 2
        end
        object EditTelefone: TEdit
          Left = 16
          Top = 91
          Width = 137
          Height = 21
          TabOrder = 3
        end
        object EditEmail: TEdit
          Left = 192
          Top = 91
          Width = 137
          Height = 21
          TabOrder = 4
        end
        object EditSenha: TEdit
          Left = 176
          Top = 137
          Width = 137
          Height = 21
          TabOrder = 5
        end
        object Button3: TButton
          Left = 384
          Top = 136
          Width = 75
          Height = 25
          Caption = 'Alterar'
          TabOrder = 6
        end
        object RadioButton1: TRadioButton
          Left = 368
          Top = 93
          Width = 33
          Height = 17
          Caption = 'M'
          TabOrder = 7
        end
        object RadioButton2: TRadioButton
          Left = 416
          Top = 93
          Width = 33
          Height = 17
          Caption = 'F'
          TabOrder = 8
        end
      end
      object GroupBox4: TGroupBox
        Left = 3
        Top = 183
        Width = 232
        Height = 166
        Caption = 'Reservas'
        TabOrder = 1
      end
      object GroupBox5: TGroupBox
        Left = 241
        Top = 182
        Width = 232
        Height = 166
        Caption = 'Empr'#233'stimos'
        TabOrder = 2
      end
    end
    object Consulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      ExplicitLeft = 8
      ExplicitTop = 25
      ExplicitWidth = 650
      object PageControl2: TPageControl
        Left = 9
        Top = 7
        Width = 471
        Height = 126
        ActivePage = TabSheet2
        Style = tsFlatButtons
        TabOrder = 0
        object TabSheet2: TTabSheet
          Caption = 'Busca Simples'
          ExplicitLeft = 0
          ExplicitTop = 31
        end
        object TabSheet3: TTabSheet
          Caption = 'Busca Avan'#231'ada'
          ImageIndex = 1
          ExplicitWidth = 474
        end
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 139
        Width = 474
        Height = 158
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Button1: TButton
        Left = 397
        Top = 315
        Width = 75
        Height = 25
        Caption = 'Reservar'
        TabOrder = 2
      end
      object Button2: TButton
        Left = 304
        Top = 316
        Width = 75
        Height = 25
        Caption = 'Solicitar'
        TabOrder = 3
      end
    end
    object Informações: TTabSheet
      Caption = 'Informa'#231#245'es'
      ImageIndex = 2
      ExplicitLeft = 8
      ExplicitTop = 25
      ExplicitWidth = 650
    end
  end
  object TGroupBox
    Left = 0
    Top = 25
    Width = 161
    Height = 382
    Align = alLeft
    TabOrder = 3
    ExplicitTop = 31
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = Action1
              end>
            Caption = '&Ajuda'
          end
          item
            Caption = '&Sair'
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Left = 584
    StyleName = 'Platform Default'
    object Action1: TAction
      Category = '&Ajuda'
      Caption = '&Sobre'
    end
  end
end