unit frmPomoc_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmPomoc = class(TForm)
    bmbZamknij: TBitBtn;
    btnPoprzedni: TButton;
    btnNastepna: TButton;
    pgcPomoc: TPageControl;
    tshPrzelozenie: TTabSheet;
    tshMaterial: TTabSheet;
    tshZmienneObcia: TTabSheet;
    tshWspolPrzeciaz: TTabSheet;
    tshSchemat: TTabSheet;
    tshWarPracy: TTabSheet;
    tshNapreStyk: TTabSheet;
    procedure btnPoprzedniClick(Sender: TObject);
    procedure btnNastepnaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPomoc: TfrmPomoc;

implementation

{$R *.dfm}

procedure TfrmPomoc.btnNastepnaClick(Sender: TObject);
begin
  pgcPomoc.TabIndex:=pgcPomoc.TabIndex+1;
end;

procedure TfrmPomoc.btnPoprzedniClick(Sender: TObject);
begin
  if pgcPomoc.TabIndex>0 then pgcPomoc.TabIndex:=pgcPomoc.TabIndex-1;
end;

end.
