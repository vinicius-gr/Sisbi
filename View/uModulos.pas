unit uModulos;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

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
    FDMemTableLivros: TFDMemTable;
    DataSourceLivros: TDataSource;
    FDMemTableLivrosCodigo: TStringField;
    FDMemTableLivrosTitulo: TStringField;
    FDMemTableLivrosAutor: TStringField;
    FDMemTableLivrosLocalizacao: TIntegerField;
    FDMemTableLivrosAno: TIntegerField;
    FDMemTableUnidades: TFDMemTable;
    DataSourceUnidades: TDataSource;
    FDMemTableUnidadesNome: TStringField;
    FDMemTableUnidadesCep: TStringField;
    FDMemTableUnidadesCidade: TStringField;
    FDMemTableUnidadesCodigo: TIntegerField;



  private
    { Private declarations }
  public

  CPFLogado: String;

  end;

var
  Modulos: TModulos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
