unit frmMain_u;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, frmPomoc_u,
  Vcl.Samples.Spin, System.Math, IniFiles, Vcl.Imaging.pngimage;
type
  // od teraz TEdit b?d? wspiera?y wprowadzanie danych liczbowych. Typ danych liczbowych okre?lany jest za pomoc? pola Tag.
  // Tag = 1 pozwala na wprowadzanie liczb ca?kowitych, a Tag = 2 liczb zmiennoprzecinkowych.
  TEdit =  class(Vcl.StdCtrls.TEdit)
  strict private
    function GetAsInteger: Integer;
    function GetAsDouble: Double;
    procedure SetAsInteger(AValue: Integer);
    procedure SetAsDouble(AValue: Double);
  public
    function IsValid: Boolean;
    property AsInteger: Integer read GetAsInteger write SetAsInteger;
    property AsDouble: Double read GetAsDouble write SetAsDouble;
  end;

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
    chbZmianaKierunku: TCheckBox;
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
    lblMateria?1: TLabel;
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
    btnDalej2: TButton;
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
    lblMPa2_1: TLabel;
    lblMPa2_2: TLabel;
    lblMPa2_3: TLabel;
    lblMPa2_4: TLabel;
    lblMPa2_5: TLabel;
    Button1: TButton;
    tshEtap3: TTabSheet;
    pnlNaglowek3: TPanel;
    lblNaglowek3: TLabel;
    lblNaglowek3Tresc: TLabel;
    pnlZewnOblSredZebnika: TPanel;
    lblZewnOblSredZebnika: TLabel;
    lblKd: TLabel;
    lblDe1Prim: TLabel;
    edtKd: TEdit;
    edtZewnOblSredZebnika: TEdit;
    lblMPa2_6: TLabel;
    lblMPa2_7: TLabel;
    imgWymiary: TImage;
    edtKbe: TEdit;
    lblKbe: TLabel;
    edtKhb: TEdit;
    lblKhb: TLabel;
    edtKa: TEdit;
    lblKa: TLabel;
    lblMM3_1: TLabel;
    pnlModulZewnetrzny: TPanel;
    lblModulZewnetrzny: TLabel;
    lblMte: TLabel;
    edtModulZewnetrzny: TEdit;
    lblMM3_2: TLabel;
    pnlLiczbaZebow: TPanel;
    lblLiczbaZebow: TLabel;
    lblLiczbaZebowKolo: TLabel;
    lblLiczbaZebowZebnik: TLabel;
    edtLiczbaZebowZebnik: TEdit;
    edtLiczbaZebowKolo: TEdit;
    pnlPrzelozenieRzecz: TPanel;
    lblPrzelozRzecz: TLabel;
    lblIrz: TLabel;
    edtPrzelozenieRzecz: TEdit;
    pnlDluZewnTworzacej: TPanel;
    lblDluZewnTworzacej: TLabel;
    lblTworzacejRe: TLabel;
    edtTworzaca: TEdit;
    lblMM3_3: TLabel;
    pnlSzerokoscWienca: TPanel;
    lblSzerokoscWienca: TLabel;
    lblB: TLabel;
    lblMM3_4: TLabel;
    edtSzerokoscWienca: TEdit;
    pnlDluSredTworzacej: TPanel;
    lblDluSredTworzacej: TLabel;
    lblTworzacaRm: TLabel;
    lblMM3_5: TLabel;
    edtSredTworzaca: TEdit;
    pnlKatyStozkow: TPanel;
    lblKatyStozkow: TLabel;
    lblKatyKolo: TLabel;
    lblKatyZebnik: TLabel;
    edtKatyZebnik: TEdit;
    edtKatyKolo: TEdit;
    pnlSredniceZewnetrzne: TPanel;
    lblSredniceZewnetrzne: TLabel;
    lblSredPodzialowa: TLabel;
    lblMM3_6: TLabel;
    edtSredPodzialowaZebnik: TEdit;
    lblSredniceZebnik: TLabel;
    lblSredniceKolo: TLabel;
    edtSredPodzialowaKolo: TEdit;
    edtSredWierzKolo: TEdit;
    edtSredWierzZebnik: TEdit;
    lblSredWierzch: TLabel;
    lblMM3_7: TLabel;
    edtSredStopKolo: TEdit;
    edtSredStopZebnik: TEdit;
    lblSredStop: TLabel;
    lblMM3_8: TLabel;
    edtSredSredniaKolo: TEdit;
    edtSredSredniaZebnik: TEdit;
    lblSredSrednia: TLabel;
    lblMM3_9: TLabel;
    btnDalej3: TButton;
    pnlModulSredni: TPanel;
    lblModulSredni: TLabel;
    lblMM: TLabel;
    lblMM3_10: TLabel;
    edtModulSredni: TEdit;
    updKbe: TUpDown;
    Label2: TLabel;
    tshEtap4: TTabSheet;
    pnlNaglowek4: TPanel;
    lblNaglowek4: TLabel;
    lblNaglowke4Tresc: TLabel;
    pnlSilaObwodowaWZazeb: TPanel;
    lblSilaObwodowaWZazeb: TLabel;
    lblFT: TLabel;
    lblN4_1: TLabel;
    edtSilaObwodowaWZazeb: TEdit;
    pnlPredObwodowa: TPanel;
    lblPredObwodowa: TLabel;
    lblV: TLabel;
    lblMS: TLabel;
    edtPredObwodowa: TEdit;
    pnlKlasaDokladnosci: TPanel;
    lblKlasaDokladnosci: TLabel;
    edtKlasaDokladnosci: TEdit;
    pnlWspolKHV: TPanel;
    lblWspolKHV: TLabel;
    edtKHV: TEdit;
    lblKHV: TLabel;
    pnlWspolKHA: TPanel;
    lblWspolKHA: TLabel;
    lblKHA: TLabel;
    edtKHA: TEdit;
    pnlJedObliczSilaObwodowa: TPanel;
    lblJedObliczSilaObwodowa: TLabel;
    edtJedObliczSilaObwodowa: TEdit;
    pnlWspolZH: TPanel;
    lblWspolZH: TLabel;
    edtZH: TEdit;
    lblWHT: TLabel;
    lblNMM: TLabel;
    lblZH: TLabel;
    pnlWspolZE: TPanel;
    lblWspolZE: TLabel;
    lblZE: TLabel;
    edtZE: TEdit;
    pnlWspolZEpsilo: TPanel;
    lblWspolZEpsilo: TLabel;
    lblZEpsilo: TLabel;
    edtZEpsilon: TEdit;
    lblOstrze?enie2_1: TLabel;
    lblEpsilonAlpha: TLabel;
    edtCzolowyWskaznikPrzyporu: TEdit;
    pnlOblNapreStyk: TPanel;
    lblOblNapreStyk: TLabel;
    lblSigmaH: TLabel;
    edtOblNaprezStyk: TEdit;
    lblMPa4_1: TLabel;
    pnlWspolZR: TPanel;
    lblWspolZR: TLabel;
    lblRa: TLabel;
    lblZR: TLabel;
    edtRa: TEdit;
    edtZR: TEdit;
    pnlWspolZV: TPanel;
    lblWspolZV: TLabel;
    lblZV: TLabel;
    edtZV: TEdit;
    pnlWspolZX: TPanel;
    lblWspolZX: TLabel;
    lblZX: TLabel;
    edtZX: TEdit;
    pnlNaprezeniaDop: TPanel;
    lblNaprezeniaDop: TLabel;
    lblSigmaHPrim1: TLabel;
    lblMPa4_2: TLabel;
    edtNaprDopStykSprawdzenie1: TEdit;
    lblSigmaHPrim2: TLabel;
    edtNaprDopStykSprawdzenie2: TEdit;
    lblMPa4_3: TLabel;
    pnlWarWytrzStykowej: TPanel;
    lblWarWytrzStykowej: TLabel;
    lblSigmaH1: TLabel;
    Label4: TLabel;
    lblSigmaHmin: TLabel;
    Label6: TLabel;
    edtWarOblNaprezStyk: TEdit;
    edtNaprezStykDop: TEdit;
    lblWarunek: TLabel;
    pnlObciazeniePrzekladni: TPanel;
    lblObciazeniePrzekladni: TLabel;
    edtObciazeniePrzekladni: TEdit;
    lblProcent: TLabel;
    btnDalej4: TButton;
    lblOstrzezenie4_1: TLabel;
    lblOstrzezenie4_2: TLabel;
    edtNowaSzerokoscWienca: TEdit;
    updNowaSzerokoscWienca: TUpDown;
    pnlNowaSzerokoscWienca: TPanel;
    lblNowaSzerokoscWienca: TLabel;
    lblNoweB: TLabel;
    lblMM4_1: TLabel;
    lblOstrzezenie4_3: TLabel;
    tshEtap5: TTabSheet;
    pnlNaglowek5: TPanel;
    lblNaglowek5: TLabel;
    lblNaglowek5Tresc: TLabel;
    pnlWspolKFV: TPanel;
    lblWspolKFV: TLabel;
    lblKFV: TLabel;
    edtKFV: TEdit;
    pnlEkwiLiczZebow: TPanel;
    lblEkwiLiczZebow: TLabel;
    lblZeq1: TLabel;
    lblZeq2: TLabel;
    edtZeq1: TEdit;
    edtZeq2: TEdit;
    pnlWspolKFB: TPanel;
    lblWspolKFB: TLabel;
    lblKFB: TLabel;
    edtKFB: TEdit;
    pnlWspolKFA: TPanel;
    lblWspolKFA: TLabel;
    lblKFA: TLabel;
    edtKFA: TEdit;
    pnlJedObwdSilaPrzyZgin: TPanel;
    lblJedObwdSilaPrzyZgin: TLabel;
    lblWFt: TLabel;
    lblNMM5_1: TLabel;
    edtJedObwdSilaPrzyZgin: TEdit;
    pnlWspolYFS: TPanel;
    lblWspolYFS: TLabel;
    lblYFS1: TLabel;
    edtYFS1: TEdit;
    pnlObliczNaprezGnace: TPanel;
    lblObliczNaprezGnace: TLabel;
    lblSigmaF1: TLabel;
    lblMPa5_1: TLabel;
    edtOblNaprezGnace1: TEdit;
    edtOblNaprezGnace2: TEdit;
    lblSigmaF2: TLabel;
    edtYFS2: TEdit;
    lblYFS2: TLabel;
    pnlNaprezKrytyczneZginanie: TPanel;
    lblNaprezKrytyczneZginanie: TLabel;
    lblSigmaFlim1: TLabel;
    lblSigmaFlim2: TLabel;
    edtNaprezKrytyczneZginanie1: TEdit;
    edtNaprezKrytyczneZginanie2: TEdit;
    lblMPa5_3: TLabel;
    lblMPa5_4: TLabel;
    pnlWspolTrwalosc: TPanel;
    lblWspolTrwalosci: TLabel;
    edtNFLim1: TEdit;
    edtNFLim2: TEdit;
    lblKolo5_1: TLabel;
    lblZebnik5_1: TLabel;
    lblNFlim: TLabel;
    edtNFE2: TEdit;
    edtNFE1: TEdit;
    lblNFE: TLabel;
    edtYN2: TEdit;
    edtYN1: TEdit;
    lblYN: TLabel;
    edtKFE: TEdit;
    lblKFE: TLabel;
    pnlWspolYA: TPanel;
    lblWspolYA: TLabel;
    lblYA: TLabel;
    edtYA: TEdit;
    pnlWspolYR: TPanel;
    lblWspolYR: TLabel;
    lblYR: TLabel;
    edtYR: TEdit;
    chbSzlifowane: TCheckBox;
    pnlWspolYX: TPanel;
    lblWspolYX: TLabel;
    lblYX1: TLabel;
    lblYX2: TLabel;
    edtYX1: TEdit;
    edtYX2: TEdit;
    pnlWspolSF: TPanel;
    lblWspolSF: TLabel;
    lblSF: TLabel;
    cbxSF: TComboBox;
    pnlWarunekWytrzymGnacy: TPanel;
    lblWarunekWytrzyGnacy: TLabel;
    lblSigmaF: TLabel;
    lblMPa5_7: TLabel;
    lblSigmaFP: TLabel;
    lblMPa5_8: TLabel;
    lblWarunekGnacy: TLabel;
    edtNaprezGnace: TEdit;
    edtDopNaprezGnace: TEdit;
    pnlNaprezDopGnace: TPanel;
    lblNaprezDopGnace: TLabel;
    lblSigmaFP1: TLabel;
    lblMPa5_5: TLabel;
    lblSigmaFP2: TLabel;
    lblMPa5_6: TLabel;
    edtNaprDopGnace1: TEdit;
    edtNaprDopGnace2: TEdit;
    btnDalej5: TButton;
    lblOstrzezenie5_1: TLabel;
    lblStopnie1: TLabel;
    lblStopnie2: TLabel;
    tshEtap6: TTabSheet;
    pnlNaprezStykPrzyPrzeciaz: TPanel;
    lblNaprezStykPrzyPrzeciaz: TLabel;
    edtNaprezStykPrzyPrzeciaz: TEdit;
    pnlNaglowek6: TPanel;
    lblNaglowek6: TLabel;
    lblNaglowek6Tresc: TLabel;
    pnlMomentRzecz: TPanel;
    lblMomentRzecz: TLabel;
    lblT2RZ: TLabel;
    edtMomentRzecz: TEdit;
    pnlSilaObwodowa: TPanel;
    lblSilyObwodowe: TLabel;
    lblFt1: TLabel;
    edtSilaObwodowa1: TEdit;
    edtNaprezStykMax: TEdit;
    lblWarunekStykowyPrzeciaz: TLabel;
    lblSigmaHMax: TLabel;
    lblSigmaHPMax: TLabel;
    lblMPa6_1: TLabel;
    pnlNaprezGnacPrzyPrzeciaz: TPanel;
    lblNaprezGnacPrzyPrzeciaz: TLabel;
    lblWarunekGnacyPrzeciaz1: TLabel;
    lblSigmaFMax1: TLabel;
    lblSigmaFPmax1: TLabel;
    lblMPa6_2: TLabel;
    edtNaprezGnacPrzyPrzeciaz1: TEdit;
    edtNaprezGnacMax1: TEdit;
    lblSigmaFMax2: TLabel;
    edtNaprezGnacPrzyPrzeciaz2: TEdit;
    lblWarunekGnacyPrzeciaz2: TLabel;
    lblSigmaFPMax2: TLabel;
    edtNaprezGnacMax2: TEdit;
    lblMPa6_3: TLabel;
    lblNm6_1: TLabel;
    lblN6_1: TLabel;
    edtSilaObwodowa2: TEdit;
    lblN6_2: TLabel;
    lblFt2: TLabel;
    pnlSilyPromeniowe: TPanel;
    lblSilyPromeniowe: TLabel;
    lblFr1: TLabel;
    lblN6_3: TLabel;
    lblN6_4: TLabel;
    lblFr2: TLabel;
    edtSilaPromeniowa1: TEdit;
    edtSilaPromeniowa2: TEdit;
    pnlSilyPoosiowe: TPanel;
    lblSilyPoosiowe: TLabel;
    lblFa1: TLabel;
    lblN6_5: TLabel;
    lblN6_6: TLabel;
    lblFa2: TLabel;
    edtSilaPoosiowa1: TEdit;
    edtSilaPoosiowa2: TEdit;
    lblOstrzezenie6_1: TLabel;
    lblOstrzezenie6_2: TLabel;
    Button2: TButton;
    btnRaport: TButton;
    SaveDialog1: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure btnDalej1Click(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure edtPredObr1Exit(Sender: TObject);
    procedure cbxPrzelozenieChange(Sender: TObject);
    procedure edtMoment1Exit(Sender: TObject);
    procedure sedCzas2Change(Sender: TObject);
    procedure sedCzas3Change(Sender: TObject);
    procedure cbxMaterial1Change(Sender: TObject);
    procedure cbxMaterial2Change(Sender: TObject);
    procedure cbxShChange(Sender: TObject);
    procedure btnDalej2Click(Sender: TObject);
    procedure updKbeClick(Sender: TObject; Button: TUDBtnType);
    procedure btnDalej3Click(Sender: TObject);
    procedure btnDalej4Click(Sender: TObject);
    procedure updNowaSzerokoscWiencaClick(Sender: TObject; Button: TUDBtnType);
    procedure chbSzlifowaneClick(Sender: TObject);
    procedure cbxSFChange(Sender: TObject);
    procedure btnDalej5Click(Sender: TObject);
    procedure DeaktywacjaPrzyZmianach(Sender: TObject);
    procedure ZabezpieczTEdit(Sender: TObject);
    procedure btnRaportClick(Sender: TObject);
  private
    procedure ShowHint(ASender: TObject);
    procedure WspolczynnikZmianyObciarzenia();
    procedure PodstawaProbyZmecz();
    procedure RownowaznaLiczbaCykli();
    procedure WspolczynnikTrwalosciPracy();
    procedure NaprezeniaKrytyczne();
    procedure DopNaprezStyk;
    procedure OblDopNaprezStyk;
    procedure NaprPrzyPrzeciaz;
    procedure WspolKHB;
    procedure WspolKA;
    procedure ZewnOblSredZebnika;
    procedure ModulZewnetrzny;
    procedure LiczbaZebow;
    procedure RzeczywistePrzelozenie;
    procedure ZewnTworzaca;
    procedure SzerokoscWienca;
    procedure SredniaTworzaca;
    procedure KatyStozkow;
    procedure SredniceZewnetrzne;
    procedure ModulSredni;
    procedure SrednieSrednice;
    procedure SilaObwodowa;
    procedure PredObwodowa;
    procedure KlasaDokladnosci;
    procedure WspolKHV;
    procedure JedObliczSilaObwodowa;
    procedure WspolPrzyporu;
    procedure ObliczNaprezStykowe;
    procedure WspolZR;
    procedure WspolZv;
    procedure WspolZx;
    procedure NaprezStykoweSprawdz;
    procedure WarunekWytrzStykowej;
    procedure ObciazeniePrzekladni;
    procedure KorektaSzerokosciWienca(bActive: Boolean);
    procedure ObliczeniaEtap3(b: Integer=0);
    procedure WspolKFV;
    procedure WspolKFB;
    procedure JedObwdSilaPrzyZgin;
    procedure EqLiczbaZebow;
    procedure WspolYFS;
    procedure ObliczNaprezGnace;
    procedure NaprezKrytycznePrzyZginaniu;
    procedure WspolTrwalosci;
    procedure WspolYA;
    procedure WspolYR;
    procedure WspolYX;
    procedure NaprezGnaceSprawdz;
    procedure WarunekWytrzGnacej;
    procedure NaprezStykPrzyPrzeciaz;
    procedure NaprezGnacePrzyPrzeciaz;
    procedure MomentRzecz;
    procedure SilyObwodowe;
    procedure SilyPromieniowe;
    procedure SilyPoosiowe;
    function AproksymacjaLiniowa(strNazwaDokumentu: String; douWejscie: Double): Double;
    function HBnaHRC(intTwardoscWHB:  Integer): Double;
    function HBnaHV(intTwardoscWHB:  Integer): Double;
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frmMain: TfrmMain;

implementation

uses SynPdf,ShellApi;
{$R *.dfm}
procedure TfrmMain.FormCreate(Sender: TObject); //Domyslna procedura forma, uruchamiana na pocz?tku programu, Obliczenia dla Etapu 1
var
  iniMaterialy: TIniFile;
  intIloscMaterialow, intIndeks: Integer;
begin
   Application.OnHint:=ShowHint;
   //Application.MainFormOnTaskBar:= False; //Pozawala na zmiane aktywnego okna
   //Wczytywanie materia?ow z pliku Materaly.ini w katalogu z plikiem .exe
   iniMaterialy:= TIniFile.Create(ExtractFilePath(Application.ExeName)+ 'Materialy.ini');
   if not iniMaterialy.SectionExists('Ustawienia') then  //Sprawdzenie czy dokument zosta? otwarty prawid?owo lub czy jest pusty
    raise Exception.Create('Nie uda?o si? otworzy? pliku '+'Materialy.ini'+' lub jest pusty');
   intIloscMaterialow:=iniMaterialy.ReadInteger('Ustawienia','IloscMaterialow',000);
   for intIndeks := 0 to intIloscMaterialow-1 do
    begin
    cbxMaterial1.Items.Add(iniMaterialy.ReadString(IntToStr(intIndeks),'Nazwa',''));
    cbxMaterial2.Items.Add(iniMaterialy.ReadString(IntToStr(intIndeks),'Nazwa',''));
    end;
   iniMaterialy.Free;

   //Wczytanie domy?lnych materia?ow
   cbxMaterial1.ItemIndex:= 3;
   cbxMaterial1Change(self);
   cbxMaterial2.ItemIndex:= 4;
   cbxMaterial2Change(self);

   tshEtap2.TabVisible:= false;
   tshEtap3.TabVisible:= false;
   tshEtap4.TabVisible:= false;
   tshEtap5.TabVisible:= false;
   tshEtap6.TabVisible:= false;
end;

procedure TfrmMain.btnDalej1Click(Sender: TObject); //Przej?cie do Etapu2, obliczenia dla Etap2
begin
  if (cbxMaterial1.ItemIndex or cbxMaterial2.ItemIndex)=-1 then
    raise Exception.Create('Aby dalej prowadzi? obliczenia nale?y wybra? materia?');

  if sedCzas1.Value+sedCzas2.Value+sedCzas3.Value<>100 then
    raise Exception.Create('??czny czas trwania w panelu "ZMIANA OBCI??ENIA W CZASIE" powinien wynosi? 100%');

  tshEtap2.TabVisible:= true;
  pgcMain.TabIndex:=1;  //Odblokowuje i prze??cz na 2 zak?adke

  {Podstawa pr?by zm?czeniowej}
  PodstawaProbyZmecz();

  {R?wnowa?na liczba cykli}
  WspolczynnikZmianyObciarzenia;
  RownowaznaLiczbaCykli;

  {Wspo?czynnik trwa?o??i pracy}
  WspolczynnikTrwalosciPracy;

  {Napr??enia krytyczne przy bazowej liczbie cykli}
  NaprezeniaKrytyczne;

  {Dopuszczalne napr??enia stykowe}
  DopNaprezStyk;

  {Obliczeniowe dopuszczalne napr??enia stykowe}
  OblDopNaprezStyk;

  {Graniczne napr??enia dopuszczalne przy przeci??eniach}
  NaprPrzyPrzeciaz;

end;

procedure TfrmMain.btnDalej2Click(Sender: TObject); //Przej?cie do Etapu3, obliczenia dla Etap3
begin
  tshEtap3.TabVisible:= true;
  pgcMain.TabIndex:=2;  //Odblokowuje i prze??cz na 3 zak?adke
  ObliczeniaEtap3; //Wywo?anie wszytkich procedur zwi?zanych z obliczeniami i uzupe?nianiem edit?w
end;

procedure TfrmMain.btnDalej3Click(Sender: TObject);  //Przej?cie do Etapu4, obliczenia dla Etap4
begin
  tshEtap4.TabVisible:= true;
  pgcMain.TabIndex:=3;  //Odblokowuje i prze??cz na 4 zak?adke

  {Si?a obwodowa w zaz?bieniu}
  SilaObwodowa;

  {Predko?? obwodowa k??}
  PredObwodowa;

  {Klasa dok?adno?ci}
  KlasaDokladnosci;

  {Wspo?czynnik miedzyz?bnego obci??enia dynamicznego}
  WspolKHV;

  {Jednostkowa obliczeniowa si?a obwodowa}
  JedObliczSilaObwodowa;

  {Wspo?czynnik przyporu}
  WspolPrzyporu;

  {Obliczeniowe napr??enia stykowe}
  ObliczNaprezStykowe;

  {Wspo?czynnik uwzgledniaj?cy chropowato?? powierzchni roboczej z?b?w}
  WspolZR;

  {Wspo?czynnik uwzgl?dniaj?cy pr?dko?? obwodow?}
  WspolZv;

  {Wspo?czynnik uwzgl?dniaj?cy wymiary k?? zebatych}
  WspolZx;

  {Napr??enia dopusczalne dla oblicze? sprawdzajaych}
  NaprezStykoweSprawdz;

  {Warunek wytrzyma?o?ci stykowej z?b?w}
  WarunekWytrzStykowej;

  {Obci??enie przek?adni}
  ObciazeniePrzekladni;
end;

procedure TfrmMain.btnDalej4Click(Sender: TObject);  //Przej?cie do Etapu5, obliczenia dla Etap5
begin
  tshEtap5.TabVisible:= true;
  pgcMain.TabIndex:=4;  //Odblokowuje i prze??cz na 5 zak?adke

  {Wsp??czynnik mi?dzyz?bnego obci??enia dynamicznego przy zginaniu z?ba}
  WspolKFV;

  {Wsp??czynnik nier?wnomierno?ci rozk?adu obci??enia wzgl?dem lini styku}
  WspolKFB;

  {Jednostkowa obwodowa si?a obliczeniowa przy zginaniu}
  JedObwdSilaPrzyZgin;

  {Ekwiwalentna licza z?b?w}
  EqLiczbaZebow;

  {Wspo?czynnik kszta?tu z?b?w z?bniak i ko?a zebatego}
  WspolYFS;

  {Obliczeniowe napr??enia gn?ce}
  ObliczNaprezGnace;

  {Napre?enia krytyczne przy zginaniu}
  NaprezKrytycznePrzyZginaniu;

  {Wspo?czynnik trwa?o?ci}
  WspolTrwalosci;

  {Wspo?czynnik uwzgl?dniaj?cy wp?yw dwustronego przek?adania obci??enia na z?b}
  WspolYA;

  {Wspo?czynnik uwzgl?dniaj?cy chropowato?? powierzchni przejsciowej z?ba i jej obr?bke ciepln?}
  WspolYR;

  {Wsp??czynnik uwzgl?daj?cy wymiary k??}
  WspolYX;

  {Napr??enia dopuszczalne dla oblicze? sprawdzaj?cych}
  NaprezGnaceSprawdz;

  {Warunek wytrzyma?o?ci gn?cej z?b?w}
  WarunekWytrzGnacej;

end;

procedure TfrmMain.btnDalej5Click(Sender: TObject); //Przej?cie do Etapu5, obliczenia dla Etap6
begin
  tshEtap6.TabVisible:= true;
  pgcMain.TabIndex:=5;  //Odblokowuje i prze??cz na 5 zak?adke

  {Napr??enia stykowe przy przeci??eniach}
  NaprezStykPrzyPrzeciaz;

  {Napr??enia gn?ce przy przeci??eniach}
  NaprezGnacePrzyPrzeciaz;

  {Moment rzeczywisty na wyj?ciu}
  MomentRzecz;

  {Si?y obwodowe}
  SilyObwodowe;

  {Si?a promieniowa}
  SilyPromieniowe;

  {Si?y poosiowe}
  SilyPoosiowe;

end;

{$Region 'Ogolna'}
procedure TfrmMain.btnHelpClick(Sender: TObject);
{Odpowada za otwarcie helpa na odpowiedniej zak?adce,
tag przycisku musi byc taki sam jak index zak?adki w frmPomoc}
begin
   frmPomoc.Show;
   frmPomoc.pgcPomoc.TabIndex:=Tcontrol(Sender).Tag;
end;

procedure TfrmMain.ShowHint(ASender: TObject); //Procedura przenosz?ca hinty na pasek stanu
begin
  stbPasekStanu.Panels[0].Text:=Application.Hint;
end;

function TfrmMain.AproksymacjaLiniowa(strNazwaDokumentu: String; douWejscie: Double): Double;
{Funkcja wyliczaj?ca wartosc z "wykresu" na podstawie pliku .ini z punktami i argumetu
Plik z danymi musi znajdowa? sie w katalogu z plikiem .exe
a jego nazwa podana w formacie ###.ini.}
var
  iniDane: TIniFile;
  intDlugosc, I: Integer;
  tabDane: array of array of Double; //Deklaracja 2wymiarowej dynamicznej tablicy
begin
  iniDane:=TIniFile.Create(ExtractFilePath(Application.ExeName)+ strNazwaDokumentu);
  //Otwiera plik o nazwie z podanej w wywo?aniu, kt?ry znajduje sie w tym samym katalogu co plik.exe
  if not iniDane.SectionExists('0') then  //Sprawdzenie czy dokument zosta? otworzony prawid?owo lub czy jest pusty
    raise Exception.Create('Nie uda?o si? otworzy? pliku '+strNazwaDokumentu+' lub jest pusty');
  intDlugosc:=0;
  while iniDane.SectionExists(IntToStr(intDlugosc)) do intDlugosc:=intDlugosc+1;
  //Sprawdzamy ile punkt?w jest zawartych w pliku, aby zadeklarowac tablice odpowiedniej d?ugosci
  SetLength(tabDane,2,intDlugosc);
  for I := 0 to intDlugosc-1 do //Wczytujemy dane z pliku do tablicy
  begin
    tabDane[0,I] := iniDane.ReadFloat(IntToStr(I),'x',0);
    tabDane[1,I] := iniDane.ReadFloat(IntToStr(I),'y',0);
  end;
  I:=0;
  while douWejscie>tabDane[0,I+1] do i:=i+1; //Szukamy przedzia?u zawieraj?cego nasz argument
  Result:=tabDane[1,I] + (tabDane[1,I+1] - tabDane[1,I]) * (douWejscie - tabDane[0,I]) / (tabDane[0,I+1] - tabDane[0,I]);
  // Zwraca warto?? aproksymacji liniowej obliczonej na podstawie 2 skrajnych punkt?w przedzia?u
end;

function TfrmMain.HBnaHRC(intTwardoscWHB: Integer): Double;
//Przelicza twardosc z HB na HRC wg wykresu
begin
  Result:=  AproksymacjaLiniowa('HBnaHRC.ini', intTwardoscWHB);
end;

function TfrmMain.HBnaHV(intTwardoscWHB: Integer): Double;
//Przelicza twardosc z HB na HRC wg wykresu
begin
  Result:=  AproksymacjaLiniowa('HBnaHV.ini', intTwardoscWHB);
end;

procedure TfrmMain.DeaktywacjaPrzyZmianach(Sender: TObject);
begin
  case pgcMain.ActivePageIndex of
  0:begin
      tshEtap2.TabVisible:= false;
      tshEtap3.TabVisible:= false;
      tshEtap4.TabVisible:= false;
      tshEtap5.TabVisible:= false;
      tshEtap6.TabVisible:= false;
    end;
  1:begin
      tshEtap3.TabVisible:= false;
      tshEtap4.TabVisible:= false;
      tshEtap5.TabVisible:= false;
      tshEtap6.TabVisible:= false;
    end;
  2:begin
      tshEtap4.TabVisible:= false;
      tshEtap5.TabVisible:= false;
      tshEtap6.TabVisible:= false;
    end;
  3:begin
      tshEtap5.TabVisible:= false;
      tshEtap6.TabVisible:= false;
    end;
  4:begin
      tshEtap6.TabVisible:= false;
    end;
  end;
end;

procedure TfrmMain.ZabezpieczTEdit(Sender: TObject);
begin
  if TEdit(Sender).Tag=1 then
  begin
    if not TEdit(Sender).IsValid then
    raise Exception.Create('Wprowadzona warto?? nie reprezentuje liczby ca?kowitej');
  end
  else
  begin
    if not TEdit(Sender).IsValid then
    raise Exception.Create('Wprowadzona warto?? nie reprezentuje liczby');
  end;
end;
{$ENDREGION}

{$Region 'Etap 1'}
procedure TfrmMain.cbxMaterial1Change(Sender: TObject);
//Wczytanie pozosta?ych parametr?w materia?u po zmianie
var
  iniMaterialy: TIniFile;
begin
  if cbxMaterial1.ItemIndex=-1 then
    raise Exception.Create('Aby dalej prowadzi? obliczenia nale?y wybra? materia?');
  iniMaterialy:= TIniFile.Create(ExtractFilePath(Application.ExeName)+ 'Materialy.ini');
  edtObrobkaCieplna1.Text:= iniMaterialy.ReadString(IntToStr(cbxMaterial1.ItemIndex),'Obrobka','');
  edtTwardosc1.AsInteger:= iniMaterialy.ReadInteger(IntToStr(cbxMaterial1.ItemIndex),'Twardosc',0);
  edtRm1.AsInteger:= iniMaterialy.ReadInteger(IntToStr(cbxMaterial1.ItemIndex),'Rm',0);
  edtRe1.AsInteger:= iniMaterialy.ReadInteger(IntToStr(cbxMaterial1.ItemIndex),'Re',0);
  iniMaterialy.Free;
  DeaktywacjaPrzyZmianach(Sender);
end;

procedure TfrmMain.cbxMaterial2Change(Sender: TObject);
//Dzia?a tak samo jak dla cbxMaterial1
var
  iniMaterialy: TIniFile;
begin
   if cbxMaterial2.ItemIndex=-1 then
    raise Exception.Create('Aby dalej prowadzi? obliczenia nale?y wybra? materia?');
  iniMaterialy:= TIniFile.Create(ExtractFilePath(Application.ExeName)+ 'Materialy.ini');
  edtObrobkaCieplna2.Text:= iniMaterialy.ReadString(IntToStr(cbxMaterial2.ItemIndex),'Obrobka','');
  edtTwardosc2.AsInteger:= iniMaterialy.ReadInteger(IntToStr(cbxMaterial2.ItemIndex),'Twardosc',0);
  edtRm2.AsInteger:= iniMaterialy.ReadInteger(IntToStr(cbxMaterial2.ItemIndex),'Rm',0);
  edtRe2.AsInteger:= iniMaterialy.ReadInteger(IntToStr(cbxMaterial2.ItemIndex),'Re',0);
  iniMaterialy.Free;
  DeaktywacjaPrzyZmianach(Sender);
end;

procedure TfrmMain.cbxPrzelozenieChange(Sender: TObject);
begin
  edtPredObr2.AsDouble :=RoundTo(edtPredObr1.AsDouble/strtofloat(cbxPrzelozenie.text),-2);
  edtMoment2.AsDouble :=RoundTo(edtMoment1.AsDouble*strtofloat(cbxPrzelozenie.text),-2);
  DeaktywacjaPrzyZmianach(Sender);
end;

procedure TfrmMain.edtMoment1Exit(Sender: TObject);
//Oblicza moment wyjsciowy przy zmianie momentu wejsciowego + sprawdza czy jest liczb?
begin
  if not edtMoment1.IsValid then
    raise Exception.Create('Podana warto?? momentu nie reprezentuje liczby');
   edtMoment2.AsDouble :=RoundTo(edtMoment1.AsDouble*strtofloat(cbxPrzelozenie.text),-2);
end;

procedure TfrmMain.edtPredObr1Exit(Sender: TObject);
//Oblicza wyj?ciow? predko?c obrotow? przy zmiania pr?dkosci wejsciowej
begin
  if not edtPredObr1.IsValid then
    raise Exception.Create('Podana warto?? pr?dko?ci nie reprezentuje liczby');
  edtPredObr2.AsDouble :=RoundTo(edtPredObr1.AsDouble/strtofloat(cbxPrzelozenie.text),-2);;
end;

{Procedury odpowedzialne za automatyczn? zmiane wartosci pozosta?ych sedCzas
Jeszcze do poprawki}
procedure TfrmMain.sedCzas2Change(Sender: TObject);
begin
  sedCzas1.Value:=100-sedCzas2.Value-sedCzas3.Value;
  DeaktywacjaPrzyZmianach(Sender);
end;

procedure TfrmMain.sedCzas3Change(Sender: TObject);
begin
  sedCzas1.Value:=100-sedCzas2.Value-sedCzas3.Value;
  DeaktywacjaPrzyZmianach(Sender);
end;

{$ENDREGION}

{$Region 'Etap 2'}
procedure TfrmMain.PodstawaProbyZmecz;
//Okre?la podstawy pr?by zm?czeniowej na podstawie twardosci materia?u
begin
  edtPodProbZmeczZebnika.AsInteger:=Round(AproksymacjaLiniowa('PodstawaProbyZmeczeniowej.ini',
                                              edtTwardosc1.AsInteger)*1000000);
  edtPodProbZmeczKola.AsInteger:=Round(AproksymacjaLiniowa('PodstawaProbyZmeczeniowej.ini',
                                              edtTwardosc2.AsInteger)*1000000);
end;

procedure TfrmMain.WspolczynnikZmianyObciarzenia; //Wylicza wspo?czynnik od zmiany obcia?enia w czasie pracy
var
  O1,O2,O3,t1,t2,t3: Double;
begin
  O1:=sedObciazenie1.Value/100;
  O2:=sedObciazenie2.Value/100;
  O3:=sedObciazenie3.Value/100;
  t1:=sedCzas1.Value/100;
  t2:=sedCzas2.Value/100;
  t3:=sedCzas3.Value/100;
  edtRownowaznaWspol.AsDouble:=RoundTo((Power(O1,3)*t1)+(Power(O2,3)*t2)+(Power(O3,3)*t3),-4);
end;

procedure TfrmMain.RownowaznaLiczbaCykli;
begin
  edtRownowaznaZebnik.AsDouble:=Round(60*edtPredObr1.AsDouble*edtCzasPracy.AsInteger*edtRownowaznaWspol.AsDouble);
  edtRownowaznaKolo.AsDouble:=Round(60*edtPredObr2.AsDouble*edtCzasPracy.AsInteger*edtRownowaznaWspol.AsDouble);
end;

procedure TfrmMain.WspolczynnikTrwalosciPracy;
begin
//Obliczenia dla z?bnika
   if edtPodProbZmeczZebnika.AsInteger>edtRownowaznaZebnik.AsDouble then
    edtWspolTrwalosciPracyZebnik.AsDouble:=RoundTo(Power(edtPodProbZmeczZebnika.AsInteger/edtRownowaznaZebnik.AsDouble,1/6),-2)
   else
    edtWspolTrwalosciPracyZebnik.AsDouble:=RoundTo(Power(edtPodProbZmeczZebnika.AsInteger/edtRownowaznaZebnik.AsDouble,1/20),-2);

//Obliczenia dla ko?a z?batego
  if edtPodProbZmeczKola.AsInteger>edtRownowaznaKolo.AsDouble then
    edtWspolTrwalosciPracyKolo.AsDouble:=RoundTo(Power(edtPodProbZmeczKola.AsInteger/edtRownowaznaKolo.AsDouble,1/6),-2)
  else
    edtWspolTrwalosciPracyKolo.AsDouble:=RoundTo(Power(edtPodProbZmeczKola.AsInteger/edtRownowaznaKolo.AsDouble,1/20),-2)
end;

procedure TfrmMain.NaprezeniaKrytyczne;
var
  intObrobkaIndeks1, intObrobkaIndeks2: Integer;
  iniDane: TIniFile;
begin
  //Wczytanie indeksu obrobki cieplnej
  iniDane:= TIniFile.Create(ExtractFilePath(Application.ExeName)+ 'Materialy.ini');
  intObrobkaIndeks1:= iniDane.ReadInteger(IntToStr(cbxMaterial1.ItemIndex),'ObrobkaIndeks',-1);
  intObrobkaIndeks2:= iniDane.ReadInteger(IntToStr(cbxMaterial2.ItemIndex),'ObrobkaIndeks',-1);
  iniDane.Free;

  //Obliczenia dla z?bnika
  case intObrobkaIndeks1 of
    -1 :  raise Exception.Create('Nie uda?o sie wczytac indeksu materia?u');
     1 :  edtNapreKrytyczneZebnik.AsDouble:= 2*edtTwardosc1.AsInteger+70;
     2 :  edtNapreKrytyczneZebnik.AsDouble:= RoundTo(17*HBnaHRC(edtTwardosc1.AsInteger)+200,-2);
     3 :  edtNapreKrytyczneZebnik.AsDouble:= RoundTo(17*HBnaHRC(edtTwardosc1.AsInteger)+200,-2);
     4 :  edtNapreKrytyczneZebnik.AsDouble:= RoundTo(23*HBnaHRC(edtTwardosc1.AsInteger),-2);
     5 :  edtNapreKrytyczneZebnik.AsDouble:= 1050;
     else raise Exception.Create('?le zdefiniowana obr?bka cieplna materia?u');
  end;

  //Obliczenia dla ko?a z?batego
   case intObrobkaIndeks2 of
    -1 :  raise Exception.Create('Nie uda?o sie wczytac indeksu materia?u');
     1 :  edtNapreKrytyczneKolo.AsDouble:= 2*edtTwardosc2.AsInteger+70;
     2 :  edtNapreKrytyczneKolo.AsDouble:= RoundTo(17*HBnaHRC(edtTwardosc2.AsInteger)+200,-2);
     3 :  edtNapreKrytyczneKolo.AsDouble:= RoundTo(17*HBnaHRC(edtTwardosc2.AsInteger)+200,-2);
     4 :  edtNapreKrytyczneKolo.AsDouble:= RoundTo(23*HBnaHRC(edtTwardosc2.AsInteger),-2);
     5 :  edtNapreKrytyczneKolo.AsDouble:= 1050;
     else raise Exception.Create('?le zdefiniowana obr?bka cieplna materia?u');
  end;
end;

procedure TfrmMain.DopNaprezStyk;
begin
  //Obliczenia dla zebnika
  edtDopNapreStykZebnik.AsDouble:= RoundTo(0.9*edtNapreKrytyczneZebnik.AsDouble*
    edtWspolTrwalosciPracyZebnik.AsDouble/StrToFloat(cbxShZebnik.text),-2);
  //Obliczenia dla ko?a z?batego
  edtDopNapreStykKolo.AsDouble:= RoundTo(0.9*edtNapreKrytyczneKolo.AsDouble*
    edtWspolTrwalosciPracyKolo.AsDouble/StrToFloat(cbxShKolo.text),-2);
end;

procedure TfrmMain.cbxShChange(Sender: TObject);
begin
   DopNaprezStyk;
   OblDopNaprezStyk;
   DeaktywacjaPrzyZmianach(Sender);
end;

procedure TfrmMain.OblDopNaprezStyk;
var
  douMinDopNapreStyk: Double;
begin
  //Oblicza warto?? Obliczeniowych dopuszcalnych napre?e? stykowych i wpisuje do Edita
  edtOblDopNapreStyk.AsDouble:=RoundTo(0.45*(edtDopNapreStykZebnik.AsDouble+edtDopNapreStykKolo.AsDouble),-2);
  //Sprawdzamy kt?re napre?enia stykowe s? mniejsze
  if edtDopNapreStykZebnik.AsDouble > edtDopNapreStykKolo.AsDouble then
    douMinDopNapreStyk:= edtDopNapreStykKolo.AsDouble
  else douMinDopNapreStyk:= edtDopNapreStykZebnik.AsDouble;
  //Sprawdza czy zosta? spe?niowny warunek
  if edtOblDopNapreStyk.AsDouble> 1.15* douMinDopNapreStyk then //Przekroczone napre?enia, potrzeba poprawek
    begin
      //btnDalej2.Enabled:=false;
      lblOstrze?enie2_1.Visible:=true;
    end
  else
    begin
      //btnDalej2.Enabled:=true;
      lblOstrze?enie2_1.Visible:=false;
    end;

end;

procedure TfrmMain.NaprPrzyPrzeciaz;
var
  intObrobkaIndeks1, intObrobkaIndeks2: Integer;
  iniDane: TIniFile;
begin
  //Wczytanie indeksu obrobki cieplnej
  iniDane:= TIniFile.Create(ExtractFilePath(Application.ExeName)+ 'Materialy.ini');
  intObrobkaIndeks1:= iniDane.ReadInteger(IntToStr(cbxMaterial1.ItemIndex),'ObrobkaIndeks',-1);
  intObrobkaIndeks2:= iniDane.ReadInteger(IntToStr(cbxMaterial2.ItemIndex),'ObrobkaIndeks',-1);
  iniDane.Free;

  //Obliczenia napre?en stykowych dla z?bnika
  case intObrobkaIndeks1 of
    -1   :  raise Exception.Create('Nie uda?o sie wczytac indeksu materia?u');
     1,2 :  edtMaxNaprStykZebnik.AsDouble:= RoundTo(2.8*edtRe1.AsInteger,-2);
     3,4 :  edtMaxNaprStykZebnik.AsDouble:= RoundTo(44*HBnaHRC(edtTwardosc1.AsInteger),-2);
     5   :  edtMaxNaprStykZebnik.AsDouble:= RoundTo(3*HBnaHV(edtTwardosc1.AsInteger),-2);
  end;

  //Obliczenia napre?en stykowych dla ko?a
  case intObrobkaIndeks2 of
    -1   :  raise Exception.Create('Nie uda?o sie wczytac indeksu materia?u');
     1,2 :  edtMaxNaprStykKolo.AsDouble:= RoundTo(2.8*edtRe2.AsInteger,-2);
     3,4 :  edtMaxNaprStykKolo.AsDouble:= RoundTo(44*HBnaHRC(edtTwardosc2.AsInteger),-2);
     5   :  edtMaxNaprStykKolo.AsDouble:= RoundTo(3*HBnaHV(edtTwardosc2.AsInteger),-2);
  end;

  //Obliczenia napre?en gn?cych dla z?bnika
  case intObrobkaIndeks1 of
    -1   :  raise Exception.Create('Nie uda?o sie wczytac indeksu materia?u');
     1   :  edtMaxNaprGnacZebnik.AsDouble:= RoundTo(3.7*edtTwardosc1.AsInteger,-2);
     2,3 :  edtMaxNaprGnacZebnik.AsDouble:= 1030;
     4   :  edtMaxNaprGnacZebnik.AsDouble:= 1140;
     5   :  edtMaxNaprGnacZebnik.AsDouble:= 1030;
  end;

  //Obliczenia napre?en gn?cych dla ko?a
  case intObrobkaIndeks2 of
    -1   :  raise Exception.Create('Nie uda?o sie wczytac indeksu materia?u');
     1   :  edtMaxNaprGnacKolo.AsDouble:= RoundTo(3.7*edtTwardosc2.AsInteger,-2);
     2,3 :  edtMaxNaprGnacKolo.AsDouble:= 1030;
     4   :  edtMaxNaprGnacKolo.AsDouble:= 1140;
     5   :  edtMaxNaprGnacKolo.AsDouble:= 1030;
  end;

end;
{$ENDREGION}

{$REGION 'Etap 3'}
procedure TfrmMain.updKbeClick(Sender: TObject; Button: TUDBtnType); //Zmiana wartosci wspo?czynnika kbe
begin
  edtKbe.AsDouble:= updKbe.Position*0.01;
  DeaktywacjaPrzyZmianach(Sender);
  btnDalej2Click(sender);
end;

procedure TfrmMain.WspolKHB; //Wylicza warto?? wspolczynnika na podstawie wspo?czynnika kbe i wykres?w
var
douArgument: Double;
begin
  //Argument do funkcji AproksymacjaLiniowa
  douArgument:=edtKbe.AsDouble*StrToFloat(cbxPrzelozenie.Text)/(2-edtKbe.AsDouble);
  if edtTwardosc2.AsInteger<=350 then // wykres kHB_a lub kHB_b w zalezno?ci od twardosci ko?a
     begin
      if cbxMontazKol.ItemIndex=0 then //  wykres kHB_a_1 lub kHB_a_2 w zaleznosci od rodzaju monta?u ko?
        begin
          if cbxLozyska.ItemIndex=0 then //  wykres kHB_a_1a lub kHB_a_1b w zaleznosci od ?o?yskowania
            edtKhb.AsDouble:=RoundTo(AproksymacjaLiniowa('kHB_a_1a.ini',douArgument),-3)
          else edtKhb.AsDouble:=RoundTo(AproksymacjaLiniowa('kHB_a_1b.ini',douArgument),-3)
        end
      else edtKhb.AsDouble:=RoundTo(AproksymacjaLiniowa('kHB_a_2.ini',douArgument),-3)
     end
  else
    begin
    if cbxMontazKol.ItemIndex=0 then //  wykres kHB_b_1 lub kHB_b_2 w zaleznosci od rodzaju monta?u ko?
      begin
        if cbxLozyska.ItemIndex=0 then //  wykres kHB_b_1a lub kHB_b_1b w zaleznosci od ?o?yskowania
          edtKhb.AsDouble:=RoundTo(AproksymacjaLiniowa('kHB_b_1a.ini',douArgument),-3)
        else edtKhb.AsDouble:=RoundTo(AproksymacjaLiniowa('kHB_b_1b.ini',douArgument),-3)
    end
    else edtKhb.AsDouble:=RoundTo(AproksymacjaLiniowa('kHB_b_2.ini',douArgument),-3)
   end;
  if edtKhb.AsDouble=0 then edtKhb.AsDouble:=1.4; //Zabezpieczenie przed wartoscia poza zakresem np. przy du?ych prze?ozeniach
end;

procedure TfrmMain.WspolKA; //Wspo?czynnik uwzgl?dniaj?cy zewnetrzne obci?zenie dynamiczne
var
tabKA: array[0..3,0..3] of Double;
begin
  //Uzupe?nienie tablicy wartosciami wspo?czynnik?w
  tabKA[0][0]:= 1.00; tabKA[0][1]:= 1.25; tabKA[0][2]:= 1.50; tabKA[0][3]:= 1.75;
  tabKA[1][0]:= 1.10; tabKA[1][1]:= 1.35; tabKA[1][2]:= 1.60; tabKA[1][3]:= 1.85;
  tabKA[2][0]:= 1.25; tabKA[2][1]:= 1.50; tabKA[2][2]:= 1.75; tabKA[2][3]:= 2.00;
  tabKA[3][0]:= 1.50; tabKA[3][1]:= 1.75; tabKA[3][2]:= 2.00; tabKA[3][3]:= 2.25;
  //Przypisanie wartosci na podstawie warunk?w obci??enia od silnik i maszyny roboczej
  edtKa.AsDouble:=tabKA[cbxObcOdSilnika.ItemIndex,cbxObcOdMaszyny.ItemIndex];
end;

procedure TfrmMain.ZewnOblSredZebnika;
begin
  edtZewnOblSredZebnika.AsDouble:=RoundTo(edtKd.AsDouble*Power((edtMoment1.AsDouble*edtKhb.AsDouble*edtKa.AsDouble*1000)/
      (0.85*edtOblDopNapreStyk.AsDouble*edtOblDopNapreStyk.AsDouble*(1-edtKbe.AsDouble)*edtKbe.AsDouble*StrToFloat(cbxPrzelozenie.Text))
      ,1/3),-2);
end;

procedure TfrmMain.ModulZewnetrzny; //Oblicza modu? obwodowy zewnetrzny i zaokr?gla do wartosci z norm
var
  tabModulyWgPN: array[0..28] of Double;  //Tablica na znormalizowane wartosci modu?u
  douModul, intMax, intMin: Double;
  intI: Integer;
begin
  //Uzupe?nienie tablicy
  tabModulyWgPN[0]:=1.0;  tabModulyWgPN[1]:=1.125;
  tabModulyWgPN[2]:=1.25; tabModulyWgPN[3]:=1.375;
  tabModulyWgPN[4]:=1.5;  tabModulyWgPN[5]:=1.75;
  tabModulyWgPN[6]:=2.0;  tabModulyWgPN[7]:=2.25;
  tabModulyWgPN[8]:=2.5;  tabModulyWgPN[9]:=2.75;
  tabModulyWgPN[10]:=3.0; tabModulyWgPN[11]:=3.5;
  tabModulyWgPN[12]:=4.0; tabModulyWgPN[13]:=4.5;
  tabModulyWgPN[14]:=5.0; tabModulyWgPN[15]:=5.5;
  tabModulyWgPN[16]:=6;   tabModulyWgPN[17]:=7.5;
  tabModulyWgPN[18]:=8;   tabModulyWgPN[19]:=9;
  tabModulyWgPN[20]:=10;  tabModulyWgPN[21]:=11;
  tabModulyWgPN[22]:=12;  tabModulyWgPN[23]:=14;
  tabModulyWgPN[24]:=16;  tabModulyWgPN[25]:=18;
  tabModulyWgPN[26]:=20;  tabModulyWgPN[27]:=22;
  tabModulyWgPN[28]:=25;

  //Obliczenie wartosci modu?u
  douModul:= edtZewnOblSredZebnika.AsDouble/17; //17 jest wstepn? liczb? z?b?w

  //Zaokroglenie do wartosci z normy
  intI:=0;
  while douModul>tabModulyWgPN[intI+1] do intI:=intI+1;
  intMin:=douModul- tabModulyWgPN[intI];
  intMax:=tabModulyWgPN[intI+1]- douModul;
  if intMin<intMax then edtModulZewnetrzny.AsDouble:=tabModulyWgPN[intI]
  else edtModulZewnetrzny.AsDouble:=tabModulyWgPN[intI+1];
end;

procedure TfrmMain.LiczbaZebow;
begin
  edtLiczbaZebowZebnik.AsInteger:= Ceil(edtZewnOblSredZebnika.AsDouble/edtModulZewnetrzny.AsDouble);
  edtLiczbaZebowKolo.AsInteger:= Round(edtLiczbaZebowZebnik.AsInteger*StrToFloat(cbxPrzelozenie.Text));
end;

procedure TfrmMain.RzeczywistePrzelozenie;
begin
  edtPrzelozenieRzecz.AsDouble:=RoundTo(edtLiczbaZebowKolo.AsInteger/edtLiczbaZebowZebnik.AsInteger,-2);
end;

procedure TfrmMain.ZewnTworzaca;
begin
  edtTworzaca.AsDouble:=RoundTo(0.5*edtModulZewnetrzny.AsDouble*
    Power(edtLiczbaZebowZebnik.AsInteger*edtLiczbaZebowZebnik.AsInteger+
    edtLiczbaZebowKolo.AsInteger*edtLiczbaZebowKolo.AsInteger,1/2),-2);
end;

procedure TfrmMain.SzerokoscWienca;
begin
  edtSzerokoscWienca.AsInteger:= Round(edtTworzaca.AsDouble*edtKbe.AsDouble);
  //Wpisanie wartosc do Edit?w na Etap4
  edtNowaSzerokoscWienca.AsInteger:= edtSzerokoscWienca.AsInteger;
  updNowaSzerokoscWienca.Position:= edtNowaSzerokoscWienca.AsInteger;
end;

procedure TfrmMain.SredniaTworzaca;
begin
  edtSredTworzaca.AsDouble:= edtTworzaca.AsDouble- 0.5* edtSzerokoscWienca.AsInteger;
end;

procedure TfrmMain.KatyStozkow;
begin
  edtKatyZebnik.AsDouble:= RoundTo(RadToDeg(ArcTan(1/edtPrzelozenieRzecz.AsDouble)),-3);
  edtKatyKolo.AsDouble:= RoundTo(RadToDeg(ArcTan(edtPrzelozenieRzecz.AsDouble)),-3);
end;

procedure TfrmMain.SredniceZewnetrzne;
begin
  //?rednice podzia?owe
  edtSredPodzialowaZebnik.AsDouble:= RoundTo(edtModulZewnetrzny.AsDouble*edtLiczbaZebowZebnik.AsDouble,-2);
  edtSredPodzialowaKolo.AsDouble:= RoundTo(edtModulZewnetrzny.AsDouble*edtLiczbaZebowKolo.AsDouble,-2);
  //?rednice wierzcho?k?w z?b?w
  edtSredWierzZebnik.AsDouble:= RoundTo(edtSredPodzialowaZebnik.AsDouble+ 2*
    edtModulZewnetrzny.AsDouble* cos(DegToRad(edtKatyZebnik.AsDouble)),-2);
  edtSredWierzKolo.AsDouble:= RoundTo(edtSredPodzialowaKolo.AsDouble+ 2*
    edtModulZewnetrzny.AsDouble* cos(DegToRad(edtKatyKolo.AsDouble)),-2);
  //?rednice st?p z?b?w
  edtSredStopZebnik.AsDouble:= RoundTo(edtSredPodzialowaZebnik.AsDouble- 2.4*
    edtModulZewnetrzny.AsDouble* cos(DegToRad(edtKatyZebnik.AsDouble)),-2);
  edtSredStopKolo.AsDouble:= RoundTo(edtSredPodzialowaKolo.AsDouble- 2.4*
    edtModulZewnetrzny.AsDouble* cos(DegToRad(edtKatyKolo.AsDouble)),-2);
end;

procedure TfrmMain.ModulSredni;
begin
  edtModulSredni.AsDouble:= RoundTo(edtModulZewnetrzny.AsDouble*edtSredTworzaca.AsDouble/edtTworzaca.AsDouble,-2);
end;

procedure TfrmMain.SrednieSrednice;
begin
  edtSredSredniaZebnik.AsDouble:= RoundTo(edtModulSredni.AsDouble*edtLiczbaZebowZebnik.AsDouble,-2);
  edtSredSredniaKolo.AsDouble:= RoundTo(edtModulSredni.AsDouble*edtLiczbaZebowKolo.AsDouble,-2);
end;

procedure TfrmMain.ObliczeniaEtap3(b: Integer); //Wartosc domyslna dla b = 0
begin
  {Zewnetrzna obliczeniowa ?rednica z?bnika:}
  {Wspo?czynnik nier?wnomierno?ci rozk?adu obci??enia wzd?u? lini styku kHB}
  WspolKHB;
  {Wspo?czynnik uwzgl?dniaj?cy zewnetrzne obci?zenie dynamiczne}
  WspolKA;
  {?rednica}
  ZewnOblSredZebnika;

  {Modu? obwodowy zewnetrzny}
  ModulZewnetrzny;

  {Liczby z?b?w}
  LiczbaZebow;

  {Rzeczywiste prze?o?enie}
  RzeczywistePrzelozenie;

  {D?ugo?? zewnetrzna tworz?cej ko?a sto?kowego}
  ZewnTworzaca;

  {Szeroko?? wie?ca k?? z?batych}
  if b=0 then SzerokoscWienca
  else edtSzerokoscWienca.AsInteger:=b;

  {D?ugo?? ?rednia tworz?cej ko?a sto?kowego}
  SredniaTworzaca;

  {K?ty sto?k?w podzia?owych}
  KatyStozkow;

  {?rednice zewnetrzne k?? sto?kowych}
  SredniceZewnetrzne;

  {Modu? w ?rednim przekroju z?ba}
  ModulSredni;

  {?rednice ?rednie k?? z?batych}
  SrednieSrednice;
end;
{$ENDREGION}

{$REGION 'Etap 4'}
procedure TfrmMain.SilaObwodowa;
begin
  edtSilaObwodowaWZazeb.AsDouble:= RoundTo(2*edtMoment1.AsDouble*1000/edtSredSredniaZebnik.AsDouble,-2);
end;

procedure TfrmMain.PredObwodowa;
begin
  edtPredObwodowa.AsDouble:= RoundTo(PI*edtSredSredniaZebnik.AsDouble*edtPredObr1.AsDouble/60000,-2);
end;

procedure TfrmMain.KlasaDokladnosci;
begin
  if edtPredObwodowa.AsDouble<=2 then edtKlasaDokladnosci.AsInteger:= 9
  else if edtPredObwodowa.AsDouble<=6 then edtKlasaDokladnosci.AsInteger:= 8
  else if edtPredObwodowa.AsDouble<=10 then edtKlasaDokladnosci.AsInteger:= 7
  else edtKlasaDokladnosci.AsInteger:= 6;
end;

procedure TfrmMain.WspolKHV; //Oblicza wspo?czynnik miedzyz?bnego obci??enia dynamicznego
var
  intI: Integer; //Indeks okreslany na podstawie predkosci
  tabPonizej350: array[6..9,0..4] of Double; //Tablica wspo?czynnik?w dla twardosci poni?ej 350HB
  tabPowyzej350: array[6..9,0..4] of Double; //Tablica wspo?czynnik?w dla twardosci powy?ej 350HB
begin
  //Tablica poni?ej 350HB
  tabPonizej350[6,0]:= 1.03; tabPonizej350[6,1]:= 1.09; tabPonizej350[6,2]:= 1.16; tabPonizej350[6,3]:= 1.25; tabPonizej350[6,4]:= 1.32;
  tabPonizej350[7,0]:= 1.04; tabPonizej350[7,1]:= 1.12; tabPonizej350[7,2]:= 1.2;  tabPonizej350[7,3]:= 1.32; tabPonizej350[7,4]:= 1.4;
  tabPonizej350[8,0]:= 1.05; tabPonizej350[8,1]:= 1.15; tabPonizej350[8,2]:= 1.24; tabPonizej350[8,3]:= 1.38; tabPonizej350[8,4]:= 1.48;
  tabPonizej350[9,0]:= 1.06; tabPonizej350[9,1]:= 1.12; tabPonizej350[9,2]:= 1.28; tabPonizej350[9,3]:= 1.45; tabPonizej350[9,4]:= 1.56;

  //Tablica powy?ej 350HB
  tabPowyzej350[6,0]:= 1.02; tabPowyzej350[6,1]:= 1.06; tabPowyzej350[6,2]:= 1.1;  tabPowyzej350[6,3]:= 1.16; tabPowyzej350[6,4]:= 1.2;
  tabPowyzej350[7,0]:= 1.02; tabPowyzej350[7,1]:= 1.06; tabPowyzej350[7,2]:= 1.12; tabPowyzej350[7,3]:= 1.19; tabPowyzej350[7,4]:= 1.25;
  tabPowyzej350[8,0]:= 1.03; tabPowyzej350[8,1]:= 1.09; tabPowyzej350[8,2]:= 1.15; tabPowyzej350[8,3]:= 1.24; tabPowyzej350[8,4]:= 1.3;
  tabPowyzej350[9,0]:= 1.03; tabPowyzej350[9,1]:= 1.09; tabPowyzej350[9,2]:= 1.17; tabPowyzej350[9,3]:= 1.28; tabPowyzej350[9,4]:= 1.35;

  //Okre?lenie drugiego argumentu do tablicy na podstawie pr?dko?ci obwodowej
  if edtPredObwodowa.AsDouble<=1 then intI:= 0
  else if edtPredObwodowa.AsDouble<=3 then intI:= 1
  else if edtPredObwodowa.AsDouble<=5 then intI:= 2
  else if edtPredObwodowa.AsDouble<=8 then intI:= 3
  else intI:= 4;

  if edtTwardosc2.AsInteger<=350 then edtKHV.AsDouble:= tabPonizej350[edtKlasaDokladnosci.AsInteger,intI]
  else edtKHV.AsDouble:= tabPowyzej350[edtKlasaDokladnosci.AsInteger,intI];
end;

procedure TfrmMain.WspolPrzyporu;
begin
  edtCzolowyWskaznikPrzyporu.AsDouble:= RoundTo(1.88-3.2*(1/edtLiczbaZebowZebnik.AsInteger+ 1/edtLiczbaZebowKolo.AsInteger),-2);
  edtZEpsilon.AsDouble:= RoundTo(Power((4- edtCzolowyWskaznikPrzyporu.AsDouble)/3,1/2),-2);
end;

procedure TfrmMain.JedObliczSilaObwodowa;
begin
  edtJedObliczSilaObwodowa.AsDouble:= RoundTo(edtSilaObwodowaWZazeb.AsDouble*edtKhb.AsDouble*edtKHV.AsDouble*edtKHA.AsDouble*edtKa.AsDouble/edtSzerokoscWienca.AsInteger,-3);
end;

procedure TfrmMain.ObliczNaprezStykowe;
begin
  edtOblNaprezStyk.AsDouble:= RoundTo(edtZH.AsDouble*edtZE.AsDouble*edtZEpsilon.AsDouble*
   Sqrt((edtJedObliczSilaObwodowa.AsDouble*Sqrt(Sqr(StrToFloat(cbxPrzelozenie.Text))+1))
   /(0.85*edtSredSredniaZebnik.AsDouble*StrToFloat(cbxPrzelozenie.Text))),-2);
end;

procedure TfrmMain.WspolZR; //Wspolczynnik od chropowato?ci powierzchni
begin
  if edtKlasaDokladnosci.AsInteger= 8 then
  begin
     edtRa.Text:= '1,6 - 3,2';
     edtZR.AsDouble:= 0.95;
  end
  else if edtKlasaDokladnosci.AsInteger= 9 then
  begin
     edtRa.Text:= '3,2 - 6,3';
     edtZR.AsDouble:= 0.90;
  end
  else
  begin
     edtRa.Text:= '0,8 - 1,6';
     edtZR.AsDouble:= 1.00;
  end
end;

procedure TfrmMain.WspolZv;
var
douCzv: Double;
begin
  if edtPredObwodowa.AsDouble<=4 then edtZV.AsDouble:=1
  else if edtPredObwodowa.AsDouble<22 then //Na wykresie podana by?a warto?? wspo?czynnika tylko do wartosci 22
  begin
    if edtTwardosc2.AsInteger<=350 then edtZV.AsDouble:= RoundTo(AproksymacjaLiniowa('Zv_a.ini',edtPredObwodowa.AsDouble),-3)
    else edtZV.AsDouble:= RoundTo(AproksymacjaLiniowa('Zv_b.ini',edtPredObwodowa.AsDouble),-3);
  end
  else
  begin
    douCzv:= 0.85+ (edtNapreKrytyczneKolo.AsDouble-850)/350*0.08;
    edtZV.AsDouble:= RoundTo(douCzv+ (2*(1-douCzv)/sqrt(0.8+32/edtPredObwodowa.AsDouble)),-3);
  end;
end;

procedure TfrmMain.WspolZx;
begin
  if edtSredPodzialowaKolo.AsDouble<700 then edtZX.AsDouble:=1
  else edtZX.AsDouble:= RoundTo(AproksymacjaLiniowa('Zx.ini',edtSredPodzialowaKolo.AsDouble),-3);

end;

procedure TfrmMain.NaprezStykoweSprawdz;
begin
//Napre?enia dla z?bnika
 edtNaprDopStykSprawdzenie1.AsDouble:= RoundTo(edtNapreKrytyczneZebnik.AsDouble*edtWspolTrwalosciPracyZebnik.AsDouble*
  edtZR.AsDouble*edtZV.AsDouble*edtZX.AsDouble/StrToFloat(cbxShZebnik.Text),-3);
//Naprezenia dla ko?a z?batego
 edtNaprDopStykSprawdzenie2.AsDouble:= RoundTo(edtNapreKrytyczneKolo.AsDouble*edtWspolTrwalosciPracyKolo.AsDouble*
  edtZR.AsDouble*edtZV.AsDouble*edtZX.AsDouble/StrToFloat(cbxShKolo.Text),-3);
end;

procedure TfrmMain.WarunekWytrzStykowej;
begin
  edtWarOblNaprezStyk.AsDouble:= edtOblNaprezStyk.AsDouble;
  //Do warunku przyjmuje sie ni?sze napre?enia dopuszczalne
  if edtNaprDopStykSprawdzenie1.AsDouble<edtNaprDopStykSprawdzenie2.AsDouble
    then edtNaprezStykDop.AsDouble:= edtNaprDopStykSprawdzenie1.AsDouble
  else edtNaprezStykDop.AsDouble:= edtNaprDopStykSprawdzenie2.AsDouble;

  //Sprawdzenie czy warunek zosta? spe?niony
  if edtWarOblNaprezStyk.AsDouble>= edtNaprezStykDop.AsDouble then
  begin
    lblOstrzezenie4_2.Visible:=True;
    //btnDalej4.Enabled:=False;
  end
  else
  begin
    lblOstrzezenie4_2.Visible:=False;
    //btnDalej4.Enabled:=True;
  end;

end;

procedure TfrmMain.ObciazeniePrzekladni;
var
douNiedoobciazenie: Double;
begin
  douNiedoobciazenie:= RoundTo(Abs(edtWarOblNaprezStyk.AsDouble- edtNaprezStykDop.AsDouble)*100/edtNaprezStykDop.AsDouble,-2);
  edtObciazeniePrzekladni.AsDouble:= 100- douNiedoobciazenie;
  {Je?eli warto?c? niedoobci??enia przekroczy 5% uaktywniana jest procedura odpowedzialna za korekte}
  if douNiedoobciazenie>5 then KorektaSzerokosciWienca(true)
  else KorektaSzerokosciWienca(false);
end;

procedure TfrmMain.KorektaSzerokosciWienca(bActive: Boolean);
type
  ELEMENT=(BackgroundColor, TextColor);
const
COLORS: Array [ELEMENT] of  array [boolean] of TColor =
  ((clGradientInactiveCaption,$00DFDFFF),
  (clWindowText, clMaroon));
var
  dNoweKbe: Double;
begin
  //Zmiana wygl?du panelu do korekty
  lblOstrzezenie4_1.Visible:=bActive;
  pnlNowaSzerokoscWienca.Color:= COLORS[BackgroundColor,bActive];
  lblNowaSzerokoscWienca.Font.Color:= COLORS[TextColor,bActive];
  lblNoweB.Font.Color:= COLORS[TextColor,bActive];
  lblMM4_1.Font.Color:= COLORS[TextColor,bActive];
  edtNowaSzerokoscWienca.Font.Color:= COLORS[TextColor,bActive];
  //updNowaSzerokoscWienca.Enabled:= bActive;

  //Obliczenia i wy?wietlanie komunikatu o warto?ci wspo?czynnik kbe
  dNoweKbe:= edtNowaSzerokoscWienca.AsInteger/edtTworzaca.AsDouble;
  if (dNoweKbe<0.2) or (dNoweKbe>0.3) then
  begin
    lblOstrzezenie4_3.Visible:=true;
    lblOstrzezenie4_3.Caption:='Wspo?czynnik kbe poza zakresem: ' + FloatToStr(RoundTo(dNoweKbe,-3));
  end
  else lblOstrzezenie4_3.Visible:= false;
end;

procedure TfrmMain.updNowaSzerokoscWiencaClick(Sender: TObject; Button: TUDBtnType);
begin
 edtNowaSzerokoscWienca.AsInteger:= updNowaSzerokoscWienca.Position; //Naci?ni?cie przycisku zmienia warto?? szeroko??i wienca
 DeaktywacjaPrzyZmianach(Sender);
 ObliczeniaEtap3(edtNowaSzerokoscWienca.AsInteger); //Wywo?anie obliczen dla etapu 3 z pominieciem obliczen srednicy wienca
 btnDalej3Click(Sender); // Wywo?anie obliczen dla etapu 4 przy nowych wartosciach etapu 3
end;

{$ENDREGION}

{$REGION 'Etap 5'}
procedure TfrmMain.WspolKFV;  //Oblicza wspo?czynnik miedzyz?bnego obci??enia dynamicznego przy zginaniu
var
  intI: Integer; //Indeks okreslany na podstawie predkosci
  tabPonizej350: array[6..9,0..4] of Double; //Tablica wspo?czynnik?w dla twardosci poni?ej 350HB
  tabPowyzej350: array[6..9,0..4] of Double; //Tablica wspo?czynnik?w dla twardosci powy?ej 350HB
begin
  //Tablica poni?ej 350HB
  tabPonizej350[6,0]:= 1.06; tabPonizej350[6,1]:= 1.18; tabPonizej350[6,2]:= 1.32; tabPonizej350[6,3]:= 1.50; tabPonizej350[6,4]:= 1.64;
  tabPonizej350[7,0]:= 1.08; tabPonizej350[7,1]:= 1.24; tabPonizej350[7,2]:= 1.40; tabPonizej350[7,3]:= 1.64; tabPonizej350[7,4]:= 1.80;
  tabPonizej350[8,0]:= 1.10; tabPonizej350[8,1]:= 1.30; tabPonizej350[8,2]:= 1.48; tabPonizej350[8,3]:= 1.77; tabPonizej350[8,4]:= 1.96;
  tabPonizej350[9,0]:= 1.11; tabPonizej350[9,1]:= 1.33; tabPonizej350[9,2]:= 1.56; tabPonizej350[9,3]:= 1.90; tabPonizej350[9,4]:= 2.25;

  //Tablica powy?ej 350HB
  tabPowyzej350[6,0]:= 1.02; tabPowyzej350[6,1]:= 1.06; tabPowyzej350[6,2]:= 1.1;  tabPowyzej350[6,3]:= 1.16; tabPowyzej350[6,4]:= 1.2;
  tabPowyzej350[7,0]:= 1.02; tabPowyzej350[7,1]:= 1.06; tabPowyzej350[7,2]:= 1.12; tabPowyzej350[7,3]:= 1.19; tabPowyzej350[7,4]:= 1.25;
  tabPowyzej350[8,0]:= 1.03; tabPowyzej350[8,1]:= 1.09; tabPowyzej350[8,2]:= 1.15; tabPowyzej350[8,3]:= 1.24; tabPowyzej350[8,4]:= 1.3;
  tabPowyzej350[9,0]:= 1.03; tabPowyzej350[9,1]:= 1.09; tabPowyzej350[9,2]:= 1.17; tabPowyzej350[9,3]:= 1.28; tabPowyzej350[9,4]:= 1.35;

  //Okre?lenie drugiego argumentu do tablicy na podstawie pr?dko?ci obwodowej
  if edtPredObwodowa.AsDouble<=1 then intI:= 0
  else if edtPredObwodowa.AsDouble<=3 then intI:= 1
  else if edtPredObwodowa.AsDouble<=5 then intI:= 2
  else if edtPredObwodowa.AsDouble<=8 then intI:= 3
  else intI:= 4;

  if edtTwardosc2.AsInteger<=350 then edtKFV.AsDouble:= tabPonizej350[edtKlasaDokladnosci.AsInteger,intI]
  else edtKFV.AsDouble:= tabPowyzej350[edtKlasaDokladnosci.AsInteger,intI];
end;

procedure TfrmMain.WspolKFB; //Oblicza wsp??czynnik nier?wnomierno?ci rozk?adu obci??enia wzgl?dem lini styku
begin
  edtKFB.AsDouble:= RoundTo(1+1.5*(edtKhb.AsDouble-1),-3);
end;

procedure TfrmMain.JedObwdSilaPrzyZgin; //Oblicza jednostkow? si?e obliczeniowa przy zginaniu
begin
  edtJedObwdSilaPrzyZgin.AsDouble:= RoundTo(edtSilaObwodowaWZazeb.AsDouble*edtKFB.AsDouble*edtKFV.AsDouble*edtKFA.AsDouble*edtKa.AsDouble/edtSzerokoscWienca.AsDouble,-2);
end;

procedure TfrmMain.EqLiczbaZebow; //Ekwiwalenta liczna z?b?w
begin
  //Dla z?bnika
  edtZeq1.AsDouble:= RoundTo(edtLiczbaZebowZebnik.AsDouble/Cos(DegToRad(edtKatyZebnik.AsDouble)),-2);
  //Dla ko?a z?batego
  edtZeq2.AsDouble:= RoundTo(edtLiczbaZebowKolo.AsDouble/Cos(DegToRad(edtKatyKolo.AsDouble)),-2);
end;

procedure TfrmMain.WspolYFS;  //Oblicza wspo?czynnik kszta?tu z?b?w zebnika i ko?a z?batego
begin
  if edtZeq1.AsDouble<17 then edtYFS1.AsDouble:=4.3
  else edtYFS1.AsDouble:= RoundTo(AproksymacjaLiniowa('YFS.ini',edtZeq1.AsDouble),-2);

  if edtZeq2.AsDouble<17 then edtYFS2.AsDouble:=4.3
  else edtYFS2.AsDouble:= RoundTo(AproksymacjaLiniowa('YFS.ini',edtZeq2.AsDouble),-2);
end;

procedure TfrmMain.ObliczNaprezGnace; //Oblicza Obliczeniowa napr??enia gn?ce
begin
  edtOblNaprezGnace1.AsDouble:= RoundTo(edtYFS1.AsDouble*edtJedObwdSilaPrzyZgin.AsDouble/(0.85*edtModulSredni.AsDouble),-2);
  edtOblNaprezGnace2.AsDouble:= RoundTo(edtYFS2.AsDouble*edtJedObwdSilaPrzyZgin.AsDouble/(0.85*edtModulSredni.AsDouble),-2);
end;

procedure TfrmMain.NaprezKrytycznePrzyZginaniu;  //Okre?la napre?enia krytyczne przy zginaniu na podstawie ob?bki cieplnej materia?u
var
  intObrobkaIndeks1, intObrobkaIndeks2: Integer;
  iniDane: TIniFile;
begin
  //Wczytanie indeksu obrobki cieplnej
  iniDane:= TIniFile.Create(ExtractFilePath(Application.ExeName)+ 'Materialy.ini');
  intObrobkaIndeks1:= iniDane.ReadInteger(IntToStr(cbxMaterial1.ItemIndex),'ObrobkaIndeks',-1);
  intObrobkaIndeks2:= iniDane.ReadInteger(IntToStr(cbxMaterial2.ItemIndex),'ObrobkaIndeks',-1);
  iniDane.Free;

  //Obliczenia dla z?bnika
  case intObrobkaIndeks1 of
    -1 :  raise Exception.Create('Nie uda?o sie wczytac indeksu materia?u');
     1 :  edtNaprezKrytyczneZginanie1.AsDouble:= 1.75*edtTwardosc1.AsInteger;
     2 :  edtNaprezKrytyczneZginanie1.AsDouble:= 550;
     3 :  edtNaprezKrytyczneZginanie1.AsDouble:= 800;
     4 :  edtNaprezKrytyczneZginanie1.AsDouble:= 900;
     5 :  edtNaprezKrytyczneZginanie1.AsDouble:= RoundTo(112*HBnaHRC(edtTwardosc1.AsInteger)+290,-2);
     else raise Exception.Create('?le zdefiniowana obr?bka cieplna materia?u');
  end;

  //Obliczenia dla ko?a z?batego
   case intObrobkaIndeks2 of
    -1 :  raise Exception.Create('Nie uda?o sie wczytac indeksu materia?u');
     1 :  edtNaprezKrytyczneZginanie2.AsDouble:= 1.75*edtTwardosc2.AsInteger;
     2 :  edtNaprezKrytyczneZginanie2.AsDouble:= 550;
     3 :  edtNaprezKrytyczneZginanie2.AsDouble:= 800;
     4 :  edtNaprezKrytyczneZginanie2.AsDouble:= 900;
     5 :  edtNaprezKrytyczneZginanie2.AsDouble:= RoundTo(112*HBnaHRC(edtTwardosc2.AsInteger)+290,-2);
     else raise Exception.Create('?le zdefiniowana obr?bka cieplna materia?u');
  end;
end;

procedure TfrmMain.WspolTrwalosci;
var
  O1,O2,O3,t1,t2,t3: Double;
  mf: Integer;
begin
  //Obliczenie wspo?czynnika KFE uwglednaj?cego zmiane obci??enia nap?du w czasie
  O1:=sedObciazenie1.Value/100;
  O2:=sedObciazenie2.Value/100;
  O3:=sedObciazenie3.Value/100;
  t1:=sedCzas1.Value/100;
  t2:=sedCzas2.Value/100;
  t3:=sedCzas3.Value/100;
  if edtTwardosc1.AsInteger<=350 then mf:=6
  else mf:=9;
  edtKFE.AsDouble:=RoundTo((Power(O1,mf)*t1)+(Power(O2,mf)*t2)+(Power(O3,mf)*t3),-4);

  //Rownowa?na liczba cykli
  edtNFE1.AsDouble:=Round(60*edtPredObr1.AsDouble*edtCzasPracy.AsInteger*edtKFE.AsDouble);
  edtNFE2.AsDouble:=Round(60*edtPredObr2.AsDouble*edtCzasPracy.AsInteger*edtKFE.AsDouble);

  //Wspo?czynnik trwa?o?ci
  if edtNFLim1.AsDouble<=edtNFE1.AsDouble then edtYN1.AsDouble:=1.0
  else edtYN1.AsDouble:=RoundTo(Power(edtNFLim1.AsDouble/edtNFE1.AsDouble,1/mf),-3);

  if edtNFLim2.AsDouble<=edtNFE2.AsDouble then edtYN2.AsDouble:=1.0
  else edtYN2.AsDouble:=RoundTo(Power(edtNFLim2.AsDouble/edtNFE2.AsDouble,1/mf),-3);
end;

procedure TfrmMain.WspolYA;
begin
  if chbZmianaKierunku.Checked then edtYA.AsDouble:= 0.8
  else edtYA.AsDouble:= 1;
end;

procedure TfrmMain.WspolYR;
var
  intObrobkaIndeks1: Integer;
  iniDane: TIniFile;
begin
  if chbSzlifowane.Checked then
  begin
    //Wczytanie indeksu obrobki cieplnej
    iniDane:= TIniFile.Create(ExtractFilePath(Application.ExeName)+ 'Materialy.ini');
    intObrobkaIndeks1:= iniDane.ReadInteger(IntToStr(cbxMaterial1.ItemIndex),'ObrobkaIndeks',-1);
    iniDane.Free;

    case intObrobkaIndeks1 of
    -1   :  raise Exception.Create('Nie uda?o sie wczytac indeksu materia?u');
     1   :  edtYR.AsDouble:=1.1;
     2,3 :  edtYR.AsDouble:=1;
     4,5 :  edtYR.AsDouble:=0.8;
     else raise Exception.Create('?le zdefiniowana obr?bka cieplna materia?u');
    end;
  end
  else edtYR.AsDouble:=1;
end;

procedure TfrmMain.chbSzlifowaneClick(Sender: TObject);  //Wywo?anie obliczen dla etapu 5 po zmianie stannu checkboxa
begin
   DeaktywacjaPrzyZmianach(Sender);
   btnDalej4Click(Sender);
end;

procedure TfrmMain.WspolYX; //Oblicza wsp??czynnik uwzgl?daj?cy wymiery k??
begin
  edtYX1.AsDouble:= RoundTo(1.05-0.000125*edtSredPodzialowaZebnik.AsDouble,-3);
  edtYX2.AsDouble:= RoundTo(1.05-0.000125*edtSredPodzialowaKolo.AsDouble,-3);
end;

procedure TfrmMain.cbxSFChange(Sender: TObject);
begin
  btnDalej4Click(Sender);
  DeaktywacjaPrzyZmianach(Sender);
end;

procedure TfrmMain.NaprezGnaceSprawdz;
begin
  edtNaprDopGnace1.AsDouble:= RoundTo(edtNaprezKrytyczneZginanie1.AsDouble*
    edtYN1.AsDouble*edtYA.AsDouble*edtYR.AsDouble*edtYX1.AsDouble/StrToFloat(cbxSF.Text),-2);
  edtNaprDopGnace2.AsDouble:= RoundTo(edtNaprezKrytyczneZginanie2.AsDouble*
    edtYN2.AsDouble*edtYA.AsDouble*edtYR.AsDouble*edtYX2.AsDouble/StrToFloat(cbxSF.Text),-2);
end;

procedure TfrmMain.WarunekWytrzGnacej;
begin
  //Obliczenia warunku wytrzyma?osciowego s? wykonywane dla ko?a o mniejszym stosunku obliczonym w poni?szym warunku
  if (edtNaprDopGnace1.AsDouble/edtYFS1.AsDouble)<(edtNaprDopGnace2.AsDouble/edtYFS2.AsDouble) then
  begin
    edtNaprezGnace.AsDouble:=edtOblNaprezGnace1.AsDouble;
    edtDopNaprezGnace.AsDouble:=edtNaprDopGnace1.AsDouble;
  end
  else
  begin
    edtNaprezGnace.AsDouble:=edtOblNaprezGnace2.AsDouble;
    edtDopNaprezGnace.AsDouble:=edtNaprDopGnace2.AsDouble;
  end;

  //Sprawdzenie warunku i ewentualne wyswietlenie ostrze?enia
  if edtNaprezGnace.AsDouble>edtDopNaprezGnace.AsDouble then lblOstrzezenie5_1.Visible:=true
  else lblOstrzezenie5_1.Visible:=false;
end;

{$ENDREGION}

{$REGION 'Etap 6'}
procedure TfrmMain.NaprezStykPrzyPrzeciaz;
begin
  edtNaprezStykPrzyPrzeciaz.AsDouble:= RoundTo(edtOblNaprezStyk.AsDouble*Sqrt(edtTmaxTnom.AsDouble),-2);

  if edtMaxNaprStykZebnik.AsDouble<edtMaxNaprStykKolo.AsDouble then edtNaprezStykMax.AsDouble:= edtMaxNaprStykZebnik.AsDouble
  else edtNaprezStykMax.AsDouble:= edtMaxNaprStykKolo.AsDouble;

  if edtNaprezStykPrzyPrzeciaz.AsDouble>edtNaprezStykMax.AsDouble then lblOstrzezenie6_1.Visible:=True
  else lblOstrzezenie6_1.Visible:=False;
end;

procedure TfrmMain.NaprezGnacePrzyPrzeciaz;
begin
  edtNaprezGnacPrzyPrzeciaz1.AsDouble:= RoundTo(edtOblNaprezGnace1.AsDouble*edtTmaxTnom.AsDouble,-2);
  edtNaprezGnacPrzyPrzeciaz2.AsDouble:= RoundTo(edtOblNaprezGnace2.AsDouble*edtTmaxTnom.AsDouble,-2);

  edtNaprezGnacMax1.AsDouble:= edtMaxNaprGnacZebnik.AsDouble;
  edtNaprezGnacMax2.AsDouble:= edtMaxNaprGnacKolo.AsDouble;

  if (edtNaprezGnacPrzyPrzeciaz1.AsDouble>edtNaprezGnacMax1.AsDouble) or
     (edtNaprezGnacPrzyPrzeciaz2.AsDouble>edtNaprezGnacMax2.AsDouble) then
     lblOstrzezenie6_2.Visible:=True
  else lblOstrzezenie6_2.Visible:=False;
end;

procedure TfrmMain.MomentRzecz;
begin
  edtMomentRzecz.AsDouble:= RoundTo(edtMoment2.AsDouble*edtPrzelozenieRzecz.AsDouble/StrToFloat(cbxPrzelozenie.Text),-2);
end;

procedure TfrmMain.SilyObwodowe;
begin
  edtSilaObwodowa1.AsDouble:= RoundTo(2*1000*edtMoment1.AsDouble/edtSredSredniaZebnik.AsDouble,-2);
  edtSilaObwodowa2.AsDouble:= RoundTo(2*1000*edtMomentRzecz.AsDouble/edtSredSredniaKolo.AsDouble,-2);
end;

procedure TfrmMain.SilyPromieniowe;
begin
  edtSilaPromeniowa1.AsDouble:= RoundTo(edtSilaObwodowa1.AsDouble*0.364*cos(DegToRad(edtKatyZebnik.AsDouble)),-2);
  edtSilaPromeniowa2.AsDouble:= RoundTo(edtSilaObwodowa2.AsDouble*0.364*sin(DegToRad(edtKatyZebnik.AsDouble)),-2);
end;

procedure TfrmMain.SilyPoosiowe;
begin
  edtSilaPoosiowa1.AsDouble:= RoundTo(edtSilaObwodowa1.AsDouble*0.364*sin(DegToRad(edtKatyZebnik.AsDouble)),-2);
  edtSilaPoosiowa2.AsDouble:= RoundTo(edtSilaObwodowa2.AsDouble*0.364*cos(DegToRad(edtKatyZebnik.AsDouble)),-2);
end;

procedure TfrmMain.btnRaportClick(Sender: TObject); //Procedura odpowedzialna za generowanie raportu w PDF
//Zeby wszytko dzia?a?o nale?y za??czy? biblioteke z katalogu SynPDF
var
  fname: String;
  lPdf   : TPdfDocumentGDI;
  lPage  : TPdfPage;
begin
  //Obs?uga TOpenDialog
  SaveDialog1.InitialDir:= ExtractFilePath(Application.ExeName);
  if not SaveDialog1.Execute then Exit;
  fname:=SaveDialog1.FileName;

  //Generowanie do pdfa
  lPdf := TPdfDocumentGDI.Create;
  try
    //Nag?owek pdf
    lPdf.Info.Author        := 'BevelCalc';
    lPdf.Info.CreationDate  := Now;
    lPdf.Info.Creator       := 'BevelCalc';
    lPdf.DefaultPaperSize   := psA4;
    lPdf.Info.Title         := 'Raport z obliczen';

    //Dodawanie tre?ci
    //Tytu?
    lPage:= lPdf.AddPage;
    lPdf.VCLCanvas.Font.Name:= 'Tahoma';
    lPdf.VCLCanvas.Font.Size:= 22;
    lPdf.VCLCanvas.Font.Style:= [fsBold];
    lPdf.VCLCanvas.TextOut(50,30,'Raport z oblicze? przek?adni sto?kowej');

    //Podtytu? z dat?
    lPdf.VCLCanvas.Font.Name:= 'Times';
    lPdf.VCLCanvas.Font.Size:= 12;
    lPdf.VCLCanvas.Font.Style:= [] ;
    lPdf.VCLCanvas.TextOut(60,70,'Wygenerowano: '+DateTimeToStr(now));

    //Parametry wej?cia i wyj?cia
    lPdf.VCLCanvas.TextOut(50,100,'Pr?dko?? obrotowa z?bnika n1 =');
      lPdf.VCLCanvas.TextOut(540,100,edtPredObr1.Text);
      lPdf.VCLCanvas.TextOut(600,100,'[obr/min]');
    lPdf.VCLCanvas.TextOut(50,120,'Pr?dko?? obrotowa ko?a z?batego n2 =');
      lPdf.VCLCanvas.TextOut(540,120,edtPredObr2.Text);
      lPdf.VCLCanvas.TextOut(600,120,'[obr/min]');
    lPdf.VCLCanvas.TextOut(50,140,'Moment skr?caj?cy na wej?ciu T1 =');
      lPdf.VCLCanvas.TextOut(540,140,edtMoment1.Text);
      lPdf.VCLCanvas.TextOut(600,140,'[Nm]');
    lPdf.VCLCanvas.TextOut(50,160,'Moment skr?caj?cy na wyj?ciu T2 =');
      lPdf.VCLCanvas.TextOut(540,160,edtMoment2.Text);
      lPdf.VCLCanvas.TextOut(600,160,'[Nm]');
    lPdf.VCLCanvas.TextOut(50,180,'Prze?o?enie i =');
      lPdf.VCLCanvas.TextOut(540,180,cbxPrzelozenie.Text);
      lPdf.VCLCanvas.TextOut(600,180,'');
    lPdf.VCLCanvas.TextOut(50,220,'Liczba godzin pracy przek?adni Lh =');
      lPdf.VCLCanvas.TextOut(540,220,edtCzasPracy.Text);
      lPdf.VCLCanvas.TextOut(600,220,'[h]');
    lPdf.VCLCanvas.TextOut(50,240,'Wspo?czynnik jednorazowego przeci??enia Tmax/Tnom =');
      lPdf.VCLCanvas.TextOut(540,240,edtTmaxTnom.Text);

    //Materia?y
    lPdf.VCLCanvas.TextOut(50,280,'Materia? z?bnika:');
      lPdf.VCLCanvas.TextOut(540,280,cbxMaterial1.Text);
    lPdf.VCLCanvas.TextOut(50,300,'Obr?bka cieplna:');
      lPdf.VCLCanvas.TextOut(540,300,edtObrobkaCieplna1.Text);
    lPdf.VCLCanvas.TextOut(50,320,'Twardo?? =');
      lPdf.VCLCanvas.TextOut(540,320,edtTwardosc1.Text);
      lPdf.VCLCanvas.TextOut(600,320,'[HB]');
    lPdf.VCLCanvas.TextOut(50,340,'Wytrzyma?o?? na rozci?ganie Rm =');
      lPdf.VCLCanvas.TextOut(540,340,edtRm1.Text);
      lPdf.VCLCanvas.TextOut(600,340,'[MPa]');
    lPdf.VCLCanvas.TextOut(50,360,'Granica plastyczno?ci Re =');
      lPdf.VCLCanvas.TextOut(540,360,edtRe1.Text);
      lPdf.VCLCanvas.TextOut(600,360,'[MPa]');

    lPdf.VCLCanvas.TextOut(50,400,'Materia? ko?a z?batego:');
      lPdf.VCLCanvas.TextOut(540,400,cbxMaterial2.Text);
    lPdf.VCLCanvas.TextOut(50,420,'Obr?bka cieplna:');
      lPdf.VCLCanvas.TextOut(540,420,edtObrobkaCieplna2.Text);
    lPdf.VCLCanvas.TextOut(50,440,'Twardo?? =');
      lPdf.VCLCanvas.TextOut(540,440,edtTwardosc2.Text);
      lPdf.VCLCanvas.TextOut(600,440,'[HB]');
    lPdf.VCLCanvas.TextOut(50,460,'Wytrzyma?o?? na rozci?ganie Rm =');
      lPdf.VCLCanvas.TextOut(540,460,edtRm2.Text);
      lPdf.VCLCanvas.TextOut(600,460,'[MPa]');
    lPdf.VCLCanvas.TextOut(50,480,'Granica plastyczno?ci Re =');
      lPdf.VCLCanvas.TextOut(540,480,edtRe2.Text);
      lPdf.VCLCanvas.TextOut(600,480,'[MPa]');

    //Parametry geometryczne
    lPdf.VCLCanvas.TextOut(50,520,'Modu? obwodowy zewn?trzny mte =');
      lPdf.VCLCanvas.TextOut(540,520,edtModulZewnetrzny.Text);
      lPdf.VCLCanvas.TextOut(600,520,'[mm]');
    lPdf.VCLCanvas.TextOut(50,540,'Modu? w ?rednim przekroju mm =');
      lPdf.VCLCanvas.TextOut(540,540,edtModulSredni.Text);
      lPdf.VCLCanvas.TextOut(600,540,'[mm]');
    lPdf.VCLCanvas.TextOut(50,560,'Liczba z?b?w z?bnika z1 =');
      lPdf.VCLCanvas.TextOut(540,560,edtLiczbaZebowZebnik.Text);
    lPdf.VCLCanvas.TextOut(50,580,'Liczba z?b?w ko?a z?batego z2 =');
      lPdf.VCLCanvas.TextOut(540,580,edtLiczbaZebowKolo.Text);
    lPdf.VCLCanvas.TextOut(50,600,'D?ugo?? zewn?trzniej tworz?cej Re =');
      lPdf.VCLCanvas.TextOut(540,600,edtTworzaca.Text);
      lPdf.VCLCanvas.TextOut(600,600,'[mm]');
    lPdf.VCLCanvas.TextOut(50,620,'D?ugo?? ?rednia tworz?cej Rm =');
      lPdf.VCLCanvas.TextOut(540,620,edtSredTworzaca.Text);
      lPdf.VCLCanvas.TextOut(600,620,'[mm]');

    lPdf.VCLCanvas.TextOut(50,660,'?rednica podzia?owa z?bnika de1 =');
      lPdf.VCLCanvas.TextOut(540,660,edtSredPodzialowaZebnik.Text);
      lPdf.VCLCanvas.TextOut(600,660,'[mm]');
    lPdf.VCLCanvas.TextOut(50,680,'?rednica podzia?owa ko?a z?batego de2 =');
      lPdf.VCLCanvas.TextOut(540,680,edtSredPodzialowaKolo.Text);
      lPdf.VCLCanvas.TextOut(600,680,'[mm]');
    lPdf.VCLCanvas.TextOut(50,700,'?rednica wierzcho?k?w z?b?w z?bnika dae1 =');
      lPdf.VCLCanvas.TextOut(540,700,edtSredWierzZebnik.Text);
      lPdf.VCLCanvas.TextOut(600,700,'[mm]');
    lPdf.VCLCanvas.TextOut(50,720,'?rednica wierzcho?k?w z?b?w ko?a z?batego dae2 =');
      lPdf.VCLCanvas.TextOut(540,720,edtSredWierzKolo.Text);
      lPdf.VCLCanvas.TextOut(600,720,'[mm]');
    lPdf.VCLCanvas.TextOut(50,740,'?rednica st?p z?b?w z?bnika dfe1 =');
      lPdf.VCLCanvas.TextOut(540,740,edtSredStopZebnik.Text);
      lPdf.VCLCanvas.TextOut(600,740,'[mm]');
    lPdf.VCLCanvas.TextOut(50,760,'?rednica st?p z?b?w ko?a z?batego dfe2 =');
      lPdf.VCLCanvas.TextOut(540,760,edtSredStopKolo.Text);
      lPdf.VCLCanvas.TextOut(600,760,'[mm]');
    lPdf.VCLCanvas.TextOut(50,780,'?rednica ?rednia z?bnika dm1 =');
      lPdf.VCLCanvas.TextOut(540,780,edtSredSredniaZebnik.Text);
      lPdf.VCLCanvas.TextOut(600,780,'[mm]');
    lPdf.VCLCanvas.TextOut(50,800,'?rednica ?rednia ko?a z?batego dm2 =');
      lPdf.VCLCanvas.TextOut(540,800,edtSredSredniaKolo.Text);
      lPdf.VCLCanvas.TextOut(600,800,'[mm]');

    lPdf.VCLCanvas.TextOut(50,840,'Prze?o?enie rzeczywiste irz =');
      lPdf.VCLCanvas.TextOut(540,840,edtPrzelozenieRzecz.Text);
    lPdf.VCLCanvas.TextOut(50,860,'Szeroko?? wie?ca k?? z?batych b =');
      lPdf.VCLCanvas.TextOut(540,860,edtNowaSzerokoscWienca.Text);
      lPdf.VCLCanvas.TextOut(600,860,'[mm]');
    lPdf.VCLCanvas.TextOut(50,880,'K?t tworz?cej z?bnika '+ #$03B4 +'1 =');
      lPdf.VCLCanvas.TextOut(540,880,edtKatyZebnik.Text);
      lPdf.VCLCanvas.TextOut(600,880,'[?]');
    lPdf.VCLCanvas.TextOut(50,900,'K?t tworz?cej ko?a z?batego '+ #$03B4 +'2 =');
      lPdf.VCLCanvas.TextOut(540,900,edtKatyKolo.Text);
      lPdf.VCLCanvas.TextOut(600,900,'[?]');

    //Naprezenia
    lPdf.VCLCanvas.TextOut(50,940,'Obliczeniowe napr??enia stykowe '+ #$03C3 + 'H =');
      lPdf.VCLCanvas.TextOut(540,940,edtWarOblNaprezStyk.Text);
      lPdf.VCLCanvas.TextOut(600,940,'[MPa]');
    lPdf.VCLCanvas.TextOut(50,960,'Dopuszczalne napr??enia stykowe '+ #$03C3 + 'HP =');
      lPdf.VCLCanvas.TextOut(540,960,edtNaprezStykDop.Text);
      lPdf.VCLCanvas.TextOut(600,960,'[MPa]');

    lPdf.VCLCanvas.TextOut(50,1000,'Obliczeniowe napr??enia gn?ce '+ #$03C3 + 'F =');
      lPdf.VCLCanvas.TextOut(540,1000,edtNaprezGnace.Text);
      lPdf.VCLCanvas.TextOut(600,1000,'[MPa]');
    lPdf.VCLCanvas.TextOut(50,1020,'Dopuszczalne napr??enia gn?ce '+ #$03C3 + 'FP =');
      lPdf.VCLCanvas.TextOut(540,1020,edtDopNaprezGnace.Text);
      lPdf.VCLCanvas.TextOut(600,1020,'[MPa]');

    //Dodanie nowej strony
    lPage:= lPdf.AddPage;
    lPdf.VCLCanvas.Font.Name:= 'Times';
    lPdf.VCLCanvas.Font.Size:= 12;
    lPdf.VCLCanvas.Font.Style:= [] ;

    //Napre?enie przy przeci??eniach
    lPdf.VCLCanvas.TextOut(50,40,'Obliczeniowe napr??enia stykowe przy przeci??eniach '+ #$03C3 + 'H max =');
      lPdf.VCLCanvas.TextOut(540,40,edtNaprezStykPrzyPrzeciaz.Text);
      lPdf.VCLCanvas.TextOut(600,40,'[MPa]');
    lPdf.VCLCanvas.TextOut(50,60,'Dopuszczalne napr??enia stykowe przy przeci??eniach '+ #$03C3 + 'HP max =');
      lPdf.VCLCanvas.TextOut(540,60,edtNaprezStykMax.Text);
      lPdf.VCLCanvas.TextOut(600,60,'[MPa]');

    lPdf.VCLCanvas.TextOut(50,100,'Obliczeniowe napr??enia gn?ce przy przeci??eniach '+ #$03C3 + 'F max =');
      lPdf.VCLCanvas.TextOut(540,100,edtNaprezGnacPrzyPrzeciaz1.Text);
      lPdf.VCLCanvas.TextOut(600,100,'[MPa]');
    lPdf.VCLCanvas.TextOut(50,120,'Dopuszczalne napr??enia gn?ce przy przeci??eniach '+ #$03C3 + 'FP max =');
      lPdf.VCLCanvas.TextOut(540,120,edtNaprezGnacMax1.Text);
      lPdf.VCLCanvas.TextOut(600,120,'[MPa]');

    //Si?y
    lPdf.VCLCanvas.TextOut(50,160,'Moment rzeczywisty na wale wyj?ciowym =');
      lPdf.VCLCanvas.TextOut(540,160,edtMomentRzecz.Text);
      lPdf.VCLCanvas.TextOut(600,160,'[Nm]');
    lPdf.VCLCanvas.TextOut(50,180,'Si?a obwodowa z?bnika Ft1 =');
      lPdf.VCLCanvas.TextOut(540,180,edtSilaObwodowa1.Text);
      lPdf.VCLCanvas.TextOut(600,180,'[N]');
    lPdf.VCLCanvas.TextOut(50,200,'Si?a obwodowa ko?a z?batego Ft2 =');
      lPdf.VCLCanvas.TextOut(540,200,edtSilaObwodowa2.Text);
      lPdf.VCLCanvas.TextOut(600,200,'[N]');
    lPdf.VCLCanvas.TextOut(50,220,'Si?a promieniowa z?bnika Fr1 =');
      lPdf.VCLCanvas.TextOut(540,220,edtSilaPromeniowa1.Text);
      lPdf.VCLCanvas.TextOut(600,220,'[N]');
    lPdf.VCLCanvas.TextOut(50,240,'Si?a promieniowa ko?a z?batego Fr2 =');
      lPdf.VCLCanvas.TextOut(540,240,edtSilaPromeniowa2.Text);
      lPdf.VCLCanvas.TextOut(600,240,'[N]');
     lPdf.VCLCanvas.TextOut(50,260,'Si?a poosiowa z?bnika Fa1 =');
      lPdf.VCLCanvas.TextOut(540,260,edtSilaPoosiowa1.Text);
      lPdf.VCLCanvas.TextOut(600,260,'[N]');
    lPdf.VCLCanvas.TextOut(50,280,'Si?a poosiowa ko?a z?batego Fa2 =');
      lPdf.VCLCanvas.TextOut(540,280,edtSilaPoosiowa2.Text);
      lPdf.VCLCanvas.TextOut(600,280,'[N]');

    //Zapis, zwolnienie pamieci i otwarcie pliku w przegladarce
    lPdf.SaveToFile(fname);
  finally
    lPdf.Free;
    ShellExecute(Handle,'open',pchar(fname),'','',SW_Normal);
  end;
end;
{$ENDREGION}

{$REGION 'TEdit'}

function TEdit.GetAsDouble: Double;
// konwertuje tekst na liczb? zmiennoprzecinkow?. Je?li konwersja si? nie powiedzie to generowany b?dzie wyj?tek
begin
  Result := StrToFloat(Text);
end;

function TEdit.GetAsInteger: Integer;
// konwertuje tekst na liczb? ca?kowit?. Je?li konwersja si? nie powiedzie to generowany b?dzie wyj?tek
begin
  Result := StrToInt(Text);
end;

function TEdit.IsValid: Boolean;
// zwraca True je?li tekst reprezentuje poprawn? liczb? ca?kowit? (Tag = 1) lub zmiennoprzedinkow? (Tag = 2)
var
  ivalue: Integer;
  dvalue: Double;
begin
  case Tag of
    1: Result := TryStrToInt(Text, ivalue);
    2: Result := TryStrToFloat(Text, dvalue);
  else
    raise Exception.Create('Pole edycyjne nie obs?uguje warto?ci liczbowych. Aby tak by?o pole Tag powinno mie? warto??: 1, dla liczb ca?kowitych, lub 2, dla liczb zmiennoprzecinkowych');
  end;
end;

procedure TEdit.SetAsDouble(AValue: Double);
// konwertuje liczb? zmiennoprzecinkow? na tekst i zapisuje t? warto?? do pola Text
begin
  Text := FloatToStr(AValue);
end;

procedure TEdit.SetAsInteger(AValue: Integer);
// konwertuje liczb? ca?kowit? na tekst i zapisuje t? warto?? do pola Text
begin
  Text := IntToStr(AValue);
end;

{$ENDREGION}

end.
