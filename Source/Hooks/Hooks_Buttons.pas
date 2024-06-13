unit Hooks_Buttons;

{$INCLUDE Hooks.inc}

interface

{$IFDEF HOOKS}
uses
  Classes
  , Buttons;
{$ENDIF}

{$IFDEF BUTTONS_HOOKS}
Type
  TBitBtn = class(Buttons.TBitBtn)
  protected
    procedure Loaded; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;
{$ENDIF}

implementation

{$IFDEF BUTTONS_HOOKS}
uses
  Controls
  ,  Graphics
  ;

{ TBitBtn }
procedure TBitBtn.Loaded;
begin
  inherited;
  if Cursor = crDefault then
    Cursor := crHandPoint;

  //Forzo il font grassetto
  if (Font.Style = []) then
    Font.Style := [fsBold];
end;

constructor TBitBtn.Create(AOwner: TComponent);
begin
  inherited;
  StyleElements := StyleElements - [seFont];
end;
{$ENDIF}

end.
