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
  Vcl.Mask, Vcl.DBCtrls, uModulos, uLivroControl, uUnidadeControl;

type
  TFormMainAdm = class(TForm)
    ActionMainMenuBar1: TActionMainMenuBar;
    StatusBar1: TStatusBar;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
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
    BunttonIncluirUsuario: TButton;
    ButtonAlterarUsuario: TButton;
    ButtonExcluirUsuario: TButton;
    ButtonPesquisarUsuario: TButton;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    ButtonNovoLivro: TButton;
    ButtonIncluirLivro: TButton;
    ButtonAlterarLivro: TButton;
    ButtonExcluirLivro: TButton;
    ButtonPesquisarLivro: TButton;
    EditCodigo: TEdit;
    EditTitulo: TEdit;
    EditAutor: TEdit;
    EditAno: TEdit;
    DBGridLivros: TDBGrid;
    Timer1: TTimer;
    ComboBoxLocalizacoes: TComboBox;
    TabSheet3: TTabSheet;
    GroupBox3: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EditNomeUnidade: TEdit;
    EditCidadeUnidade: TEdit;
    EditCepUnidade: TEdit;
    ButtonIncluirUnidade: TButton;
    ButtonExcluirUnidade: TButton;
    DBGridUnidades: TDBGrid;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    Label15: TLabel;
    DBEdit2: TDBEdit;
    Label16: TLabel;
    DBEdit3: TDBEdit;
    Label17: TLabel;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    EditCodigoUnidade: TEdit;
    procedure BunttonIncluirUsuarioClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ButtonAlterarUsuarioClick(Sender: TObject);
    procedure ButtonExcluirUsuarioClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridUsuariosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridUsuariosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ButtonNovoUsuarioClick(Sender: TObject);
    procedure ButtonPesquisarUsuarioClick(Sender: TObject);
    procedure ButtonNovoLivroClick(Sender: TObject);
    procedure ButtonIncluirLivroClick(Sender: TObject);
    procedure ButtonAlterarLivroClick(Sender: TObject);
    procedure DBGridLivrosKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridLivrosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ButtonExcluirLivroClick(Sender: TObject);
    procedure ButtonPesquisarLivroClick(Sender: TObject);
    procedure ButtonIncluirUnidadeClick(Sender: TObject);
    procedure ButtonExcluirUnidadeClick(Sender: TObject);
    procedure DBGridUnidadesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridUnidadesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);




  private
    { Private declarations }
    Usuario: TUsuarioControl;
    Livro: TLivroControl;
    Unidade: TUnidadeControl;

    procedure CarregarUsuarios;
    procedure CarregarEdits;
    procedure CarregarLivros;
    procedure CarregarUnidades;

  public
    { Public declarations }
  end;

var
  FormMainAdm: TFormMainAdm;

implementation

{$R *.dfm}

procedure TFormMainAdm.BunttonIncluirUsuarioClick(Sender: TObject);
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
    ShowMessage('Incluído com sucesso');

  Self.CarregarUsuarios();
end;

procedure TFormMainAdm.ButtonAlterarUsuarioClick(Sender: TObject);
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

procedure TFormMainAdm.ButtonExcluirUsuarioClick(Sender: TObject);
var
  Cpf : String;
begin
  Cpf := InputBox('Excluir', 'Digite o CPF do usuário', EmptyStr);
  Usuario.UsuarioModel.Cpf := Cpf;

  if Cpf.Trim <> EmptyStr then
  begin
    if (Application.MessageBox(PChar('Deseja excluir o usuário ' + Usuario.UsuarioModel.ObterNome + '?'), 'Confirmação', MB_YESNO
      + MB_DEFBUTTON2 + MB_ICONQUESTION) = mrYes) then
    begin
      Usuario.UsuarioModel.Acao := uEnumerado.tacExcluir;

      if Usuario.Salvar() then
        ShowMessage('Excluído com sucesso');

      Self.CarregarUsuarios;
    end;
  end;
end;

procedure TFormMainAdm.ButtonNovoUsuarioClick(Sender: TObject);
begin
  EditCpf.Clear;
  EditNome.Clear;
  EditSobrenome.Clear;
  EditSenha.Clear;
  CheckBoxPermissao.Checked := False;

  EditCpf.SetFocus;

  Self.CarregarUsuarios();
end;

procedure TFormMainAdm.ButtonPesquisarUsuarioClick(Sender: TObject);
var
  VQry: TFDQuery;
begin
  Usuario.UsuarioModel.Cpf := EditCpf.Text;
  Usuario.UsuarioModel.Nome := EditNome.Text;
  Usuario.UsuarioModel.SNome := EditSobrenome.Text;

  Modulos.FDMemTableUsuarios.Close;

  VQry := Usuario.Buscar;
  try
    VQry.FetchAll;
    Modulos.FDMemTableUsuarios.Data := VQry.Data;
  finally
    VQry.Close;
    VQry.Free;
  end;
