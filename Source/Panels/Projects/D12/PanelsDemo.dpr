program PanelsDemo;

uses
  Forms,
  Hooks_ExtCtrls in '..\..\..\Hooks\Hooks_ExtCtrls.pas',
  Hooks_Forms in '..\..\..\Hooks\Hooks_Forms.pas',
  Hooks_Buttons in '..\..\..\Hooks\Hooks_Buttons.pas',
  MainFormNew in '..\..\MainFormNew.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles,
  Vcl.Graphics,
  DResources in '..\..\DResources.pas' {dmResources: TDataModule};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TdmResources, dmResources);
  //TStyleManager.TrySetStyle('Windows11 Modern Light');
  TStyleManager.TrySetStyle('Windows11 Modern Dark');
  //dmResources.Images.FixedColor := clYellow;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
