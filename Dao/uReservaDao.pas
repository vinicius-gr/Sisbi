unit uReservaDao;

interface

uses
  FireDAC.Comp.Client, uConexao, uReservaModel, System.SysUtils;

type
  TReservaDao = class

  private
    FConexao: TConexao;

  public
    constructor Create;

    function Incluir(ReservaModel: TReservaModel): Boolean;
    function Alterar(ReservaModel: TReservaModel): Boolean;
    function Excluir(ReservaModel: TReservaModel): Boolean;

    function Obter: TFDQuery;
    function ObterSelecionadas(IdUsuario: string): TFDQuery;
  end;

implementation

{ TReservaDao }

uses uSistemaControl, uUnidadeModel, uUsuarioModel, Vcl.Dialogs;

constructor TReservaDao.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TReservaDao.Alterar(ReservaModel: TReservaModel): Boolean;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  try
    VQry.ExecSQL('UPDATE Reserva SET Fim = :fim WHERE (Id_Usuario = :idUsuario AND Id_Livro = :idLivro)', [ReservaModel.Fim, ReservaModel.IdUsuario, ReservaModel.IdLivro]);
    Result := True;
  finally
    VQry.Free;
  end;
end;

function TReservaDao.Excluir(ReservaModel: TReservaModel): Boolean;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  try
    VQry.ExecSQL('DELETE FROM Reserva WHERE (Id_Usuario = :idUsuario AND Id_Livro = :idLivro)', [ReservaModel.IdUsuario, ReservaModel.IdLivro]);
    Result := True;
  finally
    VQry.Free;
  end;
end;

function TReservaDao.Incluir(ReservaModel: TReservaModel): Boolean;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();

  try
    VQry.ExecSQL(' INSERT INTO Reserva VALUES (:inicio, :fim, :idUsuario, :idLivro, :hora) ', [ReservaModel.Inicio, ReservaModel.Fim, ReservaModel.IdUsuario, ReservaModel.IdLivro, ReservaModel.Hora]);
    Result := True;
  finally
    VQry.Free;
  end;
end;

function TReservaDao.Obter: TFDQuery;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  VQry.Open(' SELECT * FROM Reserva order by 1 ');
  Result := VQry;
end;

function TReservaDao.ObterSelecionadas(IdUsuario: string): TFDQuery;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  VQry.Open(' SELECT r.Id_Livro AS Codigo, l.Titulo FROM Reserva r, Livro l WHERE (r.Id_Usuario = :idUsuario AND r.Id_Livro = l.Codigo) ', [IdUsuario]);
  Result := VQry;
end;

end.
