unit frmMain_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, frmSzeregi_u,
  Vcl.Samples.Spin;

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
    lblPredObr: TLabel;
    edtPredObr1: TEdit;
    lblObrMin1: TLabel;
    lblKoloZebate: TLabel;
    edtPredObr2: TEdit;
    lblObrMin2: TLabel;
    lblPrzelozenie: TLabel;
    edtPrzelozenie: TEdit;
    btnSzeregi: TButton;
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
    SpinEdit1: TSpinEdit;
    lblCzasTrwania: TLabel;
    lblWartoscObciazenia: TLabel;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    SpinEdit5: TSpinEdit;
    SpinEdit6: TSpinEdit;
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
    Label1: TLabel;
    procedure btnSzeregiClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure ShowHint(ASender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btnSzeregiClick(Sender: TObject);
begin
   frmSzeregi.Show;
   MessageDlg('test',TMsgDlgType.mtInformation,mbYesNoCancel,0);
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
   Application.OnHint:=ShowHint;
   edtPrzelozenie.Hint:='Prze³o¿enie'+#13+ 'Druga linia|Wartoœæ prze³o¿enia powinna byæ znormalizowana'; //Dodanie #13 tworzy now¹ linie w hincie a | przenosi do pasku stanu
end;

procedure TfrmMain.ShowHint(ASender: TObject);  //Procedura przenosz¹ca hinty na pasek stanu
begin
  stbPasekStanu.Panels[0].Text:=Application.Hint;
end;

end.
