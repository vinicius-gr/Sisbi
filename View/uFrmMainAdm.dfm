object FormMainAdm: TFormMainAdm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'FormMainAdm'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 668
    Height = 25
    UseSystemFont = False
    ActionManager = Modulos.ActionManager1
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
    Panels = <
      item
        Alignment = taRightJustify
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Width = 200
      end
      item
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Width = 200
      end
      item
        Width = 200
      end>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 25
    Width = 668
    Height = 392
    ActivePage = TabSheet2
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Usu'#225'rios'
      object DBGridUsuarios: TDBGrid
        Left = 3
        Top = 127
        Width = 644
        Height = 222
        DataSource = Modulos.DataSourceUsuarios
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
        object BunttonIncluirUsuario: TButton
          Left = 283
          Top = 80
          Width = 75
          Height = 25
          Caption = 'Incluir'
          TabOrder = 5
          OnClick = BunttonIncluirUsuarioClick
        end
        object ButtonAlterarUsuario: TButton
          Left = 374
          Top = 80
          Width = 75
          Height = 25
          Caption = 'Alterar'
          TabOrder = 6
          OnClick = ButtonAlterarUsuarioClick
        end
        object ButtonExcluirUsuario: TButton
          Left = 462
          Top = 80
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 7
          OnClick = ButtonExcluirUsuarioClick
        end
        object ButtonPesquisarUsuario: TButton
          Left = 550
          Top = 80
          Width = 75
          Height = 25
          Caption = 'Pesquisar'
          TabOrder = 8
          OnClick = ButtonPesquisarUsuarioClick
        end
        object TButton
          Left = 187
          Top = 80
          Width = 75
          Height = 25
          Caption = 'Novo'
          TabOrder = 9
          OnClick = ButtonNovoUsuarioClick
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
        end
        object Label6: TLabel
          Left = 376
          Top = 24
          Width = 27
          Height = 13
          Caption = 'Autor'
        end
        object Label7: TLabel
          Left = 576
          Top = 24
          Width = 19
          Height = 13
          Caption = 'Ano'
        end
        object Label9: TLabel
          Left = 16
          Top = 72
          Width = 54
          Height = 13
          Caption = 'Localiza'#231#227'o'
        end
        object Label2: TLabel
          Left = 136
          Top = 24
          Width = 26
          Height = 13
          Caption = 'T'#237'tulo'
        end
        object ButtonNovoLivro: TButton
          Left = 236
          Top = 88
          Width = 75
          Height = 25
          Caption = 'Novo'
          TabOrder = 0
          OnClick = ButtonNovoLivroClick
        end
        object ButtonIncluirLivro: TButton
          Left = 317
          Top = 88
          Width = 75
          Height = 25
          Caption = 'Incluir'
          TabOrder = 1
          OnClick = ButtonIncluirLivroClick
        end
        object ButtonAlterarLivro: TButton
          Left = 404
          Top = 85
          Width = 75
          Height = 25
          Caption = 'Alterar'
          TabOrder = 2
          OnClick = ButtonAlterarLivroClick
        end
        object ButtonExcluirLivro: TButton
          Left = 485
          Top = 88
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 3
          OnClick = ButtonExcluirLivroClick
        end
        object ButtonPesquisarLivro: TButton
          Left = 566
          Top = 88
          Width = 75
          Height = 25
          Caption = 'Pesquisar'
          TabOrder = 4
          OnClick = ButtonPesquisarLivroClick
        end
        object EditCodigo: TEdit
          Left = 16
          Top = 45
          Width = 89
          Height = 21
          TabOrder = 5
        end
        object EditTitulo: TEdit
          Left = 136
          Top = 43
          Width = 209
          Height = 21
          TabOrder = 6
        end
        object EditAutor: TEdit
          Left = 374
          Top = 43
          Width = 163
          Height = 21
          TabOrder = 7
        end
        object EditAno: TEdit
          Left = 576
          Top = 43
          Width = 49
          Height = 21
          TabOrder = 8
        end
        object ComboBoxLocalizacoes: TComboBox
          Left = 16
          Top = 91
          Width = 201
          Height = 21
          TabOrder = 9
        end
      end
      object DBGridLivros: TDBGrid
        Left = 3
        Top = 127
        Width = 644
        Height = 222
        DataSource = Modulos.DataSourceLivros
        DrawingStyle = gdsGradient
        GradientEndColor = clMedGray
        GradientStartColor = clSkyBlue
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnKeyUp = DBGridLivrosKeyUp
        OnMouseUp = DBGridLivrosMouseUp
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Titulo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Autor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ano'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cidade'
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Unidades'
      ImageIndex = 2
      object Label14: TLabel
        Left = 168
        Top = 216
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
      end
      object Label15: TLabel
        Left = 168
        Top = 544
        Width = 27
        Height = 13
        Caption = 'Nome'
        FocusControl = DBEdit2
      end
      object Label16: TLabel
        Left = 168
        Top = 872
        Width = 19
        Height = 13
        Caption = 'CEP'
        FocusControl = DBEdit3
      end
      object Label17: TLabel
        Left = 168
        Top = 1200
        Width = 33
        Height = 13
        Caption = 'Cidade'
        FocusControl = DBEdit4
      end
      object GroupBox3: TGroupBox
        Left = 3
        Top = 0
        Width = 654
        Height = 137
        Caption = 'Informa'#231#245'es'
        TabOrder = 0
        object Label11: TLabel
          Left = 16
          Top = 24
          Width = 27
          Height = 13
          Caption = 'Nome'
        end
        object Label12: TLabel
          Left = 208
          Top = 24
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label13: TLabel
          Left = 496
          Top = 24
          Width = 19
          Height = 13
          Caption = 'CEP'
        end
        object Label10: TLabel
          Left = 16
          Top = 80
          Width = 33
          Height = 13
          Caption = 'Codigo'
        end
        object EditNomeUnidade: TEdit
          Left = 16
          Top = 43
          Width = 161
          Height = 21
          TabOrder = 0
        end
        object EditCidadeUnidade: TEdit
          Left = 208
          Top = 43
          Width = 257
          Height = 21
          TabOrder = 1
        end
        object EditCepUnidade: TEdit
          Left = 496
          Top = 43
          Width = 129
          Height = 21
          TabOrder = 2
        end
        object ButtonIncluirUnidade: TButton
          Left = 464
          Top = 96
          Width = 75
          Height = 25
          Caption = 'Incluir'
          TabOrder = 3
          OnClick = ButtonIncluirUnidadeClick
        end
        object ButtonExcluirUnidade: TButton
          Left = 566
          Top = 96
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 4
          OnClick = ButtonExcluirUnidadeClick
        end
        object EditCodigoUnidade: TEdit
          Left = 16
          Top = 99
          Width = 121
          Height = 21
          TabOrder = 5
        end
      end
      object DBGridUnidades: TDBGrid
        Left = 3
        Top = 143
        Width = 654
        Height = 216
        DataSource = Modulos.DataSourceUnidades
        DrawingStyle = gdsGradient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnKeyUp = DBGridUnidadesKeyUp
        OnMouseUp = DBGridUnidadesMouseUp
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cep'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cidade'
            Visible = True
          end>
      end
      object DBEdit1: TDBEdit
        Left = 168
        Top = 376
        Width = 264
        Height = 21
        DataField = 'Codigo'
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 168
        Top = 704
        Width = 264
        Height = 21
        DataField = 'Nome'
        TabOrder = 3
      end
      object DBEdit3: TDBEdit
        Left = 168
        Top = 1032
        Width = 264
        Height = 21
        DataField = 'Cep'
        TabOrder = 4
      end
      object DBEdit4: TDBEdit
        Left = 168
        Top = 1360
        Width = 264
        Height = 21
        DataField = 'Cidade'
        TabOrder = 5
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 568
    Top = 408
  end
end
