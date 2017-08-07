unit uUsuarioDao;

interface

uses
  FireDAC.Comp.Client, uConexao, uUsuarioModel, System.SysUtils;

type
  TClienteDao = class

  private
    FConexao: TConexao;


  public
    constructor Create;

    function Incluir(UsuarioModel: TUsuarioModel): Boolean;
    function Alterar(UsuarioModel: TUsuarioModel): Boolean;
    function Excluir(UsuarioModel: TUsuarioModel): Boolean;

    function Obter: TFDQuery;
    function ObterSenhaPermissao(UsuarioModel: TUsuarioModel): TFDQuery;
  end;

implementation

{ TClienteDao }

uses uSistemaControl;

constructor TClienteDao.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TClienteDao.Alterar(UsuarioModel: TUsuarioModel): Boolean;
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



function TClienteDao.Excluir(UsuarioModel: TUsuarioModel): Boolean;
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

function TClienteDao.Incluir(UsuarioModel: TUsuarioModel): Boolean;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  try
    VQry.ExecSQL('INSERT INTO Usuario (FNome, LNome, Senha, Permissao) VALUES (:fnome, :snome, :senha, :permissao)', [UsuarioModel.Nome, UsuarioModel.SNome, UsuarioModel.Senha, UsuarioModel.Permissao]);

    Result := True;
  finally
    VQry.Free;
  end;
end;

function TClienteDao.Obter: TFDQuery;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();

  VQry.Open(' SELECT Cpf, FNome, LNome, Senha, Permissao FROM Usuario order by 1 ');

  Result := VQry;
end;

function TClienteDao.ObterSenhaPermissao(UsuarioModel: TUsuarioModel): TFDQuery;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();

  VQry.Open(' SELECT Senha, Permissao FROM Usuario WHERE Cpf = :cpf ', [UsuarioModel.Cpf]);

  Result := VQry;
end;

end.
