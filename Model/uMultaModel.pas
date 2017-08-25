unit uMultaModel;

interface

uses
  uEnumerado, FireDAC.Comp.Client, System.SysUtils;

type
  TMultaModel = class

  private
    FAcao: TAcao;

    FIdEmprestimo: string;
    FIdUsuario: string;
    FValor: Double;

    procedure SetAcao(const Value: TAcao);
    procedure setEmprestimo(const Value: string);
    procedure setUsuario(const Value: string);
    procedure setValor(const Value: Double);

  public

    function Obter: TFDQuery;
    function Salvar: Boolean;
    procedure AplicarMultas;
    function BuscarMultas(Cpf: string): TFDQuery;

    property IdEmprestimo: string read FIdEmprestimo write setEmprestimo;
    property IdUsuario: string read FIdUsuario write setUsuario;
    property Valor: Double read FValor write setValor;


    property Acao: TAcao read FAcao write SetAcao;
  end;

implementation

{ TEmprestimo }

uses uMultaDao, uEmprestimoDao;

procedure TMultaModel.AplicarMultas;
var
  VQryEmprestimos: TFDQuery;
  VQryMulta: TFDQuery;
  DaoEmprestimo: TEmprestimoDao;
  DaoMulta: TMultaDao;
  Hoje: TDateTime;
  Vencimento: TDateTime;

begin
  DaoEmprestimo := TEmprestimoDao.Create;
  DaoMulta := TMultaDao.Create;

  try
    Hoje := date;

    VQryEmprestimos := DaoEmprestimo.Obter;

    VQryEmprestimos.First;

  while not VQryEmprestimos.Eof do
    begin
      Vencimento := StrToDate(VQryEmprestimos.FieldByName('Vencimento').AsString);

      if Vencimento < Hoje then
      begin
        Self.IdEmprestimo := VQryEmprestimos.FieldByName('Id_Emprestimo').AsString;
        Self.IdUsuario := VQryEmprestimos.FieldByName('Id_Usuario').AsString;

        Self.Valor := (Hoje - Vencimento) * 2.0;

        Self.Acao := tacIncluir;

        VQryMulta := DaoMulta.Buscar(Self);
        if VQryMulta.RecordCount > 0 then
        begin
          Self.Valor := VQryMulta.FieldByName('Valor').AsFloat + (Hoje - Vencimento) * 2.0;
          Self.Acao := tacAlterar;
        end;

        Self.Salvar;

      end;

      VQryEmprestimos.Next;

    end;

  VQryEmprestimos.Close;
  VQryMulta.Close;

  finally
    DaoEmprestimo.Free;
    DaoMulta.Free;
  end;
end;

function TMultaModel.BuscarMultas(Cpf: string): TFDQuery;
var
  Dao: TMultaDao;
begin
  Dao := TMultaDao.Create;
  try
    Result := Dao.ObterSelecionadas(Cpf);
  finally
    Dao.Free;
  end;
end;

function TMultaModel.Obter: TFDQuery;
var
  Dao: TMultaDao;
begin
  Dao := TMultaDao.Create;
  try
    Result := Dao.Obter;
  finally
    Dao.Free;
  end;
end;

function TMultaModel.Salvar: Boolean;
var
  Dao: TMultaDao;
begin
  Result := False;

  Dao := TMultaDao.Create;
  try
    case FAcao of
      uEnumerado.tacIncluir:
        Result := Dao.Incluir(Self);

      uEnumerado.tacAlterar:
        Result := Dao.AtualizarValor(Self);

      uEnumerado.tacExcluir:
        Result := Dao.Excluir(Self);
    end;
  finally
    Dao.Free;
  end;
end;

procedure TMultaModel.SetAcao(const Value: TAcao);
begin
  FAcao := Value;
end;

procedure TMultaModel.setEmprestimo(const Value: string);
begin
  FIdEmprestimo := Value;
end;

procedure TMultaModel.setUsuario(const Value: string);
begin
 FIdUsuario := Value;
end;

procedure TMultaModel.setValor(const Value: Double);
begin
  FValor := Value;
end;

end.