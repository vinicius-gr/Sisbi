unit uUnidadeControl;

interface

uses
  uUnidadeModel, System.SysUtils, FireDAC.Comp.Client;

type
  TUnidadeControl = class

  private
    FUnidadeModel: TUnidadeModel;

  public
    constructor Create;
    destructor Destroy; override;

    function Salvar: Boolean;
    function Obter: TFDQuery;

    property UnidadeModel: TUnidadeModel read FUnidadeModel write FUnidadeModel;
  end;

implementation

{ TUnidadeControl }

constructor TUnidadeControl.Create;
begin
  FUnidadeModel := TUnidadeModel.Create;
end;

destructor TUnidadeControl.Destroy;
begin
  FUnidadeModel.Free;
  inherited;
end;

function TUnidadeControl.Obter: TFDQuery;
begin
  Result := FUnidadeModel.Obter;
end;

function TUnidadeControl.Salvar: Boolean;
begin
  Result := FUnidadeModel.Salvar;
end;

end.
