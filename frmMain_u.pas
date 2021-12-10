unit frmMain_u;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, frmPomoc_u,
  Vcl.Samples.Spin, System.Math, IniFiles;
type
  // od teraz TEdit bêd¹ wspiera³y wprowadzanie danych liczbowych. Typ danych liczbowych okreœlany jest za pomoc¹ pola Tag.
  // Tag = 1 pozwala na wprowadzanie liczb ca³kowitych, a Tag = 2 liczb zmiennoprzecinkowych.
  TEdit =  class(Vcl.StdCtrls.TEdit)
  private
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
    lblOstrze¿enie2_1: TLabel;
    Button1: TButton;
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

{$R *.dfm}
procedure TfrmMain.FormCreate(Sender: TObject); //Domyslna procedura forma, uruchamiana na pocz¹tku programu
var
  iniMaterialy: TIniFile;
  intIloscMaterialow, intIndeks: Integer;
begin
   Application.OnHint:=ShowHint;
   //Wczytywanie materia³ow z pliku Materaly.ini w katalogu z plikiem .exe
   iniMaterialy:= TIniFile.Create(ExtractFilePath(Application.ExeName)+ 'Materialy.ini');
   intIloscMaterialow:=iniMaterialy.ReadInteger('Ustawienia','IloscMaterialow',000);
   for intIndeks := 0 to intIloscMaterialow-1 do
    begin
    cbxMaterial1.Items.Add(iniMaterialy.ReadString(IntToStr(intIndeks),'Nazwa',''));
    cbxMaterial2.Items.Add(iniMaterialy.ReadString(IntToStr(intIndeks),'Nazwa',''));
    end;
   iniMaterialy.Free;

   cbxPrzelozenie.Hint:='Prze³o¿enie|Wartoœci prze³o¿eñ s¹ uszeregowane, wiêcej w pomocy'; //Dodanie #13 tworzy now¹ linie w hincie a | przenosi do pasku stanu
   pgcMain.TabIndex:=0;
   tshEtap2.TabVisible:= false;
end;

procedure TfrmMain.btnDalej1Click(Sender: TObject); //Przejœcie do Etapu2, obliczenia dla Etap2
begin
  if (cbxMaterial1.ItemIndex or cbxMaterial2.ItemIndex)=-1 then
    raise Exception.Create('Aby dalej prowadziæ obliczenia nale¿y wybraæ materia³');

  tshEtap2.TabVisible:= true;
  pgcMain.TabIndex:=1;  //Odblokowuje i prze³¹cz na 2 zak³adke

  {Podstawa próby zmêczeniowej}
  PodstawaProbyZmecz();

  {Równowa¿na liczba cykli}
  WspolczynnikZmianyObciarzenia;
  RownowaznaLiczbaCykli;

  {Wspo³czynnik trwa³oœæi pracy}
  WspolczynnikTrwalosciPracy;

  {Naprê¿enia krytyczne przy bazowej liczbie cykli}
  NaprezeniaKrytyczne;

  {Dopuszczalne naprê¿enia stykowe}
  DopNaprezStyk;

  {Obliczeniowe dopuszczalne naprê¿enia stykowe}
  OblDopNaprezStyk;

  {Graniczne naprê¿enia dopuszczalne przy przeci¹¿eniach}
  NaprPrzyPrzeciaz;

end;

{$Region 'Ogolna'}
procedure TfrmMain.btnHelpClick(Sender: TObject);
{Odpowada za otwarcie helpa na odpowiedniej zak³adce,
tag przycisku musi byc taki sam jak index zak³adki w frmPomoc}
begin
   frmPomoc.Show;
   frmPomoc.pgcPomoc.TabIndex:=Tcontrol(Sender).Tag;
end;

procedure TfrmMain.ShowHint(ASender: TObject); //Procedura przenosz¹ca hinty na pasek stanu
begin
  stbPasekStanu.Panels[0].Text:=Application.Hint;
end;

