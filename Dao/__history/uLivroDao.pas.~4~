unit uLivroDao;

interface

uses
  FireDAC.Comp.Client, uConexao, uLivroModel, System.SysUtils;

type
  TLivroDao = class

  private
    FConexao: TConexao;

  public
    constructor Create;

    function Incluir(LivroModel: TLivroModel): Boolean;
    function Alterar(LivroModel: TLivroModel): Boolean;
    function Excluir(LivroModel: TLivroModel): Boolean;

    function Obter: TFDQuery;
    function Buscar(LivroModel: TLivroModel): TFDQuery;
    function ObterDados(LivroModel: TLivroModel): TFDQuery;
  end;

implementation

{ TLivroDao }

uses uSistemaControl;

constructor TLivroDao.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TLivroDao.Alterar(LivroModel: TLivroModel): Boolean;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  try
    VQry.ExecSQL('UPDATE Livro SET Titulo = :titulo, Autor = :autor, Ano = :ano, Localizacao = :localizacao WHERE (Codigo = :codigo)', [LivroModel.Titulo, LivroModel.Autor, LivroModel.Ano, LivroModel.Localizacao, LivroModel.Codigo]);
    Result := True;
  finally
    VQry.Free;
  end;
end;

function TLivroDao.Excluir(LivroModel: TLivroModel): Boolean;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  try
    VQry.ExecSQL('DELETE FROM Livro WHERE (Codigo = :codigo)', [LivroModel.Codigo]);

    Result := True;
  finally
    VQry.Free;
  end;
end;

function TLivroDao.Incluir(LivroModel: TLivroModel): Boolean;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  try
    VQry.ExecSQL('INSERT INTO Livro VALUES (:codigo, :titulo, :autor, :ano, :localizacao)', [LivroModel.Codigo, LivroModel.Titulo, LivroModel.Autor, LivroModel.Ano, LivroModel.Localizacao]);

    Result := True;
  finally
    VQry.Free;
  end;
end;

function TLivroDao.Obter: TFDQuery;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();

  VQry.Open(' SELECT * FROM Livro order by 1 ');

  Result := VQry;
end;

function TLivroDao.Buscar(LivroModel: TLivroModel): TFDQuery;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();

  VQry.Open(' SELECT Codigo, Titulo, Autor, Ano, Localizacao FROM Livro WHERE (Codigo = :codigo) OR (Titulo = :titulo) OR (Autor = :autor) ', [LivroModel.Codigo, LivroModel.Titulo, LivroModel.Autor]);

  Result := VQry;
end;

function TLivroDao.ObterDados(LivroModel: TLivroModel): TFDQuery;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();

  VQry.Open(' SELECT * FROM Usuario WHERE Codigo = :codigo ', [LivroModel.Codigo]);

  Result := VQry;
end;

end.
