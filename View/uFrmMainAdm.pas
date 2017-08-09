unit uFrmMainAdm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ActnMenus, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  uUsuarioControl, uEnumerado, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait,
  Vcl.Mask, Vcl.DBCtrls;

type
  TFormMainAdm = class(TForm)
    ActionMainMenuBar1: TActionMainMenuBar;
    StatusBar1: TStatusBar;
    ActionManager1: TActionManager;
    Action1: TAction;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridUsuarios: TDBGrid;
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
    FDMemTableUsuarios: TFDMemTable;
    DataSourceUsuarios: TDataSource;
    Timer1: TTimer;
    ButtonNovo: TButton;
    FDMemTableUsuariosCpf: TStringField;
    FDMemTableUsuariosFNome: TStringField;
    FDMemTableUsuariosLNome: TStringField;
    FDMemTableUsuariosSenha: TStringField;
    FDMemTableUsuariosPermissao: TStringField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure BunttonIncluirClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ButtonAlterarClick(Sender: TObject);
    procedure ButtonExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridUsuariosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridUsuariosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ButtonNovoClick(Sender: TObject);
    procedure ButtonPesquisarClick(Sender: TObject);



  private
    { Private declarations }
    Usuario: TUsuarioControl;

    procedure CarregarUsuarios;
    procedure CarregarEdits;
  public
    { Public declarations }
  end;

var
  FormMainAdm: TFormMainAdm;

implementation

{$R *.dfm}

procedure TFormMainAdm.BunttonIncluirClick(Sender: TObject);
begin
  Usuario.UsuarioModel.Acao := uEnumerado.tacIncluir;

  Usuario.UsuarioModel.Cpf := EditCpf.Text;
  Usuario.UsuarioModel.Nome := EditNome.Text;
  Usuario.UsuarioModel.SNome := EditSobrenome.Text;
  Usuario.UsuarioModel.Senha := EditSenha.Text;

  Usuario.UsuarioModel.Permissao := 'usr';
  if CheckBoxPermissao.Checked then
    Usuario.UsuarioModel.Permissao := 'adm';

  if Usuario.Salvar then
    ShowMessage('Inclu�do com sucesso');

  Self.CarregarUsuarios();
end;

procedure TFormMainAdm.ButtonAlterarClick(Sender: TObject);
begin
  Usuario.UsuarioModel.Acao := uEnumerado.tacAlterar;

  Usuario.UsuarioModel.Cpf := EditCpf.Text;
  Usuario.UsuarioModel.Nome := EditNome.Text;
  Usuario.UsuarioModel.SNome := EditSobrenome.Text;
  Usuario.UsuarioModel.Senha := EditSenha.Text;

  Usuario.UsuarioModel.Permissao := 'usr';
  if CheckBoxPermissao.Checked then
    Usuario.UsuarioModel.Permissao := 'adm';

  if Usuario.Salvar then
    ShowMessage('Alterado com sucesso');

  Self.CarregarUsuarios();
end;

procedure TFormMainAdm.ButtonExcluirClick(Sender: TObject);
var
  Cpf : String;
begin
  Cpf := InputBox('Excluir', 'Digite o CPF do usu�rio', EmptyStr);
  Usuario.UsuarioModel.Cpf := Cpf;

  if Cpf.Trim <> EmptyStr then
  begin
    if (Application.MessageBox(PChar('Deseja excluir o usu�rio ' + Usuario.UsuarioModel.ObterNome + '?'), 'Confirma��o', MB_YESNO
      + MB_DEFBUTTON2 + MB_ICONQUESTION) = mrYes) then
    begin
      Usuario.UsuarioModel.Acao := uEnumerado.tacExcluir;
      Usuario.UsuarioModel.Cpf := Cpf;

      if Usuario.Salvar() then
        ShowMessage('Exclu�do com sucesso');

      Self.CarregarUsuarios;
    end;
  end;
end;

procedure TFormMainAdm.ButtonNovoClick(Sender: TObject);
begin
  EditCpf.Clear;
  EditNome.Clear;
  EditSobrenome.Clear;
  EditSenha.Clear;
  CheckBoxPermissao.Checked := False;

  EditCpf.SetFocus;

  Self.CarregarUsuarios();
end;

procedure TFormMainAdm.ButtonPesquisarClick(Sender: TObject);
var
  VQry: TFDQuery;
begin
  Usuario.UsuarioModel.Cpf := EditCpf.Text;
  Usuario.UsuarioModel.Nome := EditNome.Text;
  Usuario.UsuarioModel.SNome := EditSobrenome.Text;

  FDMemTableUsuarios.Close;

  VQry := Usuario.Buscar;
  try
    VQry.FetchAll;
    FDMemTableUsuarios.Data := VQry.Data;
  finally
    VQry.Close;
    VQry.Free;
  end;
end;

procedure TFormMainAdm.CarregarUsuarios;
var
  VQry: TFDQuery;
begin
  FDMemTableUsuarios.Close;

  VQry := Usuario.Obter;
  try
    VQry.FetchAll;
    FDMemTableUsuarios.Data := VQry.Data;
  finally
    VQry.Close;
    VQry.Free;
  end;
end;


procedure TFormMainAdm.DBGridUsuariosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Self.CarregarEdits;
end;

procedure TFormMainAdm.DBGridUsuariosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Self.CarregarEdits;
end;

procedure TFormMainAdm.FormCreate(Sender: TObject);
begin
  Usuario := TUsuarioControl.Create;
end;

procedure TFormMainAdm.FormDestroy(Sender: TObject);
begin
  Usuario.Free;
end;

procedure TFormMainAdm.FormShow(Sender: TObject);
begin
  Self.CarregarUsuarios();

  if FDMemTableUsuarios.RecordCount > 0 then
  begin
    Self.CarregarEdits();
  end;
end;


procedure TFormMainAdm.CarregarEdits;
begin
  EditCpf.Text := FDMemTableUsuarios.Fields[0].AsString;
  EditNome.Text := FDMemTableUsuarios.Fields[1].AsString;
  EditSobrenome.Text := FDMemTableUsuarios.Fields[2].AsString;
  EditSenha.Text := FDMemTableUsuarios.Fields[3].AsString;

  CheckBoxPermissao.Checked := False;
  if FDMemTableUsuarios.Fields[4].AsString = 'adm' then
    CheckBoxPermissao.Checked := True;
end;

procedure TFormMainAdm.Timer1Timer(Sender: TObject);
begin
  Statusbar1.Panels [0].Text := ' '+datetostr(date);
  Statusbar1.Panels [1].Text := ' '+timetostr(now);
end;

end.
