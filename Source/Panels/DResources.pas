unit DResources;

interface

uses
  System.SysUtils, System.Classes, Vcl.BaseImageCollection,
  SVGIconImageCollection;

type
  TdmResources = class(TDataModule)
    Images: TSVGIconImageCollection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmResources: TdmResources;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
