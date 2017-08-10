unit uUnidadeDao;

interface

uses
  FireDAC.Comp.Client, uConexao, uUnidadeModel, System.SysUtils;

type
  TUnidadeDao = class

  private
    FConexao: TConexao;

  public
    constructor Create;

    function Incluir(Unidade: TUnidadeModel): Boolean;
    function Excluir(Unidade: TUnidadeModel): Boolean;
    function Obter: TFDQuery;
  end;

implementation

{ TUnidadeDao }

uses uSistemaControl;

constructor TUnidadeDao.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TUnidadeDao.Excluir(Unidade: TUnidadeModel): Boolean;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();

  try
    VQry.ExecSQL(' DELETE FROM Unidade WHERE Codigo = :codigo ', [Unidade.Codigo]);
    Result := True;
  finally
    VQry.Free;
  end;
end;

function TUnidadeDao.Incluir(Unidade: TUnidadeModel): Boolean;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();

  try
    VQry.ExecSQL(' INSERT INTO Unidade VALUES (:codigo, :nome, :cep, :cidade) ', [Unidade.Codigo, Unidade.Nome, Unidade.Cep, Unidade.Cidade]);
    Result := True;
  finally
    VQry.Free;
  end;
end;

function TUnidadeDao.Obter: TFDQuery;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  VQry.Open(' SELECT * FROM Unidade ORDER BY 1 ');
  Result := VQry;
end;

end.
