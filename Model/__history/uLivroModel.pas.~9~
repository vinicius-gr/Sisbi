unit uLivroModel;

interface

uses
  uEnumerado, FireDAC.Comp.Client;

type
  TLivroModel = class
  private
    FAcao: TAcao;

    FCodigo: string;
    FTitulo: string;
    FAutor: string;
    FAno: Integer;
    FLocalizacao: integer;

    procedure SetAcao(const Value: TAcao);
    procedure SetAno(const Value: Integer);
    procedure SetAutor(const Value: string);
    procedure SetCodigo(const Value: string);
    procedure SetLocalizacao(const Value: integer);
    procedure SetTitulo(const Value: string);

  public
    function Obter: TFDQuery;
    function Buscar: TFDQuery;
    function Salvar: Boolean;
    function ObterNome: String;

    property Codigo: string read FCodigo write SetCodigo;
    property Titulo: string read FTitulo write SetTitulo;
    property Autor: string read FAutor write SetAutor;
    property Ano: Integer read FAno write SetAno;
    property Localizacao: integer read FLocalizacao write SetLocalizacao;

    property Acao: TAcao read FAcao write SetAcao;
  end;

implementation

{ TLivro }

uses uLivroDao;

function TLivroModel.Obter: TFDQuery;
var
  Dao: TLivroDao;
begin
  Dao := TLivroDao.Create;
  try
    Result := Dao.Obter;
  finally
    Dao.Free;
  end;
end;

function TLivroModel.Salvar: Boolean;
var
  Dao: TLivroDao;
begin
  Result := False;

  Dao := TLivroDao.Create;
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


procedure TLivroModel.SetAcao(const Value: TAcao);
begin
  FAcao := Value;
end;

procedure TLivroModel.SetAno(const Value: Integer);
begin
  FAno := Value;
end;

procedure TLivroModel.SetAutor(const Value: string);
begin
  FAutor := Value;
end;

procedure TLivroModel.SetCodigo(const Value: string);
begin
  FCodigo := Value;
end;

procedure TLivroModel.SetLocalizacao(const Value: Integer);
begin
  FLocalizacao := Value;
end;

procedure TLivroModel.SetTitulo(const Value: string);
begin
  FTitulo := Value;
end;

function TLivroModel.ObterNome(): String;
var
  VQry: TFDQuery;
  Dao: TLivroDao;
begin
  Dao := TLivroDao.Create;

  try
    VQry := Dao.ObterDados(Self);
    Result := VQry.FieldByName('Titulo').AsString;
  finally
    Dao.Free;
  end;
end;

function TLivroModel.Buscar(): TFDQuery;
var
  Dao: TLivroDao;
begin
  Dao := TLivroDao.Create;
  try
    Result := Dao.Buscar(Self);
  finally
    Dao.Free;
  end;
end;

end.

