object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 316
  Width = 367
  object FDMemTableReservas: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 288
    Top = 24
    object FDMemTableReservasCodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Codigo'
    end
    object FDMemTableReservasTitulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'Titulo'
    end
  end
  object DataSourceReservas: TDataSource
    DataSet = FDMemTableReservas
    Left = 160
    Top = 24
  end
  object FDMemTableEmprestimos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 288
    Top = 112
    object FDMemTableEmprestimosCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Codigo'
    end
    object FDMemTableEmprestimosInicio: TDateField
      FieldName = 'Inicio'
    end
    object FDMemTableEmprestimosVencimento: TDateField
      FieldName = 'Vencimento'
    end
    object FDMemTableEmprestimosRenovacoes: TIntegerField
      DisplayLabel = 'Renova'#231#245'es'
      FieldName = 'Renovacoes'
    end
    object FDMemTableEmprestimosId_Livro: TStringField
      DisplayLabel = 'C'#243'digo Livro'
      FieldName = 'Id_Livro'
    end
    object FDMemTableEmprestimosTitulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'Titulo'
    end
  end
  object DataSourceEmprestimos: TDataSource
    DataSet = FDMemTableEmprestimos
    Left = 160
    Top = 112
  end
  object FDMemTableMultas: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 288
    Top = 184
    object FDMemTableMultasValor: TFloatField
      FieldName = 'Valor'
    end
    object FDMemTableMultasId_Usuario: TStringField
      FieldName = 'Id_Usuario'
    end
    object FDMemTableMultasId_Emprestimo: TIntegerField
      FieldName = 'Id_Emprestimo'
    end
  end
  object DataSourceMultas: TDataSource
    DataSet = FDMemTableMultas
    Left = 152
    Top = 184
  end
end
