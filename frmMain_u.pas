unit frmMain_u;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, frmPomoc_u,
  Vcl.Samples.Spin, System.Math, IniFiles;
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
    lblMPa5: TLabel;
    lblMPa6: TLabel;
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
  private
    procedure ShowHint(ASender: TObject);
    procedure WspolczynnikZmianyObciarzenia();
    procedure PodstawaProbyZmecz();
    procedure RownowaznaLiczbaCykli();
    procedure WspolczynnikTrwalosciPracy();
    function NaprezeniaKrytyczne(intTwardosc: Integer; strObrobkaCieplna: String): Double;
    function AproksymacjaLiniowa(strNazwaDokumentu: String; douWejscie: Double): Double;
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
  edtRownowaznaZebnik.AsInteger:=Round(60*edtPredObr1.AsDouble*edtCzasPracy.AsInteger*edtRownowaznaWspol.AsDouble);
  edtRownowaznaKolo.AsInteger:=Round(60*edtPredObr2.AsDouble*edtCzasPracy.AsInteger*edtRownowaznaWspol.AsDouble);
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

//To ni�ej jest do poprawki
function TfrmMain.NaprezeniaKrytyczne(intTwardosc: Integer; strObrobkaCieplna: String): Double;
var
  intTypObrobki: Integer;
  douTwardoscHRC: Double;
begin
  intTypObrobki:= strtoint(Copy(strObrobkaCieplna,1,1));
  if ((intTypObrobki>1) and (intTypObrobki<5)) then  //przelicza z HB na HRC
  begin
  end;
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
