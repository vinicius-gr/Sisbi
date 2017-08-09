program Biblioteca;

uses
  Vcl.Forms,
  uFrmLogin in 'View\uFrmLogin.pas' {FormLogin},
  uFrmMainUsuario in 'View\uFrmMainUsuario.pas' {FormMainUsuario},
  uConexao in 'Dao\uConexao.pas',
  uEnumerado in 'Model\uEnumerado.pas',
  uUsuarioModel in 'Model\uUsuarioModel.pas',
  uUsuarioDao in 'Dao\uUsuarioDao.pas',
  uSistemaControl in 'Control\uSistemaControl.pas',
  uUsuarioControl in 'Control\uUsuarioControl.pas',
  uPermissao in 'Model\uPermissao.pas',
  uFrmMainAdm in 'View\uFrmMainAdm.pas' {FormMainAdm},
  uLivroControl in 'Control\uLivroControl.pas',
  uLivroDao in 'Dao\uLivroDao.pas',
  uLivroModel in 'Model\uLivroModel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.Run;
end.
