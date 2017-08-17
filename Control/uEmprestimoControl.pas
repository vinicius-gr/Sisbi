unit uEmprestimoControl;

interface

uses
  uEmprestimoModel, System.SysUtils, FireDAC.Comp.Client;

type
  TEmprestimoControl = class
  private
    FEmprestimoModel: TEmprestimoModel;

  public
    constructor Create;
    destructor Destroy; override;

    function Salvar: Boolean;

    property EmprestimoModel: TEmprestimoModel read FEmprestimoModel write FEmprestimoModel;
  end;

implementation

{ TEmprestimoControl }

constructor TEmprestimoControl.Create;
begin
  FEmprestimoModel := TEmprestimoModel.Create;
end;

destructor TEmprestimoControl.Destroy;
begin
  FEmprestimoModel.Free;
  inherited;
end;

function TEmprestimoControl.Salvar: Boolean;
begin
  Result := FEmprestimoModel.Salvar;
end;

end.
