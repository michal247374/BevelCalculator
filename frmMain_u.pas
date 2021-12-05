unit frmMain_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, frmPomoc_u,
  Vcl.Samples.Spin, System.Math;

type
  TfrmMain = class(TForm)
    pgcMain: TPageControl;
    tshEtap1: TTabSheet;
    stbPasekStanu: TStatusBar;
    pnlNaglowek1: TPanel;
    lblNaglowek1: TLabel;
    lblNaglowek1Tresc: TLabel;
    pnlParmetryWejsc: TPanel;
    lblParametrWejsc: TLabel;
    lblPredObr1: TLabel;
    edtPredObr1: TEdit;
    lblObrMin1: TLabel;
    lblMoc: TLabel;
    edtMoc: TEdit;
    lblKW1: TLabel;
    pnlCzasPracy: TPanel;
    lblCzasPracy: TLabel;
    lblLh: TLabel;
    lblGodziny: TLabel;
    edtCzasPracy: TEdit;
    pnlZmianaObciazeniaWCzasie: TPanel;
    lblZmianaObciazenia: TLabel;
    pnlZmianaKierunku: TPanel;
    lblZmianaKierunku: TLabel;
    cbxZmianaKierunku: TCheckBox;
    lblOkres1: TLabel;
    lblOkres2: TLabel;
    lblOkres3: TLabel;
    sedCzas1: TSpinEdit;
    lblCzasTrwania: TLabel;
    lblWartoscObciazenia: TLabel;
    sedObciazenie1: TSpinEdit;
    sedCzas2: TSpinEdit;
    sedCzas3: TSpinEdit;
    sedObciazenie3: TSpinEdit;
    sedObciazenie2: TSpinEdit;
    lblProcent1: TLabel;
    lblProcent2: TLabel;
    lblProcent3: TLabel;
    lblProcent4: TLabel;
    lblProcent5: TLabel;
    lblProcent6: TLabel;
    btnZmianaObciazeniaWCzasieHelp: TButton;
    pnlMaterialZebnika: TPanel;
    lblMaterialZebnika: TLabel;
    lblMateria³1: TLabel;
    edtRe1: TEdit;
    cbxMaterial1: TComboBox;
    edtRm1: TEdit;
    edtTwardosc1: TEdit;
    edtObrobkaCieplna1: TEdit;
    lblObrobkaCieplna1: TLabel;
    btnMaterial1Help: TButton;
    lblTwardosc1: TLabel;
    lblRm1: TLabel;
    lblRe1: TLabel;
    tshEtap2: TTabSheet;
    lblMoment1: TLabel;
    edtMoment1: TEdit;
    lblNm1: TLabel;
    pnlParametryWyjscia: TPanel;
    lblParametryWyjscia: TLabel;
    lblPredObr2: TLabel;
    lblObrMin2: TLabel;
    lblPrzelozenie: TLabel;
    lblMoment2: TLabel;
    lblNm2: TLabel;
    edtPredObr2: TEdit;
    btnSzeregi: TButton;
    edtMoment2: TEdit;
    pnlMaterialKolaZebatego: TPanel;
    lblMaterialKolaZebatego: TLabel;
    lblMaterial2: TLabel;
    lblObrobkaCieplna2: TLabel;
    lblTwardosc2: TLabel;
    lblRm2: TLabel;
    lblRe2: TLabel;
    edtRe2: TEdit;
    cbxMaterial2: TComboBox;
    edtRm2: TEdit;
    edtTwardosc2: TEdit;
    edtObrobkaCieplna2: TEdit;
    pnlWspPrzeciazenia: TPanel;
    lblWspPrzeciazenia: TLabel;
    lblTmaxTnom: TLabel;
    edtTmaxTnom: TEdit;
    bntWspPrzeciazeniaHelp: TButton;
    pnlSchemat: TPanel;
    lblSchamat: TLabel;
    lblMontazKol: TLabel;
    bntSchematHelp: TButton;
    cbxMontazKol: TComboBox;
    cbxLozyska: TComboBox;
    lblLozyska: TLabel;
    pnlWarunkiPracy: TPanel;
    lblWarunkiPracy: TLabel;
    lblObcOdSilnika: TLabel;
    btnWarunkiPracyHelp: TButton;
    cbxObcOdSilnika: TComboBox;
    cbxObcOdMaszyny: TComboBox;
    lblObcOdMaszyny: TLabel;
    lblHB1: TLabel;
    lblMPa1: TLabel;
    lblMPa2: TLabel;
    lblMPa3: TLabel;
    lblHB2: TLabel;
    lblMPa4: TLabel;
    cbxPrzelozenie: TComboBox;
    btnDalej1: TButton;
    pnlNaglowek2: TPanel;
    lblNaglowek2: TLabel;
    lblNaglowek2Tresc: TLabel;
    pnlPodProbZmecz: TPanel;
    lblPodProbZmecz: TLabel;
    lblPodProbZmeczKola: TLabel;
    lblPodProbZmeczZebnika: TLabel;
    edtPodProbZmeczKola: TEdit;
    edtPodProbZmeczZebnika: TEdit;
    bntDalej2: TButton;
    pnlRownowazna: TPanel;
    lblRownowazna: TLabel;
    lblRownowaznaKolo: TLabel;
    lblRownowaznaZebnik: TLabel;
    edtRownowaznaKolo: TEdit;
    edtRownowaznaZebnik: TEdit;
    lblRownowaznaWspol: TLabel;
    edtRownowaznaWspol: TEdit;
    pnlWspolTrwalosciPracy: TPanel;
    lblWspolTrwalosciPracy: TLabel;
    lblWspolTrwalosciPracyKolo: TLabel;
    lblWspolTrwalosciPracyZebnik: TLabel;
    edtWspolTrwalosciPracyKolo: TEdit;
    edtWspolTrwalosciPracyZebnik: TEdit;
    pnlNapreKrytyczne: TPanel;
    lblNapreKrytyczne: TLabel;
    lblNpreKrytyczneKolo: TLabel;
    lblNapreKrytyczneZebnik: TLabel;
    edtNapreKrytyczneKolo: TEdit;
    edtNapreKrytyczneZebnik: TEdit;
    pnlWspolBezpieczenstwa: TPanel;
    lblWspolBezpieczenstwa: TLabel;
    lblShKolo: TLabel;
    lblShZebnika: TLabel;
    cbxShZebnik: TComboBox;
    cbxShKolo: TComboBox;
    pnlDopNapreStyk: TPanel;
    lblDopNapreStyk: TLabel;
    lblDopNapreStykKolo: TLabel;
    lblDopNapreStykZebnik: TLabel;
    edtDopNapreStykKolo: TEdit;
    edtDopNapreStykZebnik: TEdit;
    pnlOblDopNapreStyk: TPanel;
    lblOblDopNapreStyk: TLabel;
    edtOblDopNapreStyk: TEdit;
    pnlMaxNapr: TPanel;
    lblMaxNapr: TLabel;
    lblMaxNaprKolo: TLabel;
    lblMaxNaprZebnik: TLabel;
    edtMaxNaprStykKolo: TEdit;
    edtMaxNaprStykZebnik: TEdit;
    edtMaxNaprGnacZebnik: TEdit;
    edtMaxNaprGnacKolo: TEdit;
    lblMaxNaprStyk: TLabel;
    lblMaxNaprGnac: TLabel;
    procedure btnSzeregiClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDalej1Click(Sender: TObject);
    procedure btnMaterial1HelpClick(Sender: TObject);
    procedure edtPredObr1Exit(Sender: TObject);
    procedure cbxPrzelozenieChange(Sender: TObject);
    procedure edtMoment1Exit(Sender: TObject);
    procedure sedCzas2Change(Sender: TObject);
    procedure sedCzas3Change(Sender: TObject);
  private
    procedure ShowHint(ASender: TObject);
    procedure WspolczynnikZmianyObciarzenia();
    function PodstawaProbyZmecz(intTwartosc: Integer): Integer;
    function RownowaznaLiczbaCykli(douPredObrtowa: Double): Integer;
    function WspolczynnikTrwalosciPracy(douPodstawaProbyZmecz, douRownowaznaLiczbaCykli: double): Double;
    function NaprezeniaKrytyczne(intTwardosc: Integer; strObrobkaCieplna: String): Double;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btnDalej1Click(Sender: TObject); //Przejœcie do Etapu2, obliczenia dla Etap2
