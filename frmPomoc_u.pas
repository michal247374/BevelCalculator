unit frmPomoc_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Imaging.jpeg;

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
    tshObciazenie: TTabSheet;
    pnlZmienneObcia: TPanel;
    pnlNaglowek3: TPanel;
    lblNaglowek3: TLabel;
    lblZmienneObcia1: TLabel;
    lblZmienneObcia2: TLabel;
    pnlPrzelozenie: TPanel;
    lblPrzelozenie: TLabel;
    pnlNaglowek1: TPanel;
    lblNaglowek1: TLabel;
    imgPrzelozenie: TImage;
    pnlNaglowek2: TPanel;
    lblNaglowek2: TLabel;
    pnlMaterial: TPanel;
    lblMaterial3: TLabel;
    lblMaterial1: TLabel;
    lblMaterial2: TLabel;
    pnlWspolPrzeciaz: TPanel;
    lblWspolPrzeciaz: TLabel;
    pnlNaglowek4: TPanel;
    lblNaglowek4: TLabel;
    Image1: TImage;
    pnlSchematPrzekl: TPanel;
    lblSchematPrzekl: TLabel;
    Image2: TImage;
    pnlNaglowek5: TPanel;
    lblNaglowek5: TLabel;
    pnlWarunkiPrac: TPanel;
    lblWarunkiPracy1: TLabel;
    pnlNaglowek6: TPanel;
    lblNaglowek6: TLabel;
    lblWarunkiPracy2: TLabel;
    lblWarunkiPracy3: TLabel;
    pnlNaglowek7: TPanel;
    lblNaglowek7: TLabel;
    pnlNaprezStyk: TPanel;
    lblNaprezStyk1: TLabel;
    Image3: TImage;
    lblNaprezStyk2: TLabel;
    pnlNaglowek8: TPanel;
    lblNaglowek8: TLabel;
    pnlObciazenie: TPanel;
    lblObciazenie1: TLabel;
    Image4: TImage;
    lblObciazenie2: TLabel;
    procedure btnPoprzedniClick(Sender: TObject);
    procedure btnNastepnaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tshWarPracyShow(Sender: TObject);

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

procedure TfrmPomoc.FormCreate(Sender: TObject);
begin
   //
end;

procedure TfrmPomoc.tshWarPracyShow(Sender: TObject);
begin
  lblWarunkiPracy2.Caption:= 'Warunki obci��enia od maszyny nap�dzaj�cej:' +#13+
   '1. Lekkie - silniki elektryczne, turbiny gazowe i parowe o rzadkich rozruchach i ma�ym przeci��eniu'+#13+
   '2. �rednie - silniki hydrauliczne, turbiny gazowe i parowe o cz�stych rozruchach i du�ym przeci��eniu '+#13+
   '3. Ci�kie - silniki spalinowe cztero- i wi�cej cylindrowe'+#13+
   '4. Bardzo ci�kie - silniki spalinowe jednocylindrowe.';

   lblWarunkiPracy3.Caption:= 'Warunki pracy urz�dzenia nap�dzanego:' +#13+
   '1. Lekkie - przeno�niki z r�wnomiernym zasilaniem, pompy od�rodkowe' +#13+
   '2. �rednie - przeno�niki z nier�wnomiernym zasilaniem, nap�d g��wny w obrabiarkach, spr�arki od�rodkowe, mieszalniki, wyci�garki' +#13+
   '3. Ci�kie - betoniarki, maszyny rolnicze, pompy t�okowe 3-cylindrowe'+#13+
   '4. Bardzo ci�kie - m�yny, kruszarki, pompy t�okowe 1-cylindrowe, maszyny wiertnicze.';
end;

end.
