program Biblioteca;

uses
  Vcl.Forms,
  uFrmLogin in 'View\uFrmLogin.pas' {Form1},
  uFrmMainUsuario in 'View\uFrmMainUsuario.pas' {Form2},
  uConexao in 'Dao\uConexao.pas',
  uEnumerado in 'Model\uEnumerado.pas',
  uUsuarioModel in 'Model\uUsuarioModel.pas',
  uUsuarioDao in 'Dao\uUsuarioDao.pas',
  uSistemaControl in 'Control\uSistemaControl.pas',
  uUsuarioControl in 'Control\uUsuarioControl.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
