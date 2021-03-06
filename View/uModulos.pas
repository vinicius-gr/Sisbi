unit uModulos;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  uUnidadeControl, uLivroControl;

type
  TModulos = class(TDataModule)
    ActionManager1: TActionManager;
    Action1: TAction;
    Action2: TAction;
    FDMemTableUsuarios: TFDMemTable;
    FDMemTableUsuariosCpf: TStringField;
    FDMemTableUsuariosFNome: TStringField;
    FDMemTableUsuariosLNome: TStringField;
    FDMemTableUsuariosSenh: TStringField;
    FDMemTableUsuariosPermissao: TStringField;
    DataSourceUsuarios: TDataSource;
    FDMemTableUnidades: TFDMemTable;
    DataSourceUnidades: TDataSource;
    FDMemTableUnidadesNome: TStringField;
    FDMemTableUnidadesCep: TStringField;
    FDMemTableUnidadesCidade: TStringField;
    FDMemTableUnidadesCodigo: TIntegerField;
    FDMemTableLivros: TFDMemTable;
    FDMemTableLivrosC�digo: TStringField;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    FDMemTableLivrosNome: TStringField;
    FDMemTableLivrosCidade: TStringField;
    DataSourceLivros: TDataSource;
    FDMemTableLivrosDisponivel: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);

  private


    { Private declarations }
  public
    CPFLogado: String;
    procedure CarregarUnidades;
    procedure CarregarLivros;

  end;

  var
    Modulos: TModulos;
    Livro: TlivroControl;
    Unidade: TUnidadeControl;

implementation

  {%CLASSGROUP 'Vcl.Controls.TControl'}
  {$R *.dfm}

procedure TModulos.CarregarUnidades;
var
  VQry: TFDQuery;
begin

  VQry := Unidade.Obter;

  FDMemTableUnidades.Close;

  VQry := Unidade.Obter;
  try
    VQry.FetchAll;
    FDMemTableUnidades.Data := VQry.Data;
  finally
    VQry.Close;
    VQry.Free;
  end;
end;

procedure TModulos.CarregarLivros;
var
  VQry: TFDQuery;
begin
  FDMemTableLivros.Close;

  VQry := Livro.Obter;
  try
    VQry.FetchAll;
    FDMemTableLivros.Data := VQry.Data;
  finally
    VQry.Close;
    VQry.Free;
  end;
end;

procedure TModulos.DataModuleCreate(Sender: TObject);
begin
  Unidade := TUnidadeControl.Create();
  Livro := TLivroControl.Create();
end;

end.
