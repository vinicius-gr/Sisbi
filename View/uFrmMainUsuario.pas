unit uFrmMainUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList, Vcl.ActnMan,
  Vcl.ToolWin, Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

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
    Button3: TButton;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Label9: TLabel;
    EditNomeBusca: TEdit;
    Button4: TButton;
    Edit1: TEdit;
    Label10: TLabel;
    Edit2: TEdit;
    Label11: TLabel;
    Edit3: TEdit;
    Label12: TLabel;
    Button5: TButton;
  private

  public

  end;

var
  FormMainUsuario: TFormMainUsuario;

implementation

{$R *.dfm}


end.
