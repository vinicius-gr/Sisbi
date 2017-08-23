unit uMultaControl;

interface

uses
  uMultaModel, System.SysUtils, FireDAC.Comp.Client;

type
  TMultaControl = class

  private
    FMultaModel: TMultaModel;

  public
    constructor Create;
    destructor Destroy; override;

    function Salvar: Boolean;
    function Obter: TFDQuery;

    property MultaModel: TMultaModel read FMultaModel write FMultaModel;
  end;

implementation

{ TMultaControl }

constructor TMultaControl.Create;
begin
  FMultaModel := TMultaModel.Create;
end;

destructor TMultaControl.Destroy;
begin
  FMultaModel.Free;
  inherited;
end;

function TMultaControl.Obter: TFDQuery;
begin
  Result := FMultaModel.Obter;
end;

function TMultaControl.Salvar: Boolean;
begin
  Result := FMultaModel.Salvar;
end;

end.

