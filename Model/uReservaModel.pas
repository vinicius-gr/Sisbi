unit uReservaModel;

interface

uses FireDac.Comp.Client, uEnumerado, System.SysUtils;

type
  TReservaModel = class

  private
      FAcao: TAcao;

      FIdLivro: string;
      FIdUsuario: string;
      FInicio: string;
      FFim: string;
      FHora: string;

      procedure setAcao(const Value: TAcao);
      procedure setFim(const Value: string);
      procedure setInicio(const Value: string);
      procedure setLivro(const Value: string);
      procedure setUsuario(const Value: string);
    procedure setHora(const Value: string);

    public

      function Obter: TFDQuery;
      function ObterSelecionadas(Cpf: string): TFDQuery;
      function Salvar: Boolean;

      property IdLivro: string read FIdLivro write setLivro;
      property IdUsuario: string read FIdUsuario write setUsuario;
      property Inicio: string read FInicio write setInicio;
      property Fim: string read FFim write setFim;
      property Hora:  string read FHora write setHora;

    property Acao: TAcao read FAcao write SetAcao;
  end;

implementation

uses
  uReservaDao, uUsuarioModel, uReservaControl;

{ TReservaModel }

function TReservaModel.Obter: TFDQuery;
var
  Dao: TReservaDao;
begin
  Dao := TReservaDao.Create;
  try
    Result := Dao.Obter;
  finally
    Dao.Free;
  end;
end;

function TReservaModel.ObterSelecionadas(Cpf: string): TFDQuery;
var
  Dao: TReservaDao;
begin
  Dao := TReservaDao.Create;
  try
    Result := Dao.ObterSelecionadas(Cpf);
  finally
    Dao.Free;
  end;
end;

function TReservaModel.Salvar: Boolean;
var
  Dao: TReservaDao;
begin
  Result := False;
  Dao := TReservaDao.Create;

  try
    case FAcao of
      uEnumerado.tacIncluir:
        Result := Dao.Incluir(Self);

      uEnumerado.tacAlterar:
        Result := Dao.Alterar(Self);

      uEnumerado.tacExcluir:
        Result := Dao.Excluir(Self);
    end;
  finally
    Dao.Free;
  end;
end;

procedure TReservaModel.setAcao(const Value: TAcao);
begin
  FAcao := Value;
end;

procedure TReservaModel.setFim(const Value: string);
begin
  FFim := Value;
end;

procedure TReservaModel.setHora(const Value: string);
begin
  FHora := Value;
end;

procedure TReservaModel.setInicio(const Value: string);
begin
  FInicio := Value;
end;

procedure TReservaModel.setLivro(const Value: string);
begin
  FIdLivro := Value;
end;

procedure TReservaModel.setUsuario(const Value: string);
begin
  FIdUsuario := Value;
end;

end.
