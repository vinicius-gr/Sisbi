unit uModulosUsuario;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDataModule1 = class(TDataModule)
    FDMemTableReservas: TFDMemTable;
    DataSourceReservas: TDataSource;
    FDMemTableReservasCodigo: TStringField;
    FDMemTableReservasTitulo: TStringField;
    FDMemTableEmprestimos: TFDMemTable;
    DataSourceEmprestimos: TDataSource;
    FDMemTableEmprestimosCodigo: TIntegerField;
    FDMemTableEmprestimosRenovacoes: TIntegerField;
    FDMemTableEmprestimosId_Livro: TStringField;
    FDMemTableEmprestimosTitulo: TStringField;
    FDMemTableEmprestimosInicio: TDateField;
    FDMemTableEmprestimosVencimento: TDateField;
    FDMemTableMultas: TFDMemTable;
    FDMemTableMultasValor: TFloatField;
    DataSourceMultas: TDataSource;
    FDMemTableMultasId_Usuario: TStringField;
    FDMemTableMultasId_Emprestimo: TIntegerField;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModulosUsuario: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
