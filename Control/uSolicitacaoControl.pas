unit uSolicitacaoControl;

interface

uses
  uSolicitacaoModel, System.SysUtils, FireDAC.Comp.Client;

type
  TSolicitacaoControl = class
  private
    FSolicitacaoModel: TSolicitacaoModel;

  public
    constructor Create;
    destructor Destroy; override;

    function Salvar: Boolean;
    function Obter: TFDQuery;

    property SolicitacaoModel: TSolicitacaoModel read FSolicitacaoModel write FSolicitacaoModel;
  end;

implementation

{ TReservaControl }

constructor TSolicitacaoControl.Create;
begin
  FSolicitacaoModel := TSolicitacaoModel.Create;
end;

destructor TSolicitacaoControl.Destroy;
begin
  FSolicitacaoModel.Free;
  inherited;
end;

function TSolicitacaoControl.Obter: TFDQuery;
begin
  Result := FSolicitacaoModel.Obter;
end;

function TSolicitacaoControl.Salvar: Boolean;
begin
  Result := FSolicitacaoModel.Salvar;
end;

end.

