unit frmMain_u;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, frmPomoc_u,
  Vcl.Samples.Spin, System.Math, IniFiles, Vcl.Imaging.pngimage;
type
  // od teraz TEdit b�d� wspiera�y wprowadzanie danych liczbowych. Typ danych liczbowych okre�lany jest za pomoc� pola Tag.
  // Tag = 1 pozwala na wprowadzanie liczb ca�kowitych, a Tag = 2 liczb zmiennoprzecinkowych.
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
    lblMateria�1: TLabel;
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
    lblOstrze�enie2_1: TLabel;
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
procedure TfrmMain.FormCreate(Sender: TObject); //Domyslna procedura forma, uruchamiana na pocz�tku programu
var
  iniMaterialy: TIniFile;
  intIloscMaterialow, intIndeks: Integer;
begin
   Application.OnHint:=ShowHint;
   //Wczytywanie materia�ow z pliku Materaly.ini w katalogu z plikiem .exe
   iniMaterialy:= TIniFile.Create(ExtractFilePath(Application.ExeName)+ 'Materialy.ini');
   intIloscMaterialow:=iniMaterialy.ReadInteger('Ustawienia','IloscMaterialow',000);
   for intIndeks := 0 to intIloscMaterialow-1 do
    begin
    cbxMaterial1.Items.Add(iniMaterialy.ReadString(IntToStr(intIndeks),'Nazwa',''));
    cbxMaterial2.Items.Add(iniMaterialy.ReadString(IntToStr(intIndeks),'Nazwa',''));
    end;
   iniMaterialy.Free;

   cbxPrzelozenie.Hint:='Prze�o�enie|Warto�ci prze�o�e� s� uszeregowane, wi�cej w pomocy'; //Dodanie #13 tworzy now� linie w hincie a | przenosi do pasku stanu
   pgcMain.TabIndex:=0;
   tshEtap2.TabVisible:= false;
   tshEtap3.TabVisible:= false;
end;

procedure TfrmMain.btnDalej1Click(Sender: TObject); //Przej�cie do Etapu2, obliczenia dla Etap2
begin
  if (cbxMaterial1.ItemIndex or cbxMaterial2.ItemIndex)=-1 then
    raise Exception.Create('Aby dalej prowadzi� obliczenia nale�y wybra� materia�');

  tshEtap2.TabVisible:= true;
  pgcMain.TabIndex:=1;  //Odblokowuje i prze��cz na 2 zak�adke

  {Podstawa pr�by zm�czeniowej}
  PodstawaProbyZmecz();

  {R�wnowa�na liczba cykli}
  WspolczynnikZmianyObciarzenia;
  RownowaznaLiczbaCykli;

  {Wspo�czynnik trwa�o��i pracy}
  WspolczynnikTrwalosciPracy;

  {Napr�enia krytyczne przy bazowej liczbie cykli}
  NaprezeniaKrytyczne;

  {Dopuszczalne napr�enia stykowe}
  DopNaprezStyk;

  {Obliczeniowe dopuszczalne napr�enia stykowe}
  OblDopNaprezStyk;

  {Graniczne napr�enia dopuszczalne przy przeci��eniach}
  NaprPrzyPrzeciaz;

end;

procedure TfrmMain.btnDalej2Click(Sender: TObject); //Przej�cie do Etapu3, obliczenia dla Etap3
begin
  tshEtap3.TabVisible:= true;
  pgcMain.TabIndex:=2;  //Odblokowuje i prze��cz na 3 zak�adke

  {Zewnetrzna obliczeniowa �rednica z�bnika:}
  {Wspo�czynnik nier�wnomierno�ci rozk�adu obci��enia wzd�u� lini styku kHB}
  WspolKHB;
  {Wspo�czynnik uwzgl�dniaj�cy zewnetrzne obci�zenie dynamiczne}
  WspolKA;
  {�rednica}
  ZewnOblSredZebnika;

  {Modu� obwodowy zewnetrzny}
  ModulZewnetrzny;

  {Liczby z�b�w}
  LiczbaZebow;

  {Rzeczywiste prze�o�enie}
  RzeczywistePrzelozenie;

  {D�ugo�� zewnetrzna tworz�cej ko�a sto�kowego}
  ZewnTworzaca;

  {Szeroko�� wie�ca k� z�batych}
  SzerokoscWienca;

  {D�ugo�� �rednia tworz�cej ko�a sto�kowego}
  SredniaTworzaca;

  {K�ty sto�k�w podzia�owych}
  KatyStozkow;

  {�rednice zewnetrzne k� sto�kowych}
  SredniceZewnetrzne;

  {Modu� w �rednim przekroju z�ba}
   ModulSredni;

  {�rednice �rednie k� z�batych}
  SrednieSrednice;

