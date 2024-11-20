unit MainForm;

interface

{$INCLUDE ..\Hooks\Hooks.inc}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Dialogs,
  Forms, Hooks_Forms,
  ExtCtrls, Hooks_ExtCtrls,
  StdCtrls,
  Buttons, Hooks_Buttons, ImgList, Menus;

type
  TForm1 = class(TForm)
    BluePanel: TPanel;
    YellowPanel: TPanel;
    OKBtn: TBitBtn;
    CancelBtn: TBitBtn;
    ImageList: TImageList;
    MainMenu: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    N1: TMenuItem;
    PrintSetup1: TMenuItem;
    Print1: TMenuItem;
    N2: TMenuItem;
    Save1: TMenuItem;
    Open1: TMenuItem;
    New1: TMenuItem;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Color := clAqua;
  //BluePanel.StyleElements := BluePanel.StyleElements - [seClient];
  //YellowPanel.StyleElements := YellowPanel.StyleElements - [seClient];
end;

end.
    