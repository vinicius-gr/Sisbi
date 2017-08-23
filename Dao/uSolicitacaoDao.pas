unit uSolicitacaoDao;

interface

uses
  FireDAC.Comp.Client, uConexao, uSolicitacaoModel, System.SysUtils,
  FireDAC.Phys.MSSQL;

type
  TSolicitacaoDao = class

  private
    FConexao: TConexao;

  public

    constructor Create;

    function Incluir(SolicitacaoModel: TSolicitacaoModel): Boolean;
    function Excluir(SolicitacaoModel: TSolicitacaoModel): Boolean;

    function Obter: TFDQuery;
    function ObterSelecionadas(IdUsuario: string): TFDQuery;
  end;

implementation

{ TSolicitacaoDao }

uses uSistemaControl, uUnidadeModel, uUsuarioModel, Vcl.Dialogs;

constructor TSolicitacaoDao.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TSolicitacaoDao.Excluir(SolicitacaoModel: TSolicitacaoModel): Boolean;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  try
    VQry.ExecSQL('DELETE FROM Solicitacao WHERE (Id_Usuario = :idUsuario AND Id_Livro = :idLivro)', [SolicitacaoModel.IdUsuario, SolicitacaoModel.IdLivro]);
    Result := True;
  finally
    VQry.Free;
  end;
end;

function TSolicitacaoDao.Incluir(SolicitacaoModel: TSolicitacaoModel): Boolean;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  try
  try
    VQry.ExecSQL(' INSERT INTO Solicitacao(Data, Hora, Destino, Id_Usuario, Id_Livro) VALUES (:data, :hora, :destino, :idUsuario, :idLivro ) ', [SolicitacaoModel.Data, SolicitacaoModel.Hora, SolicitacaoModel.Destino, SolicitacaoModel.IdUsuario, SolicitacaoModel.IdLivro]);
    Result := True;
  except
    on E : EMSSQLNativeException do
        MessageDlg('Unidade n�o cadastrada.', mtWarning, [mbOK], 0);
  end;
  finally
    VQry.Free;
  end;
end;

function TSolicitacaoDao.Obter: TFDQuery;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  VQry.Open(' SELECT * FROM Solicitacao order by 1 ');
  Result := VQry;
end;

function TSolicitacaoDao.ObterSelecionadas(IdUsuario: string): TFDQuery;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  VQry.Open(' SELECT * FROM Solicitacao WHERE (Id_Usuario = :idUsuario) ', [IdUsuario]);
  Result := VQry;
end;

end.
