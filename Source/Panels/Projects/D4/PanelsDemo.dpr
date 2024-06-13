program PanelsDemo;

uses
  Forms,
  Hooks_ExtCtrls in '..\..\..\Hooks\Hooks_ExtCtrls.pas',
  Hooks_Forms in '..\..\..\Hooks\Hooks_Forms.pas',
  Hooks_Buttons in '..\..\..\Hooks\Hooks_Buttons.pas',
  MainForm in '..\..\MainForm.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