end;










procedure TFormMainAdm.ButtonNovoLivroClick(Sender: TObject);
begin
  EditCodigo.Clear;
  EditTitulo.Clear;
  EditAutor.Clear;
  EditAno.Clear;

  EditCodigo.SetFocus;

  Self.CarregarLivros();
end;

procedure TFormMainAdm.ButtonIncluirLivroClick(Sender: TObject);
begin
  Livro.LivroModel.Acao := uEnumerado.tacIncluir;

  Livro.LivroModel.Codigo := EditCodigo.Text;
  Livro.LivroModel.Titulo := EditTitulo.Text;
  Livro.LivroModel.Autor := EditAutor.Text;
  Livro.LivroModel.Ano := StrToInt(EditAno.Text);
  Livro.LivroModel.Localizacao := Integer(ComboBoxLocalizacoes.Items.Objects[ComboBoxLocalizacoes.ItemIndex]);

  if Livro.Salvar then
    ShowMessage('Incluído com sucesso');

  Self.CarregarLivros();
end;

procedure TFormMainAdm.ButtonAlterarLivroClick(Sender: TObject);
begin
  Livro.LivroModel.Acao := uEnumerado.tacAlterar;

  Livro.LivroModel.Codigo := EditCodigo.Text;
  Livro.LivroModel.Titulo := EditTitulo.Text;
  Livro.LivroModel.Autor := EditAutor.Text;
  Livro.LivroModel.Ano := StrToInt(EditAno.Text);

  if Livro.Salvar then
    ShowMessage('Alterado com sucesso');

  Self.CarregarLivros();
end;

procedure TFormMainAdm.ButtonExcluirLivroClick(Sender: TObject);
var
  Codigo : String;
begin
  Codigo := InputBox('Excluir', 'Digite o código do livro', EmptyStr);
  Livro.LivroModel.Codigo := Codigo;

  if Codigo.Trim <> EmptyStr then
  begin
    if (Application.MessageBox(PChar('Deseja excluir o livro ' + Livro.LivroModel.ObterNome + '?'), 'Confirmação', MB_YESNO
      + MB_DEFBUTTON2 + MB_ICONQUESTION) = mrYes) then
    begin
      Livro.LivroModel.Acao := uEnumerado.tacExcluir;

      if Livro.Salvar() then
        ShowMessage('Excluído com sucesso');

      Self.CarregarLivros;
    end;
  end;
end;

procedure TFormMainAdm.ButtonPesquisarLivroClick(Sender: TObject);
var
  VQry: TFDQuery;
begin
  Livro.LivroModel.Codigo := EditCpf.Text;
  Livro.LivroModel.Titulo := EditNome.Text;
  Livro.LivroModel.Autor := EditSobrenome.Text;

  Modulos.FDMemTableLivros.Close;

  VQry := Livro.Buscar;
  try
    VQry.FetchAll;
    Modulos.FDMemTableLivros.Data := VQry.Data;
  finally
    VQry.Close;
    VQry.Free;
  end;
end;








procedure TFormMainAdm.ButtonIncluirUnidadeClick(Sender: TObject);
begin
  Unidade.UnidadeModel.Acao := uEnumerado.tacIncluir;

  Unidade.UnidadeModel.Codigo := StrToInt(EditCodigoUnidade.Text);
  Unidade.UnidadeModel.Nome := EditNomeUnidade.Text;
  Unidade.UnidadeModel.Cep := EditCepUnidade.Text;
  Unidade.UnidadeModel.Cidade := EditCidadeUnidade.Text;

  if Unidade.Salvar then
    ShowMessage('Incluído com sucesso');

  Self.CarregarUnidades();
end;

procedure TFormMainAdm.ButtonExcluirUnidadeClick(Sender: TObject);
var
  Codigo : String;
begin
  Codigo := InputBox('Excluir', 'Digite o código da unidade', EmptyStr);
  Unidade.UnidadeModel.Codigo := StrToInt(Codigo);

  if Codigo.Trim <> EmptyStr then
  begin
    if (Application.MessageBox(PChar('Deseja excluir o a unidade?'), 'Confirmação', MB_YESNO
      + MB_DEFBUTTON2 + MB_ICONQUESTION) = mrYes) then
    begin
      Unidade.UnidadeModel.Acao := uEnumerado.tacExcluir;

      if Unidade.Salvar() then
        ShowMessage('Excluído com sucesso');

      Self.CarregarUnidades;
    end;
  end;
end;











procedure TFormMainAdm.CarregarUsuarios;
var
  VQry: TFDQuery;
