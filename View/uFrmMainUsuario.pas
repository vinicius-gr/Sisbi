unit uFrmMainUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList, Vcl.ActnMan,
  Vcl.ToolWin, Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TForm2 = class(TForm)
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
    Label3: TLabel;
    EditNasc: TEdit;
    EditTelefone: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    EditEmail: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    EditSenha: TEdit;
    LabelCpf: TLabel;
    Button3: TButton;
    Label8: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Button1: TButton;
    Button2: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}


end.
