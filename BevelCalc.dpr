program BevelCalc;

uses
  Vcl.Forms,
  frmMain_u in 'frmMain_u.pas' {frmMain},
  frmPomoc_u in 'frmPomoc_u.pas' {frmPomoc};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmPomoc, frmPomoc);
  Application.Run;
end.