function TfrmMain.AproksymacjaLiniowa(strNazwaDokumentu: String; douWejscie: Double): Double;
{Funkcja wyliczaj¹ca wartosc z "wykresu" na podstawie pliku .ini z punktami i argumetu
Plik z danymi musi znajdowaæ sie w katalogu z plikiem .exe
a jego nazwa podana w formacie ###.ini.}
var
  iniDane: TIniFile;
  intDlugosc, I: Integer;
  tabDane: array of array of Double; //Deklaracja 2wymiarowej dynamicznej tablicy
begin
  iniDane:=TIniFile.Create(ExtractFilePath(Application.ExeName)+ strNazwaDokumentu);
  //Otwiera plik o nazwie z podanej w wywo³aniu, który znajduje sie w tym samym katalogu co plik.exe
  intDlugosc:=0;
  while iniDane.SectionExists(IntToStr(intDlugosc)) do intDlugosc:=intDlugosc+1;
  //Sprawdzamy ile punktów jest zawartych w pliku, aby zadeklarowac tablice odpowiedniej d³ugosci
  SetLength(tabDane,2,intDlugosc);
  for I := 0 to intDlugosc-1 do //Wczytujemy dane z pliku do tablicy
  begin
    tabDane[0,I] := iniDane.ReadFloat(IntToStr(I),'x',0);
    tabDane[1,I] := iniDane.ReadFloat(IntToStr(I),'y',0);
  end;
  I:=0;
  while douWejscie>tabDane[0,I+1] do i:=i+1; //Sukamy przedzia³u zawieraj¹cego nasz argument
  Result:=tabDane[1,I] + (tabDane[1,I+1] - tabDane[1,I]) * (douWejscie - tabDane[0,I]) / (tabDane[0,I+1] - tabDane[0,I]);
  // Zwraca wartoœæ aproksymacji liniowej obliczonej na podstawie 2 skrajnych punktów przedzia³u
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

{$ENDREGION}

{$Region 'Etap 1'}
procedure TfrmMain.cbxMaterial1Change(Sender: TObject);
//Wczytanie pozosta³ych parametrów materia³u po zmianie
var
  iniMaterialy: TIniFile;
begin
  if cbxMaterial1.ItemIndex=-1 then
    raise Exception.Create('Aby dalej prowadziæ obliczenia nale¿y wybraæ materia³');
  iniMaterialy:= TIniFile.Create(ExtractFilePath(Application.ExeName)+ 'Materialy.ini');
  edtObrobkaCieplna1.Text:= iniMaterialy.ReadString(IntToStr(cbxMaterial1.ItemIndex),'Obrobka','');
  edtTwardosc1.AsInteger:= iniMaterialy.ReadInteger(IntToStr(cbxMaterial1.ItemIndex),'Twardosc',0);
  edtRm1.AsInteger:= iniMaterialy.ReadInteger(IntToStr(cbxMaterial1.ItemIndex),'Rm',0);
  edtRe1.AsInteger:= iniMaterialy.ReadInteger(IntToStr(cbxMaterial1.ItemIndex),'Re',0);
  iniMaterialy.Free;
end;

procedure TfrmMain.cbxMaterial2Change(Sender: TObject);
//Dzia³a tak samo jak dla cbxMaterial1
var
  iniMaterialy: TIniFile;
begin
   if cbxMaterial2.ItemIndex=-1 then
    raise Exception.Create('Aby dalej prowadziæ obliczenia nale¿y wybraæ materia³');
  iniMaterialy:= TIniFile.Create(ExtractFilePath(Application.ExeName)+ 'Materialy.ini');
  edtObrobkaCieplna2.Text:= iniMaterialy.ReadString(IntToStr(cbxMaterial2.ItemIndex),'Obrobka','');
  edtTwardosc2.AsInteger:= iniMaterialy.ReadInteger(IntToStr(cbxMaterial2.ItemIndex),'Twardosc',0);
  edtRm2.AsInteger:= iniMaterialy.ReadInteger(IntToStr(cbxMaterial2.ItemIndex),'Rm',0);
  edtRe2.AsInteger:= iniMaterialy.ReadInteger(IntToStr(cbxMaterial2.ItemIndex),'Re',0);
  iniMaterialy.Free;
end;

procedure TfrmMain.cbxPrzelozenieChange(Sender: TObject);
begin
  edtPredObr2.AsDouble :=RoundTo(edtPredObr1.AsDouble/strtofloat(cbxPrzelozenie.text),-2);
  edtMoment2.AsDouble :=RoundTo(edtMoment1.AsDouble*strtofloat(cbxPrzelozenie.text),-2);
end;

procedure TfrmMain.edtMoment1Exit(Sender: TObject);
//Oblicza moment wyjsciowy przy zmianie momentu wejsciowego + sprawdza czy jest liczb¹
begin
  if not edtMoment1.IsValid then
    raise Exception.Create('Podana wartoœæ momentu nie reprezentuje liczby');
   edtMoment2.AsDouble :=RoundTo(edtMoment1.AsDouble*strtofloat(cbxPrzelozenie.text),-2);
end;

procedure TfrmMain.edtPredObr1Exit(Sender: TObject);
//Oblicza wyjœciow¹ predkoœc obrotow¹ przy zmiania prêdkosci wejsciowej
begin
  if not edtPredObr1.IsValid then
    raise Exception.Create('Podana wartoœæ prêdkoœci nie reprezentuje liczby');
  edtPredObr2.AsDouble :=RoundTo(edtPredObr1.AsDouble/strtofloat(cbxPrzelozenie.text),-2);;
end;

{Procedury odpowedzialne za automatyczn¹ zmiane wartosci pozosta³ych sedCzas
Jeszcze do poprawki}
procedure TfrmMain.sedCzas2Change(Sender: TObject);
begin
  sedCzas1.Value:=100-sedCzas2.Value-sedCzas3.Value;
end;
procedure TfrmMain.sedCzas3Change(Sender: TObject);
begin
  sedCzas1.Value:=100-sedCzas2.Value-sedCzas3.Value;
end;

{$ENDREGION}

{$Region 'Etap 2'}
procedure TfrmMain.PodstawaProbyZmecz;
//Okreœla podstawy próby zmêczeniowej na podstawie twardosci materia³u
begin
  edtPodProbZmeczZebnika.AsInteger:=Round(AproksymacjaLiniowa('PodstawaProbyZmeczeniowej.ini',
                                              edtTwardosc1.AsInteger)*1000000);
  edtPodProbZmeczKola.AsInteger:=Round(AproksymacjaLiniowa('PodstawaProbyZmeczeniowej.ini',
                                              edtTwardosc2.AsInteger)*1000000);
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
  edtRownowaznaWspol.AsDouble:=RoundTo((Power(O1,3)*t1)+(Power(O2,3)*t2)+(Power(O3,3)*t3),-4);
end;

procedure TfrmMain.RownowaznaLiczbaCykli;
begin
  edtRownowaznaZebnik.AsInteger:=Round(60*edtPredObr1.AsDouble*edtCzasPracy.AsInteger*edtRownowaznaWspol.AsDouble);
  edtRownowaznaKolo.AsInteger:=Round(60*edtPredObr2.AsDouble*edtCzasPracy.AsInteger*edtRownowaznaWspol.AsDouble);
end;

procedure TfrmMain.WspolczynnikTrwalosciPracy;
begin
//Obliczenia dla zêbnika
   if edtPodProbZmeczZebnika.AsInteger>edtRownowaznaZebnik.AsDouble then
    edtWspolTrwalosciPracyZebnik.AsDouble:=RoundTo(Power(edtPodProbZmeczZebnika.AsInteger/edtRownowaznaZebnik.AsDouble,1/6),-2)
   else
    edtWspolTrwalosciPracyZebnik.AsDouble:=RoundTo(Power(edtPodProbZmeczZebnika.AsInteger/edtRownowaznaZebnik.AsDouble,1/20),-2);

//Obliczenia dla ko³a zêbatego
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

  //Obliczenia dla zêbnika
  case intObrobkaIndeks1 of
    -1 :  raise Exception.Create('Nie uda³o sie wczytac indeksu materia³u');
     1 :  edtNapreKrytyczneZebnik.AsDouble:= 2*edtTwardosc1.AsInteger+70;
     2 :  edtNapreKrytyczneZebnik.AsDouble:= RoundTo(17*HBnaHRC(edtTwardosc1.AsInteger)+200,-2);
     3 :  edtNapreKrytyczneZebnik.AsDouble:= RoundTo(17*HBnaHRC(edtTwardosc1.AsInteger)+200,-2);
     4 :  edtNapreKrytyczneZebnik.AsDouble:= RoundTo(23*HBnaHRC(edtTwardosc1.AsInteger),-2);
     5 :  edtNapreKrytyczneZebnik.AsDouble:= 1050;
  end;

  //Obliczenia dla ko³a zêbatego
   case intObrobkaIndeks2 of
    -1 :  raise Exception.Create('Nie uda³o sie wczytac indeksu materia³u');
     1 :  edtNapreKrytyczneKolo.AsDouble:= 2*edtTwardosc2.AsInteger+70;
     2 :  edtNapreKrytyczneKolo.AsDouble:= RoundTo(17*HBnaHRC(edtTwardosc2.AsInteger)+200,-2);
     3 :  edtNapreKrytyczneKolo.AsDouble:= RoundTo(17*HBnaHRC(edtTwardosc2.AsInteger)+200,-2);
     4 :  edtNapreKrytyczneKolo.AsDouble:= RoundTo(23*HBnaHRC(edtTwardosc2.AsInteger),-2);
     5 :  edtNapreKrytyczneKolo.AsDouble:= 1050;
  end;
end;

procedure TfrmMain.DopNaprezStyk;
begin
  //Obliczenia dla zebnika
  edtDopNapreStykZebnik.AsDouble:= RoundTo(0.9*edtNapreKrytyczneZebnik.AsDouble*
    edtWspolTrwalosciPracyZebnik.AsDouble/StrToFloat(cbxShZebnik.text),-2);
  //Obliczenia dla ko³a zêbatego
  edtDopNapreStykKolo.AsDouble:= RoundTo(0.9*edtNapreKrytyczneKolo.AsDouble*
    edtWspolTrwalosciPracyKolo.AsDouble/StrToFloat(cbxShKolo.text),-2);
end;

procedure TfrmMain.cbxShChange(Sender: TObject);
begin
   DopNaprezStyk;
   OblDopNaprezStyk;
end;

procedure TfrmMain.OblDopNaprezStyk;
var
  douMinDopNapreStyk: Double;
begin
  //Oblicza wartoœæ Obliczeniowych dopuszcalnych napre¿eñ stykowych i wpisuje do Edita
  edtOblDopNapreStyk.AsDouble:=RoundTo(0.45*(edtDopNapreStykZebnik.AsDouble+edtDopNapreStykKolo.AsDouble),-2);
  //Sprawdzamy które napre¿enia stykowe s¹ mniejsze
  if edtDopNapreStykZebnik.AsDouble > edtDopNapreStykKolo.AsDouble then
    douMinDopNapreStyk:= edtDopNapreStykKolo.AsDouble
  else douMinDopNapreStyk:= edtDopNapreStykZebnik.AsDouble;
  //Sprawdza czy zosta³ spe³niowny warunek
  if edtOblDopNapreStyk.AsDouble> 1.15* douMinDopNapreStyk then //Przekroczone napre¿enia, potrzeba poprawek
    begin
      btnDalej2.Enabled:=false;
      lblOstrze¿enie2_1.Visible:=true;
    end
  else
    begin
      btnDalej2.Enabled:=true;
      lblOstrze¿enie2_1.Visible:=false;
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

  //Obliczenia napre¿en stykowych dla zêbnika
  case intObrobkaIndeks1 of
    -1   :  raise Exception.Create('Nie uda³o sie wczytac indeksu materia³u');
     1,2 :  edtMaxNaprStykZebnik.AsDouble:= RoundTo(2.8*edtRe1.AsInteger,-2);
     3,4 :  edtMaxNaprStykZebnik.AsDouble:= RoundTo(44*HBnaHRC(edtTwardosc1.AsInteger),-2);
     5   :  edtMaxNaprStykZebnik.AsDouble:= RoundTo(3*HBnaHV(edtTwardosc1.AsInteger),-2);
  end;

  //Obliczenia napre¿en stykowych dla ko³a
  case intObrobkaIndeks2 of
    -1   :  raise Exception.Create('Nie uda³o sie wczytac indeksu materia³u');
     1,2 :  edtMaxNaprStykKolo.AsDouble:= RoundTo(2.8*edtRe2.AsInteger,-2);
     3,4 :  edtMaxNaprStykKolo.AsDouble:= RoundTo(44*HBnaHRC(edtTwardosc2.AsInteger),-2);
     5   :  edtMaxNaprStykKolo.AsDouble:= RoundTo(3*HBnaHV(edtTwardosc2.AsInteger),-2);
  end;

  //Obliczenia napre¿en gn¹cych dla zêbnika
  case intObrobkaIndeks1 of
    -1   :  raise Exception.Create('Nie uda³o sie wczytac indeksu materia³u');
     1   :  edtMaxNaprGnacZebnik.AsDouble:= RoundTo(3.7*edtTwardosc1.AsInteger,-2);
     2,3 :  edtMaxNaprGnacZebnik.AsDouble:= 1030;
     4   :  edtMaxNaprGnacZebnik.AsDouble:= 1140;
     5   :  edtMaxNaprGnacZebnik.AsDouble:= 1030;
  end;

  //Obliczenia napre¿en gn¹cych dla ko³a
  case intObrobkaIndeks2 of
    -1   :  raise Exception.Create('Nie uda³o sie wczytac indeksu materia³u');
     1   :  edtMaxNaprGnacKolo.AsDouble:= RoundTo(3.7*edtTwardosc2.AsInteger,-2);
     2,3 :  edtMaxNaprGnacKolo.AsDouble:= 1030;
     4   :  edtMaxNaprGnacKolo.AsDouble:= 1140;
     5   :  edtMaxNaprGnacKolo.AsDouble:= 1030;
  end;

end;
{$ENDREGION}

{$REGION 'TEdit'}

function TEdit.GetAsDouble: Double;
// konwertuje tekst na liczbê zmiennoprzecinkow¹. Jeœli konwersja siê nie powiedzie to generowany bêdzie wyj¹tek
begin
  Result := StrToFloat(Text);
end;

function TEdit.GetAsInteger: Integer;
// konwertuje tekst na liczbê ca³kowit¹. Jeœli konwersja siê nie powiedzie to generowany bêdzie wyj¹tek
begin
  Result := StrToInt(Text);
end;

function TEdit.IsValid: Boolean;
// zwraca True jeœli tekst reprezentuje poprawn¹ liczbê ca³kowit¹ (Tag = 1) lub zmiennoprzedinkow¹ (Tag = 2)
var
  ivalue: Integer;
  dvalue: Double;
begin
  case Tag of
    1: Result := TryStrToInt(Text, ivalue);
    2: Result := TryStrToFloat(Text, dvalue);
  else
    raise Exception.Create('Pole edycyjne nie obs³uguje wartoœci liczbowych. Aby tak by³o pole Tag powinno mieæ wartoœæ: 1, dla liczb ca³kowitych, lub 2, dla liczb zmiennoprzecinkowych');
  end;
end;

procedure TEdit.SetAsDouble(AValue: Double);
// konwertuje liczbê zmiennoprzecinkow¹ na tekst i zapisuje t¹ wartoœæ do pola Text
begin
  Text := FloatToStr(AValue);
end;

procedure TEdit.SetAsInteger(AValue: Integer);
// konwertuje liczbê ca³kowit¹ na tekst i zapisuje t¹ wartoœæ do pola Text
begin
  Text := IntToStr(AValue);
end;

{$ENDREGION}

end.
