﻿object FormMainUsuario: TFormMainUsuario
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '   SISBI'
  ClientHeight = 441
  ClientWidth = 668
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 668
    Height = 25
    UseSystemFont = False
    ActionManager = ActionManager1
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 417
    Width = 668
    Height = 24
    Panels = <>
  end
  object PageControl1: TPageControl
    Left = 177
    Top = 25
    Width = 491
    Height = 392
    ActivePage = TabSheet1
    Align = alRight
    Style = tsFlatButtons
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Perfil'
      object GroupBox3: TGroupBox
        Left = 3
        Top = 0
        Width = 477
        Height = 137
        Caption = 'Informa'#231#245'es Pessoais'
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 24
          Width = 32
          Height = 13
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 224
          Top = 24
          Width = 65
          Height = 13
          Caption = 'Sobrenome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 16
          Top = 78
          Width = 20
          Height = 13
          Caption = 'CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 224
          Top = 78
          Width = 35
          Height = 13
          Caption = 'Senha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelCpf: TLabel
          Left = 16
          Top = 97
          Width = 3
          Height = 13
        end
        object EditNome: TEdit
          Left = 16
          Top = 43
          Width = 169
          Height = 21
          TabOrder = 0
        end
        object EditSobrenome: TEdit
          Left = 224
          Top = 43
          Width = 225
          Height = 21
          TabOrder = 1
        end
        object EditSenha: TEdit
          Left = 224
          Top = 97
          Width = 121
          Height = 21
          TabOrder = 2
        end
        object ButtonAlterarUsuario: TButton
          Left = 375
          Top = 97
          Width = 75
          Height = 25
          Caption = 'Alterar'
          TabOrder = 3
          OnClick = ButtonAlterarUsuarioClick
        end
      end
      object GroupBox4: TGroupBox
        Left = 3
        Top = 143
        Width = 232
        Height = 206
        Caption = 'Reservas'
        TabOrder = 1
        object DBGridReservas: TDBGrid
          Left = 2
          Top = 15
          Width = 228
          Height = 189
          Align = alClient
          DataSource = DataModule1.DataSourceReservas
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Codigo'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Titulo'
              Visible = True
            end>
        end
      end
      object GroupBox5: TGroupBox
        Left = 241
        Top = 143
        Width = 232
        Height = 205
        Caption = 'Empr'#233'stimos'
        TabOrder = 2
        object DBGrid3: TDBGrid
          Left = 2
          Top = 15
          Width = 228
          Height = 188
          Align = alClient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
    object Consulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object PageControl2: TPageControl
        Left = 9
        Top = 7
        Width = 471
        Height = 126
        ActivePage = TabSheet3
        Style = tsFlatButtons
        TabOrder = 0
        object TabSheet2: TTabSheet
          Caption = 'Busca Simples'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label9: TLabel
            Left = 3
            Top = 3
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
          end
          object EditCodigoBusca: TEdit
            Left = 3
            Top = 22
            Width = 190
            Height = 21
            TabOrder = 0
          end
          object Button4: TButton
            Left = 219
            Top = 19
            Width = 75
            Height = 25
            Caption = 'Buscar'
            TabOrder = 1
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Busca Avan'#231'ada'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label10: TLabel
            Left = 3
            Top = 3
            Width = 27
            Height = 13
            Caption = 'Autor'
          end
          object Label11: TLabel
            Left = 219
            Top = 3
            Width = 19
            Height = 13
            Caption = 'Ano'
          end
          object Label12: TLabel
            Left = 291
            Top = 3
            Width = 54
            Height = 13
            Caption = 'Localiza'#231#227'o'
          end
          object Label15: TLabel
            Left = 152
            Top = 49
            Width = 27
            Height = 13
            Caption = 'Nome'
          end
          object EditAutorBusca: TEdit
            Left = 3
            Top = 22
            Width = 190
            Height = 21
            TabOrder = 0
          end
          object EditAnoBusca: TEdit
            Left = 219
            Top = 22
            Width = 46
            Height = 21
            TabOrder = 1
          end
          object Button5: TButton
            Left = 3
            Top = 67
            Width = 75
            Height = 25
            Caption = 'Buscar'
            TabOrder = 2
          end
          object EditNomeBusca: TEdit
            Left = 152
            Top = 68
            Width = 297
            Height = 21
            TabOrder = 3
          end
          object ComboBoxLocalizacoesBusca: TComboBox
            Left = 288
            Top = 22
            Width = 161
            Height = 21
            TabOrder = 4
          end
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object TGroupBox
    Left = 0
    Top = 25
    Width = 178
    Height = 392
    Align = alLeft
    TabOrder = 3
    object Label3: TLabel
      Left = 16
      Top = 10
      Width = 32
      Height = 14
      Caption = 'Nome'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelNomeUsuario: TLabel
      Left = 16
      Top = 29
      Width = 20
      Height = 14
      Caption = '-----'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 48
      Width = 65
      Height = 14
      Caption = 'Sobrenome'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelSobrenomeUsuario: TLabel
      Left = 16
      Top = 67
      Width = 20
      Height = 14
      Caption = '-----'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 86
      Width = 21
      Height = 14
      Caption = 'CPF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelCpfUsuario: TLabel
      Left = 16
      Top = 105
      Width = 20
      Height = 14
      Caption = '-----'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 16
      Top = 183
      Width = 75
      Height = 14
      Caption = 'Empr'#233'tismos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelEmprestimosUsuario: TLabel
      Left = 16
      Top = 202
      Width = 20
      Height = 14
      Caption = '-----'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 16
      Top = 229
      Width = 66
      Height = 14
      Caption = 'Solicita'#231#245'es'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelSolicitacoesUsuario: TLabel
      Left = 16
      Top = 252
      Width = 20
      Height = 14
      Caption = '-----'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 16
      Top = 280
      Width = 52
      Height = 14
      Caption = 'Reservas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelReservasUsuario: TLabel
      Left = 16
      Top = 299
      Width = 20
      Height = 14
      Caption = '-----'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 16
      Top = 328
      Width = 37
      Height = 14
      Caption = 'Multas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelMultasUsuario: TLabel
      Left = 16
      Top = 347
      Width = 20
      Height = 14
      Caption = '-----'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
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