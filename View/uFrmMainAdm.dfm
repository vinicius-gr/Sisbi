object FormMainAdm: TFormMainAdm
  Left = 0
  Top = 0
  Caption = 'FormMainAdm'
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
    Top = 407
    Width = 658
    Height = 24
    Panels = <>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 25
    Width = 658
    Height = 382
    ActivePage = TabSheet1
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Usu'#225'rios'
      object DBGrid2: TDBGrid
        Left = 3
        Top = 127
        Width = 644
        Height = 222
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 0
        Width = 644
        Height = 121
        Caption = 'Informacoes'
        TabOrder = 1
        object Label3: TLabel
          Left = 160
          Top = 24
          Width = 27
          Height = 13
          Caption = 'Nome'
        end
        object Label4: TLabel
          Left = 304
          Top = 24
          Width = 54
          Height = 13
          Caption = 'Sobrenome'
        end
        object Label5: TLabel
          Left = 488
          Top = 24
          Width = 30
          Height = 13
          Caption = 'Senha'
        end
        object Label8: TLabel
          Left = 16
          Top = 24
          Width = 19
          Height = 13
          Caption = 'CPF'
        end
        object EditNome: TEdit
          Left = 160
          Top = 43
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object EditSobrenome: TEdit
          Left = 304
          Top = 43
          Width = 161
          Height = 21
          TabOrder = 1
        end
        object EditSenha: TEdit
          Left = 488
          Top = 43
          Width = 137
          Height = 21
          TabOrder = 2
        end
        object EditCpf: TEdit
          Left = 16
          Top = 43
          Width = 121
          Height = 21
          TabOrder = 3
        end
        object CheckBoxPermissao: TCheckBox
          Left = 16
          Top = 88
          Width = 97
          Height = 17
          Caption = 'Administrador'
          TabOrder = 4
        end
        object BunttonIncluir: TButton
          Left = 283
          Top = 80
          Width = 75
          Height = 25
          Caption = 'Incluir'
          TabOrder = 5
          OnClick = BunttonIncluirClick
        end
        object ButtonAlterar: TButton
          Left = 374
          Top = 80
          Width = 75
          Height = 25
          Caption = 'Alterar'
          TabOrder = 6
        end
        object ButtonExcluir: TButton
          Left = 462
          Top = 80
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 7
        end
        object ButtonPesquisar: TButton
          Left = 550
          Top = 80
          Width = 75
          Height = 25
          Caption = 'Pesquisar'
          TabOrder = 8
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Livros'
      ImageIndex = 2
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
    Left = 592
    Top = 8
    StyleName = 'Platform Default'
    object Action1: TAction
      Category = '&Ajuda'
      Caption = '&Sobre'
    end
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 580
    Top = 196
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 580
    Top = 252
  end
end
