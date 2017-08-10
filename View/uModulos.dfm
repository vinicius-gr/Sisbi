object Modulos: TModulos
  OldCreateOrder = False
  Height = 335
  Width = 441
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
            Items = <
              item
                Action = Action2
              end>
            Caption = '&Sair'
          end>
      end
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
            Items = <
              item
                Action = Action2
              end>
            Caption = '&Sair'
          end>
        ActionBar = FormMainAdm.ActionMainMenuBar1
      end>
    Left = 32
    Top = 16
    StyleName = 'Platform Default'
    object Action1: TAction
      Category = '&Ajuda'
      Caption = '&Sobre'
    end
    object Action2: TAction
      Category = '&Sair'
      Caption = '&Logout'
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
    Left = 352
    Top = 16
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
    object FDMemTableUsuariosSenh: TStringField
      FieldName = 'Senha'
    end
    object FDMemTableUsuariosPermissao: TStringField
      DisplayLabel = 'Permiss'#227'o'
      FieldName = 'Permissao'
    end
  end
  object DataSourceUsuarios: TDataSource
    DataSet = FDMemTableUsuarios
    Left = 216
    Top = 16
  end
  object FDMemTableLivros: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 352
    Top = 72
    object FDMemTableLivrosCodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Codigo'
    end
    object FDMemTableLivrosTitulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'Titulo'
    end
    object FDMemTableLivrosAutor: TStringField
      FieldName = 'Autor'
    end
    object FDMemTableLivrosAno: TIntegerField
      FieldName = 'Ano'
    end
    object FDMemTableLivrosLocalizacao: TIntegerField
      DisplayLabel = 'Localiza'#231#227'o'
      FieldName = 'Localizacao'
    end
  end
  object DataSourceLivros: TDataSource
    DataSet = FDMemTableLivros
    Left = 216
    Top = 72
  end
  object FDMemTableUnidades: TFDMemTable
    DetailFields = 'Cep;Cidade;Codigo;Nome'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 352
    Top = 136
    object FDMemTableUnidadesCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Codigo'
    end
    object FDMemTableUnidadesNome: TStringField
      FieldName = 'Nome'
    end
    object FDMemTableUnidadesCep: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'Cep'
    end
    object FDMemTableUnidadesCidade: TStringField
      FieldName = 'Cidade'
    end
  end
  object DataSourceUnidades: TDataSource
    DataSet = FDMemTableUnidades
    Left = 216
    Top = 136
  end
end
