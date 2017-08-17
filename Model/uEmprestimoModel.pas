unit uEmprestimoModel;

interface

uses
  uEnumerado, FireDAC.Comp.Client;

type
  TEmprestimoModel = class

  private
    FAcao: TAcao;

    FIdLivro: string;
    FIdUsuario: string;
    FInicio: string;
    FVencimento: string;
    FCodigo: integer;
    FRenovacoes: integer;

    function Buscar: TFDQuery;
    procedure setAcao(const Value: TAcao);
    procedure setCodigo(const Value: integer);
    procedure setInicio(const Value: string);
    procedure setLivro(const Value: string);
    procedure setRenovacoes(const Value: integer);
    procedure setUsuario(const Value: string);
    procedure setVencimento(const Value: string);

  public

    function ObterSelecionadas(Cpf: string): TFDQuery;
    function Salvar: Boolean;

    property IdLivro: string read FIdLivro write setLivro;
    property IdUsuario: string read FIdUsuario write setUsuario;
    property Inicio: string read FInicio write setInicio;
    property Vencimento: string read FVencimento write setVencimento;
    property Renovacoes: integer read FRenovacoes write setRenovacoes;
    property Codigo: integer read FCodigo write setCodigo;

    property Acao: TAcao read FAcao write setAcao;
  end;

implementation

{ TLivro }

uses uEmprestimoDao;

function TEmprestimoModel.Buscar: TFDQuery;
begin

end;

function TEmprestimoModel.Salvar: Boolean;
var
  Dao: TEmprestimoDao;
begin
  Result := False;

  Dao := TEmprestimoDao.Create;
  try
    case FAcao of
      uEnumerado.tacIncluir:
        Result := Dao.Incluir(Self);
      uEnumerado.tacAlterar:
        Result := Dao.Renovar(Self);
      uEnumerado.tacExcluir:
        Result := Dao.Excluir(Self);
    end;
  finally
    Dao.Free;
  end;
end;

procedure TEmprestimoModel.setAcao(const Value: TAcao);
begin
  FAcao := Value;
end;

procedure TEmprestimoModel.setCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TEmprestimoModel.setInicio(const Value: string);
begin
  FInicio := Value;
end;

procedure TEmprestimoModel.setLivro(const Value: string);
begin
  FIdLivro := Value;
end;

procedure TEmprestimoModel.setRenovacoes(const Value: integer);
begin
  FRenovacoes := Value;
end;

procedure TEmprestimoModel.setUsuario(const Value: string);
begin
  FIdUsuario := Value;
end;

procedure TEmprestimoModel.setVencimento(const Value: string);
begin
  FVencimento := Value;
end;

function TEmprestimoModel.ObterSelecionadas(Cpf: string): TFDQuery;
var
  Dao: TEmprestimoDao;
begin
  Dao := TEmprestimoDao.Create;
  try
    Result := Dao.ObterSelecionadas(Cpf);
  finally
    Dao.Free;
  end;
end;

end.

