unit Hooks_ExtCtrls;

{$INCLUDE Hooks.inc}

interface

uses
  System.Classes
  , Vcl.Controls
  , Vcl.ExtCtrls;

{$IFDEF PANEL_HOOKS}
Type
  TPanel = class(Vcl.ExtCtrls.TPanel)
  protected
    procedure Loaded; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;
{$ENDIF}

implementation

{$IFDEF PANEL_HOOKS}
uses
  Vcl.Forms;

{ TPanel }

constructor TPanel.Create(AOwner: TComponent);
begin
  inherited;
  ParentBackground := False;
  StyleElements := StyleElements - [seClient, seFont];
end;

procedure TPanel.Loaded;
begin
  inherited;

  //Cambio il font di default di tutte i Panels
  if (not ParentFont) and (Font.Name = 'MS Sans Serif') and (Font.Size = 8) then
  begin
    Font.Name := Screen.IconFont.Name;
    //Rispetto MS Sans Serif occorre aumentare il font Size
    Font.Size := Screen.IconFont.Size;
  end;

  //Cambio bordo di "default"
  if BevelOuter = bvRaised then
    BevelOuter := bvNone;

end;
{$ENDIF}

end.
