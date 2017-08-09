unit uUsuarioDao;

interface

uses
  FireDAC.Comp.Client, uConexao, uUsuarioModel, System.SysUtils;

type
  TUsuarioDao = class

  private
    FConexao: TConexao;


  public
    constructor Create;

    function Incluir(UsuarioModel: TUsuarioModel): Boolean;
    function Alterar(UsuarioModel: TUsuarioModel): Boolean;
    function Excluir(UsuarioModel: TUsuarioModel): Boolean;

    function Obter: TFDQuery;
    function Buscar(UsuarioModel: TUsuarioModel): TFDQuery;
    function ObterSenhaPermissao(UsuarioModel: TUsuarioModel): TFDQuery;
  end;

implementation

{ TUsuarioDao }

uses uSistemaControl;

constructor TUsuarioDao.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TUsuarioDao.Alterar(UsuarioModel: TUsuarioModel): Boolean;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  try
    VQry.ExecSQL('UPDATE Usuario SET FNome = :fnome, LNome = :snome, Senha = :senha, Permissao = :permissao WHERE (Cpf = :cpf)', [UsuarioModel.Nome , UsuarioModel.SNome, UsuarioModel.Senha, UsuarioModel.Permissao, UsuarioModel.Cpf]);
    Result := True;
  finally
    VQry.Free;
  end;
end;



function TUsuarioDao.Excluir(UsuarioModel: TUsuarioModel): Boolean;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  try
    VQry.ExecSQL('DELETE FROM Usuario WHERE (Cpf = :cpf)', [UsuarioModel.Cpf]);

    Result := True;
  finally
    VQry.Free;
  end;
end;

function TUsuarioDao.Incluir(UsuarioModel: TUsuarioModel): Boolean;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  try
    VQry.ExecSQL('INSERT INTO Usuario (Cpf, FNome, LNome, Senha, Permissao) VALUES (:cpf, :fnome, :snome, :senha, :permissao)', [UsuarioModel.Cpf, UsuarioModel.Nome, UsuarioModel.SNome, UsuarioModel.Senha, UsuarioModel.Permissao]);

    Result := True;
  finally
    VQry.Free;
  end;
end;

function TUsuarioDao.Obter: TFDQuery;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();

  VQry.Open(' SELECT Cpf, FNome, LNome, Senha, Permissao FROM Usuario order by 1 ');

  Result := VQry;
end;

function TUsuarioDao.Buscar(UsuarioModel: TUsuarioModel): TFDQuery;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();

  VQry.Open(' SELECT Cpf, FNome, LNome, Senha, Permissao FROM Usuario WHERE Cpf = :cpf ', [UsuarioModel.Cpf]);

  Result := VQry;
end;

function TUsuarioDao.ObterSenhaPermissao(UsuarioModel: TUsuarioModel): TFDQuery;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();

  VQry.Open(' SELECT Senha, Permissao FROM Usuario WHERE Cpf = :cpf ', [UsuarioModel.Cpf]);

  Result := VQry;
end;

end.

