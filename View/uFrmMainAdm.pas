unit uFrmMainAdm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ActnMenus, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  uUsuarioControl, uEnumerado, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormMainAdm = class(TForm)
    ActionMainMenuBar1: TActionMainMenuBar;
    StatusBar1: TStatusBar;
    ActionManager1: TActionManager;
    Action1: TAction;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    EditNome: TEdit;
    EditSobrenome: TEdit;
    EditSenha: TEdit;
    EditCpf: TEdit;
    CheckBoxPermissao: TCheckBox;
    BunttonIncluir: TButton;
    ButtonAlterar: TButton;
    ButtonExcluir: TButton;
    ButtonPesquisar: TButton;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;
    procedure BunttonIncluirClick(Sender: TObject);
  private
    procedure CarregarUsuarios;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMainAdm: TFormMainAdm;

implementation

{$R *.dfm}

procedure TFormMainAdm.BunttonIncluirClick(Sender: TObject);
var
  VControleUsuario: TUsuarioControl;
begin
  VControleUsuario := TUsuarioControl.Create;

  try
    VControleUsuario.UsuarioModel.Permissao := 'usr';
    VControleUsuario.UsuarioModel.Acao := uEnumerado.tacIncluir;
    VControleUsuario.UsuarioModel.Cpf := EditCpf.Text;
    VControleUsuario.UsuarioModel.Nome := EditNome.Text;
    VControleUsuario.UsuarioModel.SNome := EditSobrenome.Text;
    VControleUsuario.UsuarioModel.Senha := EditSenha.Text;
    if CheckBoxPermissao.Checked then
      VControleUsuario.UsuarioModel.Permissao := 'adm';

    if VControleUsuario.Salvar then
      ShowMessage('Incluido com sucesso');

      Self.CarregarUsuarios();
  finally
    VControleUsuario.Free;
  end;
end;

procedure TFormMainAdm.CarregarUsuarios;
var
  VControleUsuario: TUsuarioControl;
  VQry: TFDQuery;
begin
  FDMemTable1.Close;

  VControleUsuario := TUsuarioControl.Create;
  try
    VQry := VControleUsuario.Obter;
    try
      VQry.FetchAll;
      FDMemTable1.Data := VQry.Data;
    finally
      VQry.Close;
      VQry.Free;
    end;

  finally
    FreeAndNil(VControleUsuario);
  end;
end;

end.