begin
   tshEtap2.TabVisible:= true;
   pgcMain.TabIndex:=1;
   edtPodProbZmeczZebnika.text := inttostr(frmMain.PodstawaProbyZmecz(strtoint(edtTwardosc1.Text)));
   edtPodProbZmeczKola.text := inttostr(frmMain.PodstawaProbyZmecz(strtoint(edtTwardosc2.Text)));
   frmMain.WspolczynnikZmianyObciarzenia;
   edtRownowaznaZebnik.text:=inttostr(frmMain.RownowaznaLiczbaCykli(strtofloat(edtPredObr1.text)));
   edtRownowaznaKolo.text:=inttostr(frmMain.RownowaznaLiczbaCykli(strtofloat(edtPredObr2.text)));
   edtWspolTrwalosciPracyZebnik.Text:=floattostr(frmMain.WspolczynnikTrwalosciPracy(strtofloat(edtPodProbZmeczZebnika.text),strtofloat(edtRownowaznaZebnik.text)));
   edtWspolTrwalosciPracyKolo.Text:=floattostr(frmMain.WspolczynnikTrwalosciPracy(strtofloat(edtPodProbZmeczKola.text),strtofloat(edtRownowaznaKolo.text)));

end;

procedure TfrmMain.btnMaterial1HelpClick(Sender: TObject);
begin
   frmPomoc.Show;
   frmPomoc.pgcPomoc.TabIndex:=1;
