unit uFrmMainUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList, Vcl.ActnMan,
  Vcl.ToolWin, Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, uModulos, uUsuarioControl,
  FireDAC.Comp.Client, uReservaControl;

type
  TFormMainUsuario = class(TForm)
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionManager1: TActionManager;
    StatusBar1: TStatusBar;
    Action1: TAction;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Consulta: TTabSheet;
    Informações: TTabSheet;
    PageControl2: TPageControl;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    EditNome: TEdit;
    Label2: TLabel;
    EditSobrenome: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    EditSenha: TEdit;
    LabelCpf: TLabel;
    ButtonAlterarUsuario: TButton;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    DBGridReservas: TDBGrid;
    DBGrid3: TDBGrid;
    Label9: TLabel;
    EditCodigoBusca: TEdit;
    Button4: TButton;
    EditAutorBusca: TEdit;
    Label10: TLabel;
    EditAnoBusca: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Button5: TButton;
    Label3: TLabel;
    LabelNomeUsuario: TLabel;
    Label4: TLabel;
    LabelSobrenomeUsuario: TLabel;
    Label5: TLabel;
    LabelCpfUsuario: TLabel;
    Label8: TLabel;
    LabelEmprestimosUsuario: TLabel;
    Label13: TLabel;
    LabelSolicitacoesUsuario: TLabel;
    LabelReservasUsuario: TLabel;
    Label17: TLabel;
    LabelMultasUsuario: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    EditNomeBusca: TEdit;
    ComboBoxLocalizacoesBusca: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ButtonAlterarUsuarioClick(Sender: TObject);

  private
    Usuario: TUsuarioControl;
    Reserva: TReservaControl;
    VQry: TFDQuery;

    procedure CarregarUsuario;
    procedure CarregarEdits;
    procedure CarregarLabels;
    procedure CarregarReservas;

  public

  end;

var
  FormMainUsuario: TFormMainUsuario;


implementation

{$R *.dfm}

uses uEnumerado, uModulosUsuario;


procedure TFormMainUsuario.ButtonAlterarUsuarioClick(Sender: TObject);
begin
  Usuario.UsuarioModel.Acao := uEnumerado.tacAlterar;

  Usuario.UsuarioModel.Nome := EditNome.Text;
  Usuario.UsuarioModel.SNome := EditSobrenome.Text;
  Usuario.UsuarioModel.Senha := EditSenha.Text;
  Usuario.UsuarioModel.Permissao := 'usr';

  if Usuario.Salvar then
    ShowMessage('Dados alterados com sucesso!');

  Self.CarregarEdits();
  Self.CarregarLabels();

end;

procedure TFormMainUsuario.CarregarEdits;
begin
  VQry := Usuario.UsuarioModel.ObterDados;

  LabelCpf.Caption := Modulos.CPFLogado;
  EditNome.Text := VQry.FieldByName('FNome').AsString;
  EditSobrenome.Text := VQry.FieldByName('LNome').AsString;
  EditSenha.Text := VQry.FieldByName('Senha').AsString;
end;

procedure TFormMainUsuario.CarregarReservas;
begin

end;

procedure TFormMainUsuario.CarregarLabels;
begin
  VQry := Usuario.UsuarioModel.ObterDados;

  LabelCpfUsuario.Caption := Modulos.CPFLogado;
  LabelNomeUsuario.Caption := VQry.FieldByName('FNome').AsString;
  LabelSobrenomeUsuario.Caption := VQry.FieldByName('LNome').AsString;
end;

procedure TFormMainUsuario.CarregarUsuario;
begin

end;

procedure TFormMainUsuario.FormCreate(Sender: TObject);
begin
  Usuario := TUsuarioControl.Create();
  Usuario.UsuarioModel.Cpf := Modulos.CPFLogado;

  Self.CarregarEdits();
  Self.CarregarLabels();
  Self.CarregarReservas();

  StatusBar1.Panels[0].Text := ' '+Usuario.UsuarioModel.ObterNome;
end;

procedure TFormMainUsuario.FormDestroy(Sender: TObject);
begin
  Usuario.Free;
end;

end.