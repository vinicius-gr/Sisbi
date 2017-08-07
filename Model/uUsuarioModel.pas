unit uUsuarioModel;

interface

uses
  uEnumerado, FireDAC.Comp.Client;

type
  TUsuarioModel = class
  private
    FAcao: TAcao;

    FCpf: string;
    FSenha: string;
    FNome: string;
    FSNome: string;
    FPermissao: string;


    procedure SetAcao(const Value: TAcao);

    procedure SetCpf(const Value: string);
    procedure SetSenha(const Value: string);
    procedure SetNome(const Value: string);
    procedure SetSobrenome(const Value: string);
    procedure SetPermissao(const Value: string);

  public
    function Obter: TFDQuery;
    function VerificaSenha(SenhaInserida: string): Boolean;
    function Salvar: Boolean;

    property Cpf: string read FCpf write SetCpf;
    property Senha: string read FSenha write SetSenha;
    property Nome: string read FNome write SetNome;
    property SNome: string read FSNome write SetSobrenome;
    property Permissao: string read FPermissao write SetPermissao;

    property Acao: TAcao read FAcao write SetAcao;
  end;

implementation

{ TCliente }

uses uUsuarioDao;

function TUsuarioModel.Obter: TFDQuery;
var
  VClienteDao: TClienteDao;
begin
  VClienteDao := TClienteDao.Create;
  try
    Result := VClienteDao.Obter;
  finally
    VClienteDao.Free;
  end;
end;

function TUsuarioModel.Salvar: Boolean;
var
  VClienteDao: TClienteDao;
begin
  Result := False;

  VClienteDao := TClienteDao.Create;
  try
    case FAcao of
      uEnumerado.tacIncluir: Result := VClienteDao.Incluir(Self);
      uEnumerado.tacAlterar: Result := VClienteDao.Alterar(Self);
      uEnumerado.tacExcluir: Result := VClienteDao.Excluir(Self);
    end;
  finally
    VClienteDao.Free;
  end;
end;

procedure TUsuarioModel.SetAcao(const Value: TAcao);
begin
  FAcao := Value;
end;

procedure TUsuarioModel.SetCpf(const Value: string);
begin
  FCpf := Value;
end;

procedure TUsuarioModel.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TUsuarioModel.SetPermissao(const Value: string);
begin
  FNome := Value;
end;

procedure TUsuarioModel.SetSenha(const Value: string);
begin
  FSenha := Value;
end;

procedure TUsuarioModel.SetSobrenome(const Value: string);
begin
  FSNome := Value;
end;

function TUsuarioModel.VerificaSenha(SenhaInserida: string): Boolean;
var
  VQry: TFDQuery;
  VClienteDao: TClienteDao;
begin
  VClienteDao := TClienteDao.Create;

  try
    VQry := VClienteDao.ObterSenhaPermissao(Self);

    if VQry.FieldByName(Senha).AsString = SenhaInserida then
      Result := True;
  finally
    VClienteDao.Free;
    VQry.Free;
  end;
end;

end.