end;

{$Region 'Ogolna'}
procedure TfrmMain.btnHelpClick(Sender: TObject);
{Odpowada za otwarcie helpa na odpowiedniej zak�adce,
tag przycisku musi byc taki sam jak index zak�adki w frmPomoc}
begin
   frmPomoc.Show;
   frmPomoc.pgcPomoc.TabIndex:=Tcontrol(Sender).Tag;
end;

procedure TfrmMain.ShowHint(ASender: TObject); //Procedura przenosz�ca hinty na pasek stanu
begin
  stbPasekStanu.Panels[0].Text:=Application.Hint;
end;



function TfrmMain.AproksymacjaLiniowa(strNazwaDokumentu: String; douWejscie: Double): Double;
{Funkcja wyliczaj�ca wartosc z "wykresu" na podstawie pliku .ini z punktami i argumetu
Plik z danymi musi znajdowa� sie w katalogu z plikiem .exe
a jego nazwa podana w formacie ###.ini.}
var
  iniDane: TIniFile;
  intDlugosc, I: Integer;
  tabDane: array of array of Double; //Deklaracja 2wymiarowej dynamicznej tablicy
begin
  iniDane:=TIniFile.Create(ExtractFilePath(Application.ExeName)+ strNazwaDokumentu);
  //Otwiera plik o nazwie z podanej w wywo�aniu, kt�ry znajduje sie w tym samym katalogu co plik.exe
  if not iniDane.SectionExists('0') then  //Sprawdzenie czy dokument zosta� otwarty prawid�owo lub czy jest pusty
    raise Exception.Create('Nie uda�o si� otworzy� pliku '+strNazwaDokumentu+' lub jest pusty');
  intDlugosc:=0;
  while iniDane.SectionExists(IntToStr(intDlugosc)) do intDlugosc:=intDlugosc+1;
  //Sprawdzamy ile punkt�w jest zawartych w pliku, aby zadeklarowac tablice odpowiedniej d�ugosci
  SetLength(tabDane,2,intDlugosc);
  for I := 0 to intDlugosc-1 do //Wczytujemy dane z pliku do tablicy
  begin
    tabDane[0,I] := iniDane.ReadFloat(IntToStr(I),'x',0);
    tabDane[1,I] := iniDane.ReadFloat(IntToStr(I),'y',0);
  end;
  I:=0;
  while douWejscie>tabDane[0,I+1] do i:=i+1; //Sukamy przedzia�u zawieraj�cego nasz argument
  Result:=tabDane[1,I] + (tabDane[1,I+1] - tabDane[1,I]) * (douWejscie - tabDane[0,I]) / (tabDane[0,I+1] - tabDane[0,I]);
  // Zwraca warto�� aproksymacji liniowej obliczonej na podstawie 2 skrajnych punkt�w przedzia�u
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
//Wczytanie pozosta�ych parametr�w materia�u po zmianie
var
  iniMaterialy: TIniFile;
begin
  if cbxMaterial1.ItemIndex=-1 then
    raise Exception.Create('Aby dalej prowadzi� obliczenia nale�y wybra� materia�');
  iniMaterialy:= TIniFile.Create(ExtractFilePath(Application.ExeName)+ 'Materialy.ini');
  edtObrobkaCieplna1.Text:= iniMaterialy.ReadString(IntToStr(cbxMaterial1.ItemIndex),'Obrobka','');
  edtTwardosc1.AsInteger:= iniMaterialy.ReadInteger(IntToStr(cbxMaterial1.ItemIndex),'Twardosc',0);
  edtRm1.AsInteger:= iniMaterialy.ReadInteger(IntToStr(cbxMaterial1.ItemIndex),'Rm',0);
  edtRe1.AsInteger:= iniMaterialy.ReadInteger(IntToStr(cbxMaterial1.ItemIndex),'Re',0);
  iniMaterialy.Free;
end;

procedure TfrmMain.cbxMaterial2Change(Sender: TObject);
//Dzia�a tak samo jak dla cbxMaterial1
var
  iniMaterialy: TIniFile;
begin
   if cbxMaterial2.ItemIndex=-1 then
    raise Exception.Create('Aby dalej prowadzi� obliczenia nale�y wybra� materia�');
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
//Oblicza moment wyjsciowy przy zmianie momentu wejsciowego + sprawdza czy jest liczb�
begin
  if not edtMoment1.IsValid then
    raise Exception.Create('Podana warto�� momentu nie reprezentuje liczby');
   edtMoment2.AsDouble :=RoundTo(edtMoment1.AsDouble*strtofloat(cbxPrzelozenie.text),-2);
end;

procedure TfrmMain.edtPredObr1Exit(Sender: TObject);
//Oblicza wyj�ciow� predko�c obrotow� przy zmiania pr�dkosci wejsciowej
begin
  if not edtPredObr1.IsValid then
    raise Exception.Create('Podana warto�� pr�dko�ci nie reprezentuje liczby');
  edtPredObr2.AsDouble :=RoundTo(edtPredObr1.AsDouble/strtofloat(cbxPrzelozenie.text),-2);;
end;

{Procedury odpowedzialne za automatyczn� zmiane wartosci pozosta�ych sedCzas
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
//Okre�la podstawy pr�by zm�czeniowej na podstawie twardosci materia�u
begin
  edtPodProbZmeczZebnika.AsInteger:=Round(AproksymacjaLiniowa('PodstawaProbyZmeczeniowej.ini',
                                              edtTwardosc1.AsInteger)*1000000);
  edtPodProbZmeczKola.AsInteger:=Round(AproksymacjaLiniowa('PodstawaProbyZmeczeniowej.ini',
                                              edtTwardosc2.AsInteger)*1000000);
end;

procedure TfrmMain.WspolczynnikZmianyObciarzenia; //Wylicza wspo�czynnik od zmiany obcia�enia w czasie pracy
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
  edtRownowaznaZebnik.AsDouble:=Round(60*edtPredObr1.AsDouble*edtCzasPracy.AsInteger*edtRownowaznaWspol.AsDouble);
  edtRownowaznaKolo.AsDouble:=Round(60*edtPredObr2.AsDouble*edtCzasPracy.AsInteger*edtRownowaznaWspol.AsDouble);
end;


procedure TfrmMain.WspolczynnikTrwalosciPracy;
begin
//Obliczenia dla z�bnika
   if edtPodProbZmeczZebnika.AsInteger>edtRownowaznaZebnik.AsDouble then
    edtWspolTrwalosciPracyZebnik.AsDouble:=RoundTo(Power(edtPodProbZmeczZebnika.AsInteger/edtRownowaznaZebnik.AsDouble,1/6),-2)
   else
    edtWspolTrwalosciPracyZebnik.AsDouble:=RoundTo(Power(edtPodProbZmeczZebnika.AsInteger/edtRownowaznaZebnik.AsDouble,1/20),-2);

//Obliczenia dla ko�a z�batego
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

  //Obliczenia dla z�bnika
  case intObrobkaIndeks1 of
    -1 :  raise Exception.Create('Nie uda�o sie wczytac indeksu materia�u');
     1 :  edtNapreKrytyczneZebnik.AsDouble:= 2*edtTwardosc1.AsInteger+70;
     2 :  edtNapreKrytyczneZebnik.AsDouble:= RoundTo(17*HBnaHRC(edtTwardosc1.AsInteger)+200,-2);
     3 :  edtNapreKrytyczneZebnik.AsDouble:= RoundTo(17*HBnaHRC(edtTwardosc1.AsInteger)+200,-2);
     4 :  edtNapreKrytyczneZebnik.AsDouble:= RoundTo(23*HBnaHRC(edtTwardosc1.AsInteger),-2);
     5 :  edtNapreKrytyczneZebnik.AsDouble:= 1050;
  end;

  //Obliczenia dla ko�a z�batego
   case intObrobkaIndeks2 of
    -1 :  raise Exception.Create('Nie uda�o sie wczytac indeksu materia�u');
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
  //Obliczenia dla ko�a z�batego
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
  //Oblicza warto�� Obliczeniowych dopuszcalnych napre�e� stykowych i wpisuje do Edita
  edtOblDopNapreStyk.AsDouble:=RoundTo(0.45*(edtDopNapreStykZebnik.AsDouble+edtDopNapreStykKolo.AsDouble),-2);
  //Sprawdzamy kt�re napre�enia stykowe s� mniejsze
  if edtDopNapreStykZebnik.AsDouble > edtDopNapreStykKolo.AsDouble then
    douMinDopNapreStyk:= edtDopNapreStykKolo.AsDouble
  else douMinDopNapreStyk:= edtDopNapreStykZebnik.AsDouble;
  //Sprawdza czy zosta� spe�niowny warunek
  if edtOblDopNapreStyk.AsDouble> 1.15* douMinDopNapreStyk then //Przekroczone napre�enia, potrzeba poprawek
    begin
      btnDalej2.Enabled:=false;
      lblOstrze�enie2_1.Visible:=true;
    end
  else
    begin
      btnDalej2.Enabled:=true;
      lblOstrze�enie2_1.Visible:=false;
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

  //Obliczenia napre�en stykowych dla z�bnika
  case intObrobkaIndeks1 of
    -1   :  raise Exception.Create('Nie uda�o sie wczytac indeksu materia�u');
     1,2 :  edtMaxNaprStykZebnik.AsDouble:= RoundTo(2.8*edtRe1.AsInteger,-2);
     3,4 :  edtMaxNaprStykZebnik.AsDouble:= RoundTo(44*HBnaHRC(edtTwardosc1.AsInteger),-2);
     5   :  edtMaxNaprStykZebnik.AsDouble:= RoundTo(3*HBnaHV(edtTwardosc1.AsInteger),-2);
  end;

  //Obliczenia napre�en stykowych dla ko�a
  case intObrobkaIndeks2 of
    -1   :  raise Exception.Create('Nie uda�o sie wczytac indeksu materia�u');
     1,2 :  edtMaxNaprStykKolo.AsDouble:= RoundTo(2.8*edtRe2.AsInteger,-2);
     3,4 :  edtMaxNaprStykKolo.AsDouble:= RoundTo(44*HBnaHRC(edtTwardosc2.AsInteger),-2);
     5   :  edtMaxNaprStykKolo.AsDouble:= RoundTo(3*HBnaHV(edtTwardosc2.AsInteger),-2);
  end;

  //Obliczenia napre�en gn�cych dla z�bnika
  case intObrobkaIndeks1 of
    -1   :  raise Exception.Create('Nie uda�o sie wczytac indeksu materia�u');
     1   :  edtMaxNaprGnacZebnik.AsDouble:= RoundTo(3.7*edtTwardosc1.AsInteger,-2);
     2,3 :  edtMaxNaprGnacZebnik.AsDouble:= 1030;
     4   :  edtMaxNaprGnacZebnik.AsDouble:= 1140;
     5   :  edtMaxNaprGnacZebnik.AsDouble:= 1030;
  end;

  //Obliczenia napre�en gn�cych dla ko�a
  case intObrobkaIndeks2 of
    -1   :  raise Exception.Create('Nie uda�o sie wczytac indeksu materia�u');
     1   :  edtMaxNaprGnacKolo.AsDouble:= RoundTo(3.7*edtTwardosc2.AsInteger,-2);
     2,3 :  edtMaxNaprGnacKolo.AsDouble:= 1030;
     4   :  edtMaxNaprGnacKolo.AsDouble:= 1140;
     5   :  edtMaxNaprGnacKolo.AsDouble:= 1030;
  end;

end;
{$ENDREGION}

{$REGION 'Etap3'}
procedure TfrmMain.updKbeClick(Sender: TObject; Button: TUDBtnType); //Zmiana wartosci wspo�czynnika kbe
begin
  edtKbe.AsDouble:= updKbe.Position*0.01;
  btnDalej2Click(sender);
end;

procedure TfrmMain.WspolKHB; //Wylicza warto�� wspolczynnika na podstawie wspo�czynnika kbe i wykres�w
var
douArgument: Double;
begin
//Argument do funkcji AproksymacjaLiniowa
douArgument:=edtKbe.AsDouble*StrToFloat(cbxPrzelozenie.Text)/(2-edtKbe.AsDouble);
 if edtTwardosc2.AsInteger<=350 then // wykres kHB_a lub kHB_b w zalezno�ci od twardosci ko�a
 begin
  if cbxMontazKol.ItemIndex=0 then //  wykres kHB_a_1 lub kHB_a_2 w zaleznosci od rodzaju monta�u ko�
  begin
    if cbxLozyska.ItemIndex=0 then //  wykres kHB_a_1a lub kHB_a_1b w zaleznosci od �o�yskowania
      edtKhb.AsDouble:=RoundTo(AproksymacjaLiniowa('kHB_a_1a.ini',douArgument),-3)
    else edtKhb.AsDouble:=RoundTo(AproksymacjaLiniowa('kHB_a_1b.ini',douArgument),-3)
  end
  else edtKhb.AsDouble:=RoundTo(AproksymacjaLiniowa('kHB_a_2.ini',douArgument),-3)
 end
 else
  begin
  if cbxMontazKol.ItemIndex=0 then //  wykres kHB_b_1 lub kHB_b_2 w zaleznosci od rodzaju monta�u ko�
  begin
    if cbxLozyska.ItemIndex=0 then //  wykres kHB_b_1a lub kHB_b_1b w zaleznosci od �o�yskowania
      edtKhb.AsDouble:=RoundTo(AproksymacjaLiniowa('kHB_b_1a.ini',douArgument),-3)
    else edtKhb.AsDouble:=RoundTo(AproksymacjaLiniowa('kHB_b_1b.ini',douArgument),-3)
  end
  else edtKhb.AsDouble:=RoundTo(AproksymacjaLiniowa('kHB_b_2.ini',douArgument),-3)
 end;
 if edtKhb.AsDouble=0 then edtKhb.AsDouble:=1.4; //Zabezpieczenie przed wartoscia poza zakresem np. przy du�ych prze�ozeniach
end;

procedure TfrmMain.WspolKA; //Wspo�czynnik uwzgl�dniaj�cy zewnetrzne obci�zenie dynamiczne
var
tabKA: array[0..3,0..3] of Double;
begin
  //Uzupe�nienie tablicy wartosciami wspo�czynnik�w
  tabKA[0][0]:= 1.00; tabKA[0][1]:= 1.25; tabKA[0][2]:= 1.50; tabKA[0][3]:= 1.75;
  tabKA[1][0]:= 1.10; tabKA[1][1]:= 1.35; tabKA[1][2]:= 1.60; tabKA[1][3]:= 1.85;
  tabKA[2][0]:= 1.25; tabKA[2][1]:= 1.50; tabKA[2][2]:= 1.75; tabKA[2][3]:= 2.00;
  tabKA[3][0]:= 1.50; tabKA[3][1]:= 1.75; tabKA[3][2]:= 2.00; tabKA[3][3]:= 2.25;
  //Przypisanie wartosci na podstawie warunk�w obci��enia od silnik i maszyny roboczej
  edtKa.AsDouble:=tabKA[cbxObcOdSilnika.ItemIndex,cbxObcOdMaszyny.ItemIndex];
end;

procedure TfrmMain.ZewnOblSredZebnika;
begin
  edtZewnOblSredZebnika.AsDouble:=RoundTo(edtKd.AsDouble*Power((edtMoment1.AsDouble*edtKhb.AsDouble*edtKa.AsDouble*1000)/
      (0.85*edtOblDopNapreStyk.AsDouble*edtOblDopNapreStyk.AsDouble*(1-edtKbe.AsDouble)*edtKbe.AsDouble*StrToFloat(cbxPrzelozenie.Text))
      ,1/3),-2);
end;

procedure TfrmMain.ModulZewnetrzny; //Oblicza modu� obwodowy zewnetrzny i zaokr�gla do wartosci z norm
var
tabModulyWgPN: array[0..28] of Double;  //Tablica na znormalizowane wartosci modu�u
douModul, intMax, intMin: Double;
intI: Integer;
begin
//Uzupe�nienie tablicy
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

//Obliczenie wartosci modu�u
douModul:= edtZewnOblSredZebnika.AsDouble/17; //17 jest wstepn� liczb� z�b�w

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
  edtSzerokoscWienca.AsDouble:= Round(edtTworzaca.AsDouble*edtKbe.AsDouble);
end;

procedure TfrmMain.SredniaTworzaca;
begin
  edtSredTworzaca.AsDouble:= edtTworzaca.AsDouble- 0.5* edtSzerokoscWienca.AsDouble;
end;

procedure TfrmMain.KatyStozkow;
begin
  edtKatyZebnik.AsDouble:= RoundTo(RadToDeg(ArcTan(1/edtPrzelozenieRzecz.AsDouble)),-3);
  edtKatyKolo.AsDouble:= RoundTo(RadToDeg(ArcTan(edtPrzelozenieRzecz.AsDouble)),-3);
end;

procedure TfrmMain.SredniceZewnetrzne;
begin
  //�rednice podzia�owe
  edtSredPodzialowaZebnik.AsDouble:= RoundTo(edtModulZewnetrzny.AsDouble*edtLiczbaZebowZebnik.AsDouble,-2);
  edtSredPodzialowaKolo.AsDouble:= RoundTo(edtModulZewnetrzny.AsDouble*edtLiczbaZebowKolo.AsDouble,-2);
  //�rednice wierzcho�k�w z�b�w
  edtSredWierzZebnik.AsDouble:= RoundTo(edtSredPodzialowaZebnik.AsDouble+ 2*
    edtModulZewnetrzny.AsDouble* cos(DegToRad(edtKatyZebnik.AsDouble)),-2);
  edtSredWierzKolo.AsDouble:= RoundTo(edtSredPodzialowaKolo.AsDouble+ 2*
    edtModulZewnetrzny.AsDouble* cos(DegToRad(edtKatyKolo.AsDouble)),-2);
  //�rednice st�p z�b�w
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

{$ENDREGION}

{$REGION 'TEdit'}

function TEdit.GetAsDouble: Double;
// konwertuje tekst na liczb� zmiennoprzecinkow�. Je�li konwersja si� nie powiedzie to generowany b�dzie wyj�tek
begin
  Result := StrToFloat(Text);
end;

function TEdit.GetAsInteger: Integer;
// konwertuje tekst na liczb� ca�kowit�. Je�li konwersja si� nie powiedzie to generowany b�dzie wyj�tek
begin
  Result := StrToInt(Text);
end;

function TEdit.IsValid: Boolean;
// zwraca True je�li tekst reprezentuje poprawn� liczb� ca�kowit� (Tag = 1) lub zmiennoprzedinkow� (Tag = 2)
var
  ivalue: Integer;
  dvalue: Double;
begin
  case Tag of
    1: Result := TryStrToInt(Text, ivalue);
    2: Result := TryStrToFloat(Text, dvalue);
  else
    raise Exception.Create('Pole edycyjne nie obs�uguje warto�ci liczbowych. Aby tak by�o pole Tag powinno mie� warto��: 1, dla liczb ca�kowitych, lub 2, dla liczb zmiennoprzecinkowych');
  end;
end;

procedure TEdit.SetAsDouble(AValue: Double);
// konwertuje liczb� zmiennoprzecinkow� na tekst i zapisuje t� warto�� do pola Text
begin
  Text := FloatToStr(AValue);
end;

procedure TEdit.SetAsInteger(AValue: Integer);
// konwertuje liczb� ca�kowit� na tekst i zapisuje t� warto�� do pola Text
begin
  Text := IntToStr(AValue);
end;

{$ENDREGION}

end.