end;

procedure TfrmMain.btnSzeregiClick(Sender: TObject);
begin
   frmPomoc.Show;
   frmPomoc.pgcPomoc.TabIndex:=0;
   //MessageDlg('test',TMsgDlgType.mtInformation,mbYesNoCancel,0);
end;

procedure TfrmMain.cbxPrzelozenieChange(Sender: TObject);
begin
  edtPredObr2.text :=floattostr(strtofloat(edtPredObr1.Text)/strtofloat(cbxPrzelozenie.text));
  edtMoment2.text :=floattostr(strtofloat(edtMoment1.Text)*strtofloat(cbxPrzelozenie.text));
end;

procedure TfrmMain.edtMoment1Exit(Sender: TObject);
begin
   edtMoment2.text :=floattostr(strtofloat(edtMoment1.Text)*strtofloat(cbxPrzelozenie.text));
end;

procedure TfrmMain.edtPredObr1Exit(Sender: TObject);
begin
  if (Trim(edtPredObr2.text)<>'') then edtPredObr2.text :=floattostr(strtofloat(edtPredObr1.Text)/strtofloat(cbxPrzelozenie.text));
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
   Application.OnHint:=ShowHint;
   cbxPrzelozenie.Hint:='Prze³o¿enie'+#13+ 'Druga linia|Wartoœæ prze³o¿enia powinna byæ znormalizowana'; //Dodanie #13 tworzy now¹ linie w hincie a | przenosi do pasku stanu
   pgcMain.TabIndex:=0;
   tshEtap2.TabVisible:= false;
end;

function TfrmMain.NaprezeniaKrytyczne(intTwardosc: Integer; strObrobkaCieplna: String): Double;
var
  intTypObrobki: Integer;
  douTwardoscHRC: Double;
begin
  intTypObrobki:= strtoint(Copy(strObrobkaCieplna,1,1));
  {Pierwszy znak w obroce cieplnej to cyfra oznaczaj¹ca typ oborobki
     1 dla ulepszania i normalizowania
     2 dla hartowania na wzkros
     3 dla hartowania powierzchniowego
     4 dla naweglania
     5 dla azotowania
  }
  if ((intTypObrobki>1) and (intTypObrobki<5)) then  //przelicza z HB na HRC
  begin

  end;


end;

procedure TfrmMain.sedCzas2Change(Sender: TObject); //Procedury odpowedzialne za automatyczn¹ zmiane wartosci pozosta³ych sedCzas
begin
  sedCzas1.Value:=100-sedCzas2.Value-sedCzas3.Value;
end;

procedure TfrmMain.sedCzas3Change(Sender: TObject);
begin
  sedCzas1.Value:=100-sedCzas2.Value-sedCzas3.Value;
end;

procedure TfrmMain.ShowHint(ASender: TObject);  //Procedura przenosz¹ca hinty na pasek stanu
begin
  stbPasekStanu.Panels[0].Text:=Application.Hint;
end;

function TfrmMain.PodstawaProbyZmecz(intTwartosc: Integer): Integer; //Podajemy twardoœæ a zwraca bazow¹ liczbe cykli
begin
  if intTwartosc<200 then Result:=Round((IntPower(10,6)))
  else Result:=Round(20*(IntPower(10,6))) ; //Trzeba tutaj wymyslic jakis sposób zeby zwraca³a tak¹ wartoœc jak na wykresie
end;

function TfrmMain.WspolczynnikTrwalosciPracy(douPodstawaProbyZmecz,douRownowaznaLiczbaCykli: double): Double;
begin
   if douPodstawaProbyZmecz>douRownowaznaLiczbaCykli then
    Result:=Power(douPodstawaProbyZmecz/douRownowaznaLiczbaCykli,1/6)
   else
    Result:=Power(douPodstawaProbyZmecz/douRownowaznaLiczbaCykli,1/20)
end;

procedure TfrmMain.WspolczynnikZmianyObciarzenia; //Wylicza wspo³czynnik od zmiany obcia¿enia w czasie pracy
var
  kHE,O1,O2,O3,t1,t2,t3: Double;
begin
  O1:=sedObciazenie1.Value/100;
  O2:=sedObciazenie2.Value/100;
  O3:=sedObciazenie3.Value/100;
  t1:=sedCzas1.Value/100;
  t2:=sedCzas2.Value/100;
  t3:=sedCzas3.Value/100;
  kHE:=(Power(O1,3)*t1)+(Power(O2,3)*t2)+(Power(O3,3)*t3);
  edtRownowaznaWspol.text:=floattostr(kHE);
end;

function TfrmMain.RownowaznaLiczbaCykli(douPredObrtowa: Double): Integer;
begin
  Result:=Round(60*douPredObrtowa*strtoint(edtCzasPracy.text)*strtofloat(edtRownowaznaWspol.text));
end;

end.
