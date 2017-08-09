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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
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
    Panels = <
      item
        Alignment = taRightJustify
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Width = 337
      end
      item
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Width = 337
      end>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 25
    Width = 658
    Height = 382
    ActivePage = TabSheet2
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 2
    ExplicitLeft = -8
    ExplicitTop = 31
    object TabSheet1: TTabSheet
      Caption = 'Usu'#225'rios'
      object DBGridUsuarios: TDBGrid
        Left = 3
        Top = 127
        Width = 644
        Height = 222
        DataSource = DataSourceUsuarios
        DrawingStyle = gdsGradient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnKeyUp = DBGridUsuariosKeyUp
        OnMouseUp = DBGridUsuariosMouseUp
        Columns = <
          item
            Expanded = False
            FieldName = 'Cpf'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FNome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LNome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Senha'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Permissao'
            Visible = True
          end>
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 0
        Width = 644
        Height = 121
        Caption = 'Informa'#231#245'es'
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
          OnClick = ButtonAlterarClick
        end
        object ButtonExcluir: TButton
          Left = 462
          Top = 80
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 7
          OnClick = ButtonExcluirClick
        end
        object ButtonPesquisar: TButton
          Left = 550
          Top = 80
          Width = 75
          Height = 25
          Caption = 'Pesquisar'
          TabOrder = 8
          OnClick = ButtonPesquisarClick
        end
        object ButtonNovo: TButton
          Left = 187
          Top = 80
          Width = 75
          Height = 25
          Caption = 'Novo'
          TabOrder = 9
          OnClick = ButtonNovoClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Livros'
      ImageIndex = 2
      object GroupBox1: TGroupBox
        Left = 3
        Top = 0
        Width = 644
        Height = 121
        Caption = 'Informa'#231#245'es'
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 24
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = DBEdit1
        end
        object Label6: TLabel
          Left = 376
          Top = 24
          Width = 27
          Height = 13
          Caption = 'Autor'
          FocusControl = DBEdit3
        end
        object Label7: TLabel
          Left = 576
          Top = 24
          Width = 19
          Height = 13
          Caption = 'Ano'
          FocusControl = DBEdit4
        end
        object Label9: TLabel
          Left = 16
          Top = 72
          Width = 54
          Height = 13
          Caption = 'Localizacao'
          FocusControl = DBEdit5
        end
        object Label2: TLabel
          Left = 136
          Top = 24
          Width = 26
          Height = 13
          Caption = 'T'#237'tulo'
          FocusControl = DBEdit1
        end
        object DBEdit1: TDBEdit
          Left = 16
          Top = 43
          Width = 97
          Height = 21
          DataField = 'Codigo'
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 136
          Top = 43
          Width = 217
          Height = 21
          DataField = 'Titulo'
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 376
          Top = 43
          Width = 177
          Height = 21
          DataField = 'Autor'
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 576
          Top = 43
          Width = 49
          Height = 21
          DataField = 'Ano'
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 16
          Top = 88
          Width = 97
          Height = 21
          DataField = 'Localizacao'
          TabOrder = 4
        end
        object Button1: TButton
          Left = 187
          Top = 88
          Width = 75
          Height = 25
          Caption = 'Novo'
          TabOrder = 5
          OnClick = ButtonNovoClick
        end
        object Button2: TButton
          Left = 283
          Top = 88
          Width = 75
          Height = 25
          Caption = 'Incluir'
          TabOrder = 6
          OnClick = BunttonIncluirClick
        end
        object Button3: TButton
          Left = 374
          Top = 88
          Width = 75
          Height = 25
          Caption = 'Alterar'
          TabOrder = 7
          OnClick = ButtonAlterarClick
        end
        object Button4: TButton
          Left = 462
          Top = 88
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 8
          OnClick = ButtonExcluirClick
        end
        object Button5: TButton
          Left = 550
          Top = 88
          Width = 75
          Height = 25
          Caption = 'Pesquisar'
          TabOrder = 9
          OnClick = ButtonPesquisarClick
        end
      end
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
  object FDMemTableUsuarios: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 484
    Top = 404
    object FDMemTableUsuariosCpf: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'Cpf'
    end
    object FDMemTableUsuariosFNome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'FNome'
    end
    object FDMemTableUsuariosLNome: TStringField
      DisplayLabel = 'Sobrenome'
      FieldName = 'LNome'
    end
    object FDMemTableUsuariosSenha: TStringField
      FieldName = 'Senha'
    end
    object FDMemTableUsuariosPermissao: TStringField
      DisplayLabel = 'Permiss'#227'o'
      FieldName = 'Permissao'
    end
  end
  object DataSourceUsuarios: TDataSource
    DataSet = FDMemTableUsuarios
    Left = 556
    Top = 404
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 616
    Top = 400
  end
end
