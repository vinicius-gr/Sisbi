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
  uLivroModel in 'Model\uLivroModel.pas',
  uModulos in 'View\uModulos.pas' {Modulos: TDataModule},
  uUnidadeControl in 'Control\uUnidadeControl.pas',
  uUnidadeDao in 'Dao\uUnidadeDao.pas',
  uUnidadeModel in 'Model\uUnidadeModel.pas',
  uReservaModel in 'Model\uReservaModel.pas',
  uReservaControl in 'Control\uReservaControl.pas',
  uReservaDao in 'Dao\uReservaDao.pas',
  uModulosUsuario in 'View\uModulosUsuario.pas' {DataModule1: TDataModule},
  uSolicitacaoControl in 'Control\uSolicitacaoControl.pas',
  uSolicitacaoDao in 'Dao\uSolicitacaoDao.pas',
  uSolicitacaoModel in 'Model\uSolicitacaoModel.pas',
  uEmprestimoControl in 'Control\uEmprestimoControl.pas',
  uEmprestimoDao in 'Dao\uEmprestimoDao.pas',
  uEmprestimoModel in 'Model\uEmprestimoModel.pas',
  uMultaControl in 'Control\uMultaControl.pas',
  uMultaModel in 'Model\uMultaModel.pas',
  uMultaDao in 'Dao\uMultaDao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TModulos, Modulos);
  Application.CreateForm(TDataModule1, ModulosUsuario);
  Application.Run;
end.
