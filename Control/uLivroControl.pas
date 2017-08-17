unit uLivroControl;

interface

uses
  uLivroModel, System.SysUtils, FireDAC.Comp.Client;

type
  TLivroControl = class
  private
    FLivroModel: TLivroModel;

  public
    constructor Create;
    destructor Destroy; override;

    function Salvar: Boolean;
    function Obter: TFDQuery;
    function Buscar: TFDQuery;
    function ObterDados: TFDQuery;
    function BuscaAvancado: TFDQuery;

    property LivroModel: TLivroModel read FLivroModel write FLivroModel;
  end;

implementation

{ TReservaControl }

constructor TLivroControl.Create;
begin
  FLivroModel := TLivroModel.Create;
end;

destructor TLivroControl.Destroy;
begin
  FLivroModel.Free;
  inherited;
end;

function TLivroControl.Obter: TFDQuery;
begin
  Result := FLivroModel.Obter;
end;

function TLivroControl.ObterDados: TFDQuery;
begin
  Result := FLivroModel.ObterDados;
end;

function TLivroControl.Buscar: TFDQuery;
begin
  Result := FLivroModel.Buscar;
end;

function TLivroControl.BuscaAvancado: TFDQuery;
begin
  Result := FLivroModel.BuscaAvancada;
end;

function TLivroControl.Salvar: Boolean;
begin
  Result := FLivroModel.Salvar;
end;

end.

