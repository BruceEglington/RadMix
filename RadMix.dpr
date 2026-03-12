program RadMix;

uses
  System.StartUpCopy,
  FMX.Forms,
  RdMx_mn in 'RdMx_mn.pas' {fm_RdMx_Main},
  RdMx_dm in 'RdMx_dm.pas' {DataModule1: TDataModule},
  RdMx_variables in 'RdMx_variables.pas',
  RdMx_about in 'RdMx_about.pas' {fmAbout};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfm_RdMx_Main, fm_RdMx_Main);
  Application.CreateForm(TDataModule1, DataModule1);
  //Application.CreateForm(TfmAbout, fmAbout);
  Application.Run;
end.
