﻿object Modulos: TModulos
  OldCreateOrder = False
  OnCreate = DataModuleCreate
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
  object FDMemTableLivros: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 352
    Top = 80
    object FDMemTableLivrosCódigo: TStringField
      FieldName = 'Codigo'
    end
    object StringField1: TStringField
      Alignment = taCenter
      FieldName = 'Titulo'
    end
    object StringField2: TStringField
      Alignment = taCenter
      FieldName = 'Autor'
    end
    object IntegerField1: TIntegerField
      Alignment = taCenter
      FieldName = 'Ano'
    end
    object FDMemTableLivrosNome: TStringField
      Alignment = taCenter
      DisplayLabel = 'Biblioteca'
      FieldName = 'Nome'
    end
    object FDMemTableLivrosCidade: TStringField
      FieldName = 'Cidade'
    end
    object FDMemTableLivrosDisponivel: TBooleanField
      FieldName = 'Disponivel'
    end
  end
  object DataSourceLivros: TDataSource
    DataSet = FDMemTableLivros
    Left = 224
    Top = 80
  end
end
