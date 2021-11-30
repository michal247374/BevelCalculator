program BevelCalc;

uses
  Vcl.Forms,
  frmMain_u in 'frmMain_u.pas' {frmMain},
  frmSzeregi_u in 'frmSzeregi_u.pas' {frmSzeregi};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmSzeregi, frmSzeregi);
  Application.Run;
end.
