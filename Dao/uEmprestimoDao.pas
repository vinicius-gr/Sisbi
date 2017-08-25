unit uEmprestimoDao;

interface

uses
  FireDAC.Comp.Client, uConexao, uEmprestimoModel, System.SysUtils;

type
  TEmprestimoDao = class

  private
    FConexao: TConexao;
    VQry: TFDQuery;

  public

    constructor Create;

    function Incluir(EmprestimoModel: TEmprestimoModel): Boolean;
    function Excluir(EmprestimoModel: TEmprestimoModel): Boolean;
    function Renovar(EmprestimoModel: TEmprestimoModel): Boolean;

    function ObterSelecionadas(IdUsuario: string): TFDQuery;
    function Obter: TFDQuery;

  end;

implementation

{ TEmprestimoDao }

uses uSistemaControl, uUnidadeModel, uUsuarioModel, Vcl.Dialogs,
  FireDAC.Phys.MSSQL;

constructor TEmprestimoDao.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TEmprestimoDao.Excluir(EmprestimoModel: TEmprestimoModel): Boolean;
begin
  VQry := FConexao.CriarQuery();
  try
    try
    VQry.ExecSQL(' DELETE FROM Emprestimo WHERE (Codigo = :codigo) ', [EmprestimoModel.Codigo]);
    VQry.ExecSQL(' UPDATE Livro SET Disponivel = 1 WHERE (Codigo = :codigo) ', [EmprestimoModel.IdLivro]);
    Result := True;
    except
      on E : EMSSQLNativeException do
        MessageDlg('Há uma multa para este empréstimo. Favor realizar o pagamento.', mtWarning, [mbOK], 0);
    end;
  finally
    VQry.Free;
  end;
end;

function TEmprestimoDao.Renovar(EmprestimoModel: TEmprestimoModel): Boolean;
begin
  VQry := FConexao.CriarQuery();
  try
    try
      VQry.ExecSQL(' UPDATE Emprestimo SET Vencimento = :vencimento, Renovacoes = :renovacoes WHERE (Codigo = :codigo) ', [EmprestimoModel.Vencimento, EmprestimoModel.Renovacoes, EmprestimoModel.Codigo]);
      Result := True;
    except
      on E : EMSSQLNativeException do
        MessageDlg('Ocorreu erro ao renovar o empréstimo.', mtWarning, [mbOK], 0);
    end;
  finally
     VQry.Free;
  end;

end;

function TEmprestimoDao.Incluir(EmprestimoModel: TEmprestimoModel): Boolean;
begin
  VQry := FConexao.CriarQuery();
  try
    try
    VQry.ExecSQL(' INSERT INTO Emprestimo VALUES (:inicio, :vencimento, :renovacoes, :idUsuario, :idLivro ) ', [EmprestimoModel.Inicio, EmprestimoModel.Vencimento, EmprestimoModel.Renovacoes, EmprestimoModel.IdUsuario, EmprestimoModel.IdLivro]);
    Result := True;
    except
      on E : EMSSQLNativeException do
        MessageDlg('Ocorreu um erro ao realizar o empréstimo.', mtWarning, [mbOK], 0);
    end;
  finally
    VQry.Free;
  end;
end;

function TEmprestimoDao.Obter: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  VQry.Open(' SELECT e.Codigo AS Codigo, e.Vencimento AS Vencimento, e.Id_Livro AS Id_Livro, e.Id_Usuario AS Id_Usuario, l.Titulo AS Titulo FROM Emprestimo e INNER JOIN Livro l ON (e.Id_Livro = l.Codigo) ');
  Result := VQry;
end;

function TEmprestimoDao.ObterSelecionadas(IdUsuario: string): TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  VQry.Open(' SELECT e.Codigo AS Codigo, e.Inicio AS Inicio, e.Vencimento AS Vencimento, e.Renovacoes AS Renovacoes, e.Id_Livro AS Id_Livro, l.Titulo AS Titulo FROM Emprestimo e, Livro l WHERE (e.Id_Usuario = :idUsuario) AND (e.Id_Livro = l.Codigo) ', [IdUsuario]);
  Result := VQry;
end;

end.