begin
  Modulos.FDMemTableUsuarios.Close;

  VQry := Usuario.Obter;
  try
    VQry.FetchAll;
    Modulos.FDMemTableUsuarios.Data := VQry.Data;
  finally
    VQry.Close;
    VQry.Free;
  end;
end;

procedure TFormMainAdm.CarregarLivros;
var
  VQry: TFDQuery;
begin
  Modulos.FDMemTableLivros.Close;

  VQry := Livro.Obter;
  try
    VQry.FetchAll;
    Modulos.FDMemTableLivros.Data := VQry.Data;
  finally
    VQry.Close;
    VQry.Free;
  end;
end;

procedure TFormMainAdm.CarregarUnidades;
var
  VQry: TFDQuery;
begin

  VQry := Unidade.Obter;

  ComboBoxLocalizacoes.Items.Clear;

  VQry.First;

  while not VQry.Eof do
    begin
      ComboBoxLocalizacoes.Items.AddObject(VQry.Fields[0].AsString+' - '+VQry.Fields[1].AsString+' - '+VQry.Fields[3].asstring, TObject(VQry.Fields[0].AsInteger));
      VQry.Next;
    end;

  VQry.Close;

  Modulos.FDMemTableUnidades.Close;

  VQry := Unidade.Obter;
  try
    VQry.FetchAll;
    Modulos.FDMemTableUnidades.Data := VQry.Data;
  finally
    VQry.Close;
    VQry.Free;
  end;
end;

procedure TFormMainAdm.DBGridLivrosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Self.CarregarEdits();
end;

procedure TFormMainAdm.DBGridLivrosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Self.CarregarEdits();
end;

procedure TFormMainAdm.DBGridUnidadesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Self.CarregarEdits();
end;

procedure TFormMainAdm.DBGridUnidadesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Self.CarregarEdits();
end;

procedure TFormMainAdm.DBGridUsuariosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Self.CarregarEdits();
end;

procedure TFormMainAdm.DBGridUsuariosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Self.CarregarEdits();
end;

procedure TFormMainAdm.FormCreate(Sender: TObject);
begin
  Usuario := TUsuarioControl.Create;
  Livro := TLivroControl.Create;
  Unidade := TUnidadeControl.Create;

  Usuario.UsuarioModel.Cpf := Modulos.CPFLogado;

  StatusBar1.Panels[0].Text := ' '+Usuario.UsuarioModel.ObterNome;
end;

procedure TFormMainAdm.FormDestroy(Sender: TObject);
begin
  Usuario.Free;
  Livro.Free;
  Unidade.Free;
end;

procedure TFormMainAdm.FormShow(Sender: TObject);
begin
  Self.CarregarUsuarios();
  Self.CarregarLivros();
  Self.CarregarUnidades();

  ShowMessage('Bem vindo!');

  if (Modulos.FDMemTableUsuarios.RecordCount > 0) OR (Modulos.FDMemTableLivros.RecordCount > 0) OR (Modulos.FDMemTableUnidades.RecordCount > 0) then
  begin
    Self.CarregarEdits();
  end;
end;

procedure TFormMainAdm.CarregarEdits;
begin
  EditCpf.Text := Modulos.FDMemTableUsuarios.Fields[0].AsString;
  EditNome.Text := Modulos.FDMemTableUsuarios.Fields[1].AsString;
  EditSobrenome.Text := Modulos.FDMemTableUsuarios.Fields[2].AsString;
  EditSenha.Text := Modulos.FDMemTableUsuarios.Fields[3].AsString;

  CheckBoxPermissao.Checked := False;
  if Modulos.FDMemTableUsuarios.Fields[4].AsString = 'adm' then
    CheckBoxPermissao.Checked := True;

  EditCodigo.Text := Modulos.FDMemTableLivros.Fields[0].AsString;
  EditTitulo.Text := Modulos.FDMemTableLivros.Fields[1].AsString;
  EditAutor.Text := Modulos.FDMemTableLivros.Fields[2].AsString;
  EditAno.Text := Modulos.FDMemTableLivros.Fields[3].AsString;

  EditCodigoUnidade.Text := Modulos.FDMemTableUnidades.Fields[0].AsString;
  EditNomeUnidade.Text := Modulos.FDMemTableUnidades.Fields[1].AsString;
  EditCepUnidade.Text := Modulos.FDMemTableUnidades.Fields[2].AsString;
  EditCidadeUnidade.Text := Modulos.FDMemTableUnidades.Fields[3].AsString;
end;

procedure TFormMainAdm.Timer1Timer(Sender: TObject);
begin
  Statusbar1.Panels[1].Text := ' '+datetostr(date);
  Statusbar1.Panels[2].Text := ' '+timetostr(now);
end;

end.
