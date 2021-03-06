unit uMultaDao;

interface

uses
  FireDAC.Comp.Client, uConexao, uMultaModel, System.SysUtils,
  FireDAC.Phys.MSSQL;

type
  TMultaDao = class

  private
    FConexao: TConexao;

  public

    constructor Create;

    function Incluir(MultaModel: TMultaModel): Boolean;
    function AtualizarValor(MultaModel: TMultaModel): Boolean;
    function Excluir(MultaModel: TMultaModel): Boolean;

    function Buscar(MultaModel: TMultaModel): TFDQuery;
    function Obter: TFDQuery;
    function ObterSelecionadas(IdUsuario: string): TFDQuery;
  end;

implementation

{ TMultaDao }

uses uSistemaControl, uUnidadeModel, uUsuarioModel, Vcl.Dialogs;

function TMultaDao.AtualizarValor(MultaModel: TMultaModel): Boolean;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  try
    VQry.ExecSQL('UPDATE Multa SET Valor = :valor WHERE (Id_Usuario = :idUsuario AND Id_Emprestimo = :idEmprestimo)', [MultaModel.Valor, MultaModel.IdUsuario, MultaModel.IdEmprestimo]);
    Result := True;
  finally
    VQry.Free;
  end;
end;

function TMultaDao.Buscar(MultaModel: TMultaModel): TFDQuery;
var
  VQry: TFDQuery;
begin
  try
    VQry := FConexao.CriarQuery();
    VQry.Open('SELECT * FROM Multa WHERE (Id_Usuario = :idUsuario AND Id_Emprestimo = :idEmprestimo)', [MultaModel.IdUsuario, MultaModel.IdEmprestimo]);
    Result := VQry;
  finally
    VQry.Free;
  end;
end;

constructor TMultaDao.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TMultaDao.Excluir(MultaModel: TMultaModel): Boolean;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  try
    VQry.ExecSQL('DELETE FROM Multa WHERE (Id_Usuario = :idUsuario AND Id_Emprestimo = :idLivro)', [MultaModel.IdUsuario, MultaModel.IdEmprestimo]);
    Result := True;
  finally
    VQry.Free;
  end;
end;

function TMultaDao.Incluir(MultaModel: TMultaModel): Boolean;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  try
  try
    VQry.ExecSQL(' INSERT INTO Multa VALUES (:id_Emprestimo, :idUsuario, :valor ) ', [MultaModel.IdEmprestimo, MultaModel.IdUsuario, MultaModel.Valor]);
    Result := True;
  except
    on E : EMSSQLNativeException do
        MessageDlg('Emprestimo e/ou usuario n�o localizado(s).', mtWarning, [mbOK], 0);
  end;
  finally
    VQry.Free;
  end;
end;

function TMultaDao.Obter: TFDQuery;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  VQry.Open(' SELECT * FROM Multa order by 1 ');
  Result := VQry;
end;

function TMultaDao.ObterSelecionadas(IdUsuario: string): TFDQuery;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  VQry.Open(' SELECT * FROM Multa WHERE (Id_Usuario = :idUsuario) ', [IdUsuario]);
  Result := VQry;
end;

end.
