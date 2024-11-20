unit Hooks_Forms;

{$INCLUDE Hooks.inc}

interface

uses
  System.Classes
  , Vcl.Controls
  , Vcl.Forms;

{$IFDEF FORMS_HOOKS}
Type
  TForm = class(Vcl.Forms.TForm)
  protected
    procedure Loaded; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;
{$ENDIF}

implementation

{$IFDEF FORMS_HOOKS}
{ TForm }
procedure TForm.Loaded;
begin
  inherited;
  if Position = poDesktopCenter then
    Position := poScreenCenter;

  //Cambio il font di default di tutte le form
  if (Font.Name = 'MS Sans Serif') and (Font.Size = 8) then
  begin
    //Uso il font di Windows
    Font.Name := Screen.IconFont.Name;
    //Rispetto MS Sans Serif occorre aumentare il font Size
    Font.Size := Screen.IconFont.Size;
  end;
end;

constructor TForm.Create(AOwner: TComponent);
begin
  inherited;
  StyleElements := StyleElements - [seClient];
end;
{$ENDIF}

end.
