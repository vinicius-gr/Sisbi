unit uFrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList, Vcl.ActnMan,
  Vcl.ToolWin, Vcl.ActnCtrls, Vcl.ActnMenus, uFrmMainUsuario, uUsuarioControl,
  uEnumerado, FireDAC.Comp.Client;

type
  TForm1 = class(TForm)
    usrTxt: TEdit;
    pwTxt: TEdit;
    ButtonLogar: TButton;
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionManager1: TActionManager;
    RecuperarSenha: TAction;
    Sobre: TAction;
    procedure ButtonLogarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ButtonLogarClick(Sender: TObject);
var
  VControleUsuario: TUsuarioControl;
  SenhaInserida: string;
  VQry: TFDQuery;

begin
  VControleUsuario.Create;
  SenhaInserida := pwTxt.Text;

  try
    VControleUsuario.UsuarioModel.Cpf := usrTxt.Text;
    if VControleUsuario.UsuarioModel.VerificaSenha(SenhaInserida) then
      begin
        try
          Application.CreateForm(TForm2, Form2);
          Form2.ShowModal;
        finally
          Form2.Release;
        end;
      end;
  finally
    VControleUsuario.Free;
  end;
end;

end.
