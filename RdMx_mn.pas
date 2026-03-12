unit RdMx_mn;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  System.Math,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMXTee.Commander, FMXTee.Engine, FMXTee.Procs, FMXTee.Chart, FMX.ListBox,
  FMX.Edit, FMX.TabControl, FMX.Menus, FMX.Controls.Presentation, FMXTee.Series,
  RdMx_about;

type
  Tfm_RdMx_Main = class(TForm)
    MainMenu1: TMainMenu;
    MenuBar1: TMenuBar;
    StatusBar1: TStatusBar;
    mi_File: TMenuItem;
    mi_Help: TMenuItem;
    mi_Help_About: TMenuItem;
    mi_File_Exit: TMenuItem;
    TabControl1: TTabControl;
    ti_Control: TTabItem;
    ti_Graph: TTabItem;
    Panel5: TPanel;
    Label2: TLabel;
    pJuvenile: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    ljElementXX: TLabel;
    ljElementYY: TLabel;
    ljRatioX: TLabel;
    ljEpsilon: TLabel;
    ejElementXX: TEdit;
    ejElementYY: TEdit;
    ejRatioX: TEdit;
    ejRatioY: TEdit;
    ejEpsilon: TEdit;
    Panel6: TPanel;
    cbIsotopeSystem: TComboBox;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    eModelStartingAge: TEdit;
    eModelEndingAge: TEdit;
    pEvolved: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Label4: TLabel;
    leElementXX: TLabel;
    leElementYY: TLabel;
    leRatioX: TLabel;
    leEpsilon: TLabel;
    eeElementXX: TEdit;
    eeElementYY: TEdit;
    eeRatioX: TEdit;
    eeEpsilon: TEdit;
    Panel10: TPanel;
    pMixing: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Label8: TLabel;
    lmMixingAge1: TLabel;
    lmMixingAge2: TLabel;
    lmProportionJuvenile: TLabel;
    emMixingAge1: TEdit;
    emMixingAge2: TEdit;
    emProportionJuvenile: TEdit;
    Panel13: TPanel;
    pChartInitial: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    ChartInitial: TChart;
    TeeCommanderInitial: TTeeCommander;
    pChartChemistry: TPanel;
    Panel19: TPanel;
    Panel21: TPanel;
    pChartEpsilon: TPanel;
    Panel23: TPanel;
    TeeCommanderEpsilon: TTeeCommander;
    Panel24: TPanel;
    Panel25: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    mi_Calculate: TMenuItem;
    Series1: TPointSeries;
    Series2: TPointSeries;
    Series3: TPointSeries;
    Series4: TLineSeries;
    Series5: TLineSeries;
    Series6: TLineSeries;
    Series7: TLineSeries;
    eRatioY_e_Age1: TEdit;
    eRatioY_j_Age1: TEdit;
    lAge1: TLabel;
    lAge2: TLabel;
    eRatioY_j_Age2: TEdit;
    eRatioY_e_Age2: TEdit;
    lRatioY_e: TLabel;
    lRatioY_j: TLabel;
    eRatioY_m_Age1: TEdit;
    eRatioY_m_Age2: TEdit;
    lRatioY_m: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    eJuvenile_SiO2: TEdit;
    eEvolved_SiO2: TEdit;
    eAndesitic_SiO2: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    eJuvenileProportion_SiO2: TEdit;
    bCalculateSiO2: TButton;
    ljRatioY: TLabel;
    leRatioY: TLabel;
    Label16: TLabel;
    eProportion_Juvenile_Chart: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    eMelt_SmNd_Age2: TEdit;
    Label21: TLabel;
    Label22: TLabel;
    eMix_Sm_Age2: TEdit;
    eMix_Nd_Age1: TEdit;
    Label23: TLabel;
    eMelt_Sm_Age2: TEdit;
    eMelt_Nd_Age1: TEdit;
    eMix_Nd_Age2: TEdit;
    eMelt_Nd_Age2: TEdit;
    lMixAFCXX_Age2: TLabel;
    lMixAFCYY_Age2: TLabel;
    eMelt_Sm_Age1: TEdit;
    eMix_Sm_Age1: TEdit;
    eMelt_SmNd_Age1: TEdit;
    lMixAFCYY_Age1: TLabel;
    lMixAFCXX_Age1: TLabel;
    eProportionMeltDefined: TEdit;
    Label28: TLabel;
    Series8: TLineSeries;
    Series9: TLineSeries;
    eBulk_Kd_Sm: TEdit;
    lBulkKdXX: TLabel;
    eBulk_Kd_Nd: TEdit;
    lBulkKdYY: TLabel;
    eRatioX_m_Age2: TEdit;
    eRatioX_e_Age2: TEdit;
    eRatioX_j_Age2: TEdit;
    Label31: TLabel;
    eRatioX_j_Age1: TEdit;
    eRatioX_m_Age1: TEdit;
    eRatioX_e_Age1: TEdit;
    Label32: TLabel;
    eMix1Y_Age2: TEdit;
    lMix1Y_Age2: TLabel;
    Label34: TLabel;
    eMix1X_Age2: TEdit;
    lMix1X_Age2: TLabel;
    eMix1YY: TEdit;
    lMix1YY_Age2: TLabel;
    eMix1XX: TEdit;
    lMix1XX_Age2: TLabel;
    Panel1: TPanel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    eAFCMelt_SmNd_Age2: TEdit;
    Label41: TLabel;
    Label42: TLabel;
    eAFCMagma_Sm_Age2: TEdit;
    eAFCMagma_Nd_Age1: TEdit;
    Label43: TLabel;
    eAFCAssimilant_Sm_Age2: TEdit;
    eAFCAssimilant_Nd_Age1: TEdit;
    eAFCMagma_Nd_Age2: TEdit;
    eAFCAssimilant_Nd_Age2: TEdit;
    lAFCXX_Age2: TLabel;
    lAFCYY_Age2: TLabel;
    eAFCAssimilant_Sm_Age1: TEdit;
    eAFCMagma_Sm_Age1: TEdit;
    eAFCMelt_SmNd_Age1: TEdit;
    lAFCYY_Age1: TLabel;
    lAFCXX_Age1: TLabel;
    eProportionMeltAFC: TEdit;
    eAFCMelt_Nd_Age1: TEdit;
    eAFCMelt_Sm_Age1: TEdit;
    eAFCMelt_Nd_Age2: TEdit;
    eAFCMelt_Sm_Age2: TEdit;
    Label48: TLabel;
    Series10: TPointSeries;
    pKd: TPanel;
    Panel7: TPanel;
    Panel14: TPanel;
    Label49: TLabel;
    lChemistryXX: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    eWtOl: TEdit;
    eWtOpx: TEdit;
    eWtCpx: TEdit;
    eWtGt: TEdit;
    Label54: TLabel;
    eWtHbl: TEdit;
    Panel18: TPanel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    lChemistryYY: TLabel;
    eWtPg: TEdit;
    eWtMt: TEdit;
    eWtTit: TEdit;
    eWtSum: TEdit;
    eKd_XX_Bulk: TEdit;
    eKd_XX_Tit: TEdit;
    eKd_XX_Mt: TEdit;
    eKd_XX_Pg: TEdit;
    eKd_XX_Gt: TEdit;
    eKd_XX_Hbl: TEdit;
    eKd_XX_Cpx: TEdit;
    eKd_XX_Opx: TEdit;
    eKd_XX_Ol: TEdit;
    eKd_YY_Bulk: TEdit;
    eKd_YY_Tit: TEdit;
    eKd_YY_Mt: TEdit;
    eKd_YY_Pg: TEdit;
    eKd_YY_Gt: TEdit;
    eKd_YY_Hbl: TEdit;
    eKd_YY_Cpx: TEdit;
    eKd_YY_Opx: TEdit;
    eKd_YY_Ol: TEdit;
    ChartChemistry: TChart;
    PointSeries4: TPointSeries;
    PointSeries5: TPointSeries;
    PointSeries6: TPointSeries;
    PointSeries7: TPointSeries;
    TeeCommander1: TTeeCommander;
    ChartEpsilon: TChart;
    PointSeries1: TPointSeries;
    PointSeries2: TPointSeries;
    PointSeries3: TPointSeries;
    PointSeries8: TPointSeries;
    LineSeries1: TLineSeries;
    LineSeries2: TLineSeries;
    LineSeries3: TLineSeries;
    LineSeries4: TLineSeries;
    LineSeries5: TLineSeries;
    LineSeries6: TLineSeries;
    eMassAssimilatedMassCrystallised: TEdit;
    Label55: TLabel;
    Series11: TLineSeries;
    Series12: TLineSeries;
    Series13: TLineSeries;
    Series14: TLineSeries;
    eRatioY_melt_Age2: TEdit;
    eRatioY_melt_Age1: TEdit;
    Label56: TLabel;
    eProportionMelt: TEdit;
    eCalculatedProportionJuvenile: TEdit;
    Label57: TLabel;
    eeRatioY: TEdit;
    Series15: TLineSeries;
    Series16: TLineSeries;
    Series17: TLineSeries;
    Series18: TLineSeries;
    Series19: TLineSeries;
    Series20: TLineSeries;
    Series21: TLineSeries;
    Series22: TLineSeries;
    eMixRatioY_m_Age2: TEdit;
    procedure bCalculateSiO2Click(Sender: TObject);
    procedure cbIsotopeSystemChange(Sender: TObject);
    procedure eKd_YY_OlChange(Sender: TObject);
    procedure eKd_YY_OlDblClick(Sender: TObject);
    procedure eKd_XX_OlChange(Sender: TObject);
    procedure eKd_XX_OlDblClick(Sender: TObject);
    procedure eWtOlChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mi_CalculateClick(Sender: TObject);
    procedure mi_File_ExitClick(Sender: TObject);
    procedure mi_Help_AboutClick(Sender: TObject);
  private
    { Private declarations }
    procedure CalculateCHURValues(Age : double; DC, RatioX, RatioY : double; var CHURY : double);
    procedure CalculateDMValues(ModelStartingAge, ModelEndingAge : double; ModelRatioY, ModelRatioX, DC : double);
    procedure CalculateMixtureValues(ProportionA, RatioYA, RatioYB, ElementYYA, ElementYYB : double; var MixRatio : double; var MixElement : double);
    procedure UpdateChartInitial(SeriesID : string; Age, Ratio : double);
    procedure UpdateChartEpsilon(SeriesID : string; Age, Epsilon : double);
    procedure UpdateChartChemistry(SeriesID : string; X, Y : double);
    procedure CalculateEvolvedValues(ModelStartingAge, ModelEndingAge : double; ModelRatioY, ModelRatioX, DC : double);
    procedure CalculatePresentRatio(IsotopeSystem : string; Age : double; ElementXX, ElementYY, RatioY, DC : double; var PresentRatioY : double; var PresentRatioX : double);
    procedure CalculateMixtureEvolutionValues(ModelID : string; StartingAge, ModelEndingAge : double; ModelRatioY, ModelRatioX, DC : double);
    procedure CalculateBulkKD(var Bulk_Kd_Sm : double; var Bulk_Kd_Nd : double);
    procedure CalculatePartialMeltValues(Age : double; ProportionMelt : double; Bulk_Kd_Sm, Bulk_Kd_Nd : double; ElementXX, ElementYY : double; var MeltElementXX : double; var MeltElementYY : double);
    procedure CalculateEpsilon(Age : double; DC,CHURX,CHURY_present,RatioY : double; var Epsilon : double);
    procedure CalculateRatioFromEpsilon(Age : double; DC,CHURX,CHURY_present,Epsilon : double; var RatioY : double);
    procedure CalculateAFCValues(Age,DC,RateAssimilated,RateCrystallised,ProportionMelt,
      Bulk_Kd_Nd,Bulk_Kd_Sm,
      ElementYY_InitialMagma,ElementXX_InitialMagma, RatioY_InitialMagma,
      ElementYY_Assimilated, ElementXX_Assimilated,  RatioY_Assimilated : double;
      var MeltConcentrationYY : double; var MeltConcentrationXX : double; var MeltRatioY : double);
    procedure CalculateMixtureEvolutionChemistryValues(ModelID : string; RatioYA, RatioYB, ElementYYA, ElementYYB : double);
    procedure CalculateRatioAtAge(Age,DC,RatioY_present,RatioX : double; var RatioY : double);
    procedure CalculateAFCEvolutionValues(ModelID : string; Age,DC,RateAssimilated,RateCrystallised,ProportionMelt,
      Bulk_Kd_Nd,Bulk_Kd_Sm,
      ElementYY_InitialMagma,ElementXX_InitialMagma, RatioY_InitialMagma,
      ElementYY_Assimilated, ElementXX_Assimilated,  RatioY_Assimilated : double);
  public
    { Public declarations }
  end;

var
  fm_RdMx_Main: Tfm_RdMx_Main;

implementation

{$R *.fmx}

uses RdMx_variables;

procedure Tfm_RdMx_Main.bCalculateSiO2Click(Sender: TObject);
var
  JuvenileSiO2,
  EvolvedSiO2,
  AndesiticSiO2,
  JuvenileProportionSiO2 : double;
  iCode : integer;
begin
  Val(eJuvenile_SiO2.Text,JuvenileSiO2,iCode);
  Val(eEvolved_SiO2.Text,EvolvedSiO2,iCode);
  Val(eAndesitic_SiO2.Text,AndesiticSiO2,iCode);
  JuvenileProportionSiO2 := (AndesiticSiO2-EvolvedSiO2)/(JuvenileSiO2-EvolvedSiO2);
  eJuvenileProportion_SiO2.Text := FormatFloat('0.00',JuvenileProportionSiO2);
end;

procedure Tfm_RdMx_Main.FormCreate(Sender: TObject);
begin
  DMModelRatioX := 0.2136;
  DMModelRatioY := 0.513075;
  ElementXX_j := 1.0;
  ElementYY_j := 1.0;
  ProportionJuvenile := 0.4;
  ProportionMelt := 0.5;
  CHURY_present := 0.512630;
  CHURX := 0.1960;
  AtNumNd := 60.0;
  AtNumSm := 61.0;
  NormaliseValueXX := 1.0;
  NormaliseValueYY := 1.0;
  //checking Github changes
end;

procedure Tfm_RdMx_Main.mi_CalculateClick(Sender: TObject);
var
  iCode : integer;
  RatioY_j_Age1,
  RatioY_e_Age1,
  RatioY_j_Age2,
  RatioY_e_Age2 : double;
  RatioY_m_Age2, RatioY_melt_Age2 : double;
  strIsotopeSystem : string;
  DC : double;
  MixRatioY_Age1, MixElementYY_Age1,
  MixRatioY_Age2, MixElementYY_Age2,
  MeltRatioY_Age1, MeltRatioY_Age2,
  MixElementXX_Age1,
  MixElementXX_Age2 : double;
  i : integer;
  Bulk_Kd_Sm, Bulk_Kd_Nd : double;
  Epsilon_j_Age1, Epsilon_j_Age2,
  Epsilon_e_Age1, Epsilon_e_Age2,
  Epsilon_m_Age1, Epsilon_m_Age2,
  Epsilon_melt_Age2,
  MixEpsilon_Age1, MixEpsilon_Age2 : double;
  MeltEpsilon_Age1, MeltEpsilon_Age2 : double;
  CalculatedProportionJuvenile,
  RateAssimilated, RateCrystallised : double;
  RatioX_z_Age1_present, RatioY_z_Age1_present,
  RatioX_z_Age2_present, RatioY_z_Age2_present,
  RatioY_z_Age1, RatioY_z_Age2 : double;
  Epsilon_z_Age1, Epsilon_z_Age2 : double;
  tMixElementYY_Age2 : double;
begin
  for i := 0 to ChartInitial.SeriesList.Count-1 do
  begin
    ChartInitial.Series[i].Clear;
    ChartEpsilon.Series[i].Clear;
  end;
  for i := 0 to ChartChemistry.SeriesList.Count-1 do
  begin
    ChartChemistry.Series[i].Clear;
  end;
  ChartInitial.Title.Caption := '';
  ChartEpsilon.Title.Caption := '';
  ChartChemistry.Title.Caption := '';

  TabControl1.ActiveTab := ti_Graph;
  strIsotopeSystem := cbIsotopeSystem.Text;
  cbIsotopeSystemChange(Sender);
  DC := DC1;
  eKd_XX_OlDblClick(Sender);
  eKd_YY_OlDblClick(Sender);
  Val(eModelStartingAge.Text,ModelStartingAge,iCode);
  Val(eModelEndingAge.Text,ModelEndingAge,iCode);
  Val(emProportionJuvenile.Text,ProportionJuvenile,iCode);
  Val(eMassAssimilatedMassCrystallised.Text,MassAssimilatedMassCrystallised,iCode);
  Val(eProportionMeltDefined.Text,ProportionMelt,iCode);
  Val(ejElementXX.Text,ElementXX_j,iCode);
  Val(eeElementXX.Text,ElementXX_e,iCode);
  Val(ejElementYY.Text,ElementYY_j,iCode);
  Val(eeElementYY.Text,ElementYY_e,iCode);
  Val(ejRatioY.Text,RatioY_j,iCode);
  Val(eeRatioY.Text,RatioY_e,iCode);
  Val(ejRatioX.Text,RatioX_j,iCode);
  Val(eeRatioX.Text,RatioX_e,iCode);
  Val(emMixingAge1.Text,Age1,iCode);
  Val(emMixingAge2.Text,Age2,iCode);
  CalculateEpsilon(0.0,DC,CHURX,CHURY_present,RatioY_j,Epsilon_j);
  CalculateEpsilon(0.0,DC,CHURX,CHURY_present,RatioY_e,Epsilon_e);
  // Calculate Y ratios for juvenile and evolved components at Age1 and Age2
  RatioY_j_Age1 := RatioY_j - RatioX_j*(exp(DC*Age1*1.0e6)-1.0);
  RatioY_j_Age2 := RatioY_j - RatioX_j*(exp(DC*Age2*1.0e6)-1.0);
  RatioY_e_Age1 := RatioY_e - RatioX_e*(exp(DC*Age1*1.0e6)-1.0);
  RatioY_e_Age2 := RatioY_e - RatioX_e*(exp(DC*Age2*1.0e6)-1.0);
  CalculateEpsilon(Age1,DC,CHURX,CHURY_present,RatioY_j_Age1,Epsilon_j_Age1);
  CalculateEpsilon(Age2,DC,CHURX,CHURY_present,RatioY_j_Age2,Epsilon_j_Age2);
  CalculateEpsilon(Age1,DC,CHURX,CHURY_present,RatioY_e_Age1,Epsilon_e_Age1);
  CalculateEpsilon(Age2,DC,CHURX,CHURY_present,RatioY_e_Age2,Epsilon_e_Age2);
  // Calculate ElementXX concentration for mixture at Age1
  MixElementXX_Age1 := ProportionJuvenile*ElementXX_j + (1.0-ProportionJuvenile)*ElementXX_e;
  // Calculate ElementYY and Y Ratio for mixture at Age1
  CalculateMixtureValues(ProportionJuvenile, RatioY_j_Age1, RatioY_e_Age1, ElementYY_j, ElementYY_e, MixRatioY_Age1, MixElementYY_Age1);
  CalculateEpsilon(Age1,DC,CHURX,CHURY_present,MixRatioY_Age1,MixEpsilon_Age1);
  // Calculate present day X and Y ratios to use for back calculation to use at Age2
  CalculatePresentRatio(cbIsotopeSystem.Text,Age1,MixElementXX_Age1,MixElementYY_Age1,MixRatioY_Age1,DC,RatioY_m_Age1_present,RatioX_m_Age1_present);
  // Calculate mixture evolution curve values for Age1 mixture
  CalculateMixtureEvolutionValues('Mixture evolution Age1',Age1,ModelEndingAge,RatioY_m_Age1_present,RatioX_m_Age1_present,DC);
  CalculateMixtureEvolutionChemistryValues('Mixture evolution Age1',RatioY_j_Age1, RatioY_e_Age1, ElementYY_j, ElementYY_e);
  // Calculate mixture Y ratio to use in place of original evolved component
  // RatioY_m_Age2 is the ratio of the Age1 mix propagated to Age2
  RatioY_m_Age2 := RatioY_m_Age1_present - RatioX_m_Age1_present*(exp(DC*Age2*1.0e6)-1.0);
  CalculateEpsilon(Age2,DC,CHURX,CHURY_present,RatioY_m_Age2,Epsilon_m_Age2);
  // Calculate ElementXX concentration for next stage mixture at Age2
  MixElementXX_Age2 := ProportionJuvenile*ElementXX_j + (1.0-ProportionJuvenile)*MixElementXX_Age1;
  // Calculate ElementYY and Y Ratio for mixture at Age2
  CalculateMixtureValues(ProportionJuvenile, RatioY_j_Age2, RatioY_m_Age2, ElementYY_j, MixElementYY_Age1, MixRatioY_Age2, MixElementYY_Age2);
  CalculateEpsilon(Age2,DC,CHURX,CHURY_present,MixRatioY_Age2,MixEpsilon_Age2);
  // Calculate X and Y ratios at present day for back calculation of evolution curve for Age2 mixture
  CalculatePresentRatio(cbIsotopeSystem.Text,Age2,MixElementXX_Age2,MixElementYY_Age2,MixRatioY_Age2,DC,RatioY_m_Age2_present,RatioX_m_Age2_present);
  // Calculate mixture evolution curve values for Age2 mixture
  CalculateMixtureEvolutionValues('Mixture evolution Age2',Age2,ModelEndingAge,RatioY_m_Age2_present,RatioX_m_Age2_present,DC);
  //CalculateMixtureEvolutionChemistryValues('Mixture evolution Age2',RatioY_j_Age2, RatioY_m_Age2, ElementYY_j, MixElementYY_Age2);
  CalculateMixtureEvolutionChemistryValues('Mixture evolution Age2',RatioY_j_Age2, RatioY_m_Age2, ElementYY_j, MixElementYY_Age1);
  CalculateDMValues(ModelStartingAge, ModelEndingAge, DMModelRatioY, DMModelRatioX, DC);
  CalculateEvolvedValues(ModelStartingAge, ModelEndingAge, RatioY_e, RatioX_e, DC);
  CalculateBulkKD(Bulk_Kd_Sm,Bulk_Kd_Nd);

  // AFC calculations Age1
  RateAssimilated := MassAssimilatedMassCrystallised;
  RateCrystallised := 1.0;
  CalculateAFCValues(Age1,DC,RateAssimilated,RateCrystallised,ProportionMelt,
    Bulk_Kd_Nd,Bulk_Kd_Sm,
    ElementYY_j,ElementXX_j,RatioY_j_Age1,
    ElementYY_e,ElementXX_e,RatioY_e_Age1,
    MeltElementYY_Age1,MeltElementXX_Age1,MeltRatioY_Age1);
  CalculateEpsilon(Age1,DC,CHURX,CHURY_present,MeltRatioY_Age1,MeltEpsilon_Age1);
  CalculatePresentRatio(cbIsotopeSystem.Text,Age1,MeltElementXX_Age1,MeltElementYY_Age1,MeltRatioY_Age1,DC,RatioY_melt_Age1_present,RatioX_melt_Age1_present);
  CalculateRatioAtAge(Age2,DC,RatioY_melt_Age1_present,RatioX_melt_Age1_present,RatioY_melt_Age2);
  CalculateEpsilon(Age2,DC,CHURX,CHURY_present,RatioY_melt_Age2,Epsilon_melt_Age2);
  // Calculate AFC melt evolution curve values for Age1 AFC melt
  // first for Age vs Ratio and Epsilon diagrams
  CalculateMixtureEvolutionValues('Melt evolution Age1',Age1,ModelEndingAge,RatioY_melt_Age1_present,RatioX_melt_Age1_present,DC);
  // then for chemistry diagram
  CalculateAFCEvolutionValues('Melt evolution Age1',Age1,DC,RateAssimilated,RateCrystallised,ProportionMelt,
    Bulk_Kd_Nd,Bulk_Kd_Sm,
    ElementYY_j,ElementXX_j,RatioY_j_Age1,
    ElementYY_e,ElementXX_e,RatioY_e_Age1);

  // AFC calculations Age2
  CalculateAFCValues(Age2,DC,RateAssimilated,RateCrystallised,ProportionMelt,
    Bulk_Kd_Nd,Bulk_Kd_Sm,
    ElementYY_j,ElementXX_j,RatioY_j_Age2,
    MeltElementYY_Age1,MeltElementXX_Age1,RatioY_melt_Age2,
    MeltElementYY_Age2,MeltElementXX_Age2,MeltRatioY_Age2);
  CalculateEpsilon(Age2,DC,CHURX,CHURY_present,MeltRatioY_Age2,MeltEpsilon_Age2);
  CalculatePresentRatio(cbIsotopeSystem.Text,Age2,MeltElementXX_Age2,MeltElementYY_Age2,MeltRatioY_Age2,DC,RatioY_melt_Age2_present,RatioX_melt_Age2_present);
  // Calculate AFC melt evolution curve values for Age2 AFC melt
  // first for Age vs Ratio and Epsilon diagrams
  CalculateMixtureEvolutionValues('Melt evolution Age2',Age2,ModelEndingAge,RatioY_melt_Age2_present,RatioX_melt_Age2_present,DC);
  // then for chemistry diagram
  CalculateAFCEvolutionValues('Melt evolution Age2',Age2,DC,RateAssimilated,RateCrystallised,ProportionMelt,
    Bulk_Kd_Nd,Bulk_Kd_Sm,
    ElementYY_j,ElementXX_j,RatioY_j_Age2,
    MeltElementYY_Age1,MeltElementXX_Age1,RatioY_melt_Age2);
  if (cbIsotopeSystem.Text = 'Lu-Hf') then
  begin
    // Zircon in mixture at Age1
    CalculatePresentRatio(cbIsotopeSystem.Text,Age1,0.0,MixElementYY_Age1,MixRatioY_Age1,DC,RatioY_z_Age1_present,RatioX_z_Age1_present);
    CalculateMixtureEvolutionValues('Zircon evolution Age1',Age1,ModelEndingAge,RatioY_z_Age1_present,RatioX_z_Age1_present,DC);
    // Zircon in mixture at Age2
    CalculatePresentRatio(cbIsotopeSystem.Text,Age2,0.0,MixElementYY_Age2,MixRatioY_Age2,DC,RatioY_z_Age2_present,RatioX_z_Age2_present);
    CalculateMixtureEvolutionValues('Zircon evolution Age2',Age2,ModelEndingAge,RatioY_z_Age2_present,RatioX_z_Age2_present,DC);

    // Zircon in AFC melt at Age1
    CalculatePresentRatio(cbIsotopeSystem.Text,Age1,0.0,MixElementYY_Age1,MeltRatioY_Age1,DC,RatioY_z_Age1_present,RatioX_z_Age1_present);
    CalculateMixtureEvolutionValues('Zircon melt evolution Age1',Age1,ModelEndingAge,RatioY_z_Age1_present,RatioX_z_Age1_present,DC);
    // Zircon in AFC melt at Age2
    CalculatePresentRatio(cbIsotopeSystem.Text,Age2,0.0,MixElementYY_Age2,MeltRatioY_Age2,DC,RatioY_z_Age2_present,RatioX_z_Age2_present);
    CalculateMixtureEvolutionValues('Zircon melt evolution Age2',Age2,ModelEndingAge,RatioY_z_Age2_present,RatioX_z_Age2_present,DC);
  end;
  UpdateChartInitial('Juvenile',Age1,RatioY_j_Age1);
  UpdateChartInitial('Juvenile',Age2,RatioY_j_Age2);
  UpdateChartEpsilon('Juvenile',Age1,Epsilon_j_Age1);
  UpdateChartEpsilon('Juvenile',Age2,Epsilon_j_Age2);

  UpdateChartChemistry('Juvenile',ElementYY_j,RatioY_j_Age1);
  UpdateChartChemistry('Juvenile',ElementYY_j,RatioY_j_Age2);

  UpdateChartInitial('Evolved',Age1,RatioY_e_Age1);
  UpdateChartEpsilon('Evolved',Age1,Epsilon_e_Age1);
  UpdateChartChemistry('Evolved',ElementYY_e,RatioY_e_Age1);
  UpdateChartInitial('Mixture',Age1,MixRatioY_Age1);
  UpdateChartInitial('Mixture',Age2,RatioY_m_Age2);
  UpdateChartInitial('Mixture',Age2,MixRatioY_Age2);
  UpdateChartEpsilon('Mixture',Age1,MixEpsilon_Age1);
  UpdateChartEpsilon('Mixture',Age2,Epsilon_m_Age2);
  UpdateChartEpsilon('Mixture',Age2,MixEpsilon_Age2);

  UpdateChartChemistry('Mixture',MixElementYY_Age1,MixRatioY_Age1);
  UpdateChartChemistry('Mixture',MixElementYY_Age1,RatioY_m_Age2);
  UpdateChartChemistry('Mixture',MixElementYY_Age2,MixRatioY_Age2);

  UpdateChartInitial('AFC',Age1,MeltRatioY_Age1);
  UpdateChartEpsilon('AFC',Age1,MeltEpsilon_Age1);
  UpdateChartInitial('AFC',Age2,RatioY_melt_Age2);
  UpdateChartInitial('AFC',Age2,MeltRatioY_Age2);
  UpdateChartEpsilon('AFC',Age2,Epsilon_melt_Age2);
  UpdateChartEpsilon('AFC',Age2,MeltEpsilon_Age2);
  UpdateChartChemistry('AFC',MeltElementYY_Age1,MeltRatioY_Age1);
  UpdateChartChemistry('AFC',MeltElementYY_Age2,MeltRatioY_Age2);

  // Update text fields
  CalculatedProportionJuvenile := 1.0-((1.0-ProportionMelt)*MassAssimilatedMassCrystallised);
  eCalculatedProportionJuvenile.Text := FormatFloat('#0.000',CalculatedProportionJuvenile);
  eMassAssimilatedMassCrystallised.Text := FormatFloat('#0.000',MassAssimilatedMassCrystallised);
  eProportionMeltDefined.Text := FormatFloat('#0.000',ProportionMelt);
  emProportionJuvenile.Text := FormatFloat('#0.000',ProportionJuvenile);
  ejEpsilon.Text := FormatFloat('#0.00',Epsilon_j);
  eeEpsilon.Text := FormatFloat('#0.00',Epsilon_e);
  eRatioY_j_Age1.Text := FormatFloat('0.000000',RatioY_j_Age1);
  eRatioY_e_Age1.Text := FormatFloat('0.000000',RatioY_e_Age1);
  eRatioY_m_Age1.Text := FormatFloat('0.000000',MixRatioY_Age1);
  eRatioY_melt_Age1.Text := FormatFloat('0.000000',MeltRatioY_Age1);
  eRatioX_j_Age1.Text := FormatFloat('0.0000',RatioX_j);
  eRatioX_e_Age1.Text := FormatFloat('0.0000',RatioX_e);
  eRatioX_m_Age1.Text := FormatFloat('0.0000',RatioX_m_Age1_present);
  eMix1X_Age2.Text := FormatFloat('0.0000',RatioX_m_Age2_present);
  eMix1Y_Age2.Text := FormatFloat('0.000000',RatioY_m_Age2);
  eMix1XX.Text := FormatFloat('#0.000',MixElementXX_Age1);
  eMix1YY.Text := FormatFloat('#0.000',MixElementYY_Age1);
  eRatioY_j_Age2.Text := FormatFloat('0.000000',RatioY_j_Age2);
  eRatioY_e_Age2.Text := FormatFloat('0.000000',RatioY_e_Age2);
  eMixRatioY_m_Age2.Text := FormatFloat('0.000000',MixRatioY_Age2);
  eRatioY_m_Age2.Text := FormatFloat('0.000000',RatioY_m_Age2);
  eRatioY_melt_Age2.Text := FormatFloat('0.000000',MeltRatioY_Age2);
  eRatioX_j_Age2.Text := FormatFloat('0.0000',RatioX_j);
  eRatioX_e_Age2.Text := FormatFloat('0.0000',RatioX_e);
  eRatioX_m_Age2.Text := FormatFloat('0.0000',RatioX_m_Age2_present);
  eProportion_Juvenile_Chart.Text := FormatFloat('0.00',ProportionJuvenile);
  eProportionMelt.Text := FormatFloat('0.00',ProportionMelt);
  eBulk_Kd_Sm.Text := FormatFloat('#0.000',Bulk_Kd_Sm);
  eBulk_Kd_Nd.Text := FormatFloat('#0.000',Bulk_Kd_Nd);
  eMix_Sm_Age1.Text := FormatFloat('#0.000',MixElementXX_Age1);
  eMelt_Sm_Age1.Text := FormatFloat('#0.000',MeltElementXX_Age1);
  eMix_Nd_Age1.Text := FormatFloat('#0.000',MixElementYY_Age1);
  eMelt_Nd_Age1.Text := FormatFloat('#0.000',MeltElementYY_Age1);
  eMelt_SmNd_Age1.Text := FormatFloat('#0.0000',MeltElementXX_Age1/MeltElementYY_Age1);
  eMix_Sm_Age2.Text := FormatFloat('#0.000',MixElementXX_Age2);
  eMelt_Sm_Age2.Text := FormatFloat('#0.000',MeltElementXX_Age2);
  eMix_Nd_Age2.Text := FormatFloat('#0.000',MixElementYY_Age2);
  eMelt_Nd_Age2.Text := FormatFloat('#0.000',MeltElementYY_Age2);
  eMelt_SmNd_Age2.Text := FormatFloat('#0.0000',MeltElementXX_Age2/MeltElementYY_Age2);
  eProportionMeltAFC.Text := FormatFloat('#0.00',ProportionMelt);
  eAFCMagma_Sm_Age1.Text := FormatFloat('#0.000',ElementXX_j);
  eAFCMagma_Nd_Age1.Text := FormatFloat('#0.000',ElementYY_j);
  eAFCAssimilant_Sm_Age1.Text := FormatFloat('#0.000',ElementXX_e);
  eAFCAssimilant_Nd_Age1.Text := FormatFloat('#0.000',ElementYY_e);
  eAFCMelt_Sm_Age1.Text := FormatFloat('#0.000',MeltElementXX_Age1);
  eAFCMelt_Nd_Age1.Text := FormatFloat('#0.000',MeltElementYY_Age1);
  eAFCMelt_SmNd_Age1.Text := FormatFloat('#0.0000',MeltElementXX_Age1/MeltElementYY_Age1);
  eAFCMagma_Sm_Age2.Text := FormatFloat('#0.000',ElementXX_j);
  eAFCMagma_Nd_Age2.Text := FormatFloat('#0.000',ElementYY_j);
  eAFCAssimilant_Sm_Age2.Text := FormatFloat('#0.000',MeltElementXX_Age1);
  eAFCAssimilant_Nd_Age2.Text := FormatFloat('#0.000',MeltElementYY_Age1);
  eAFCMelt_Sm_Age2.Text := FormatFloat('#0.000',MeltElementXX_Age2);
  eAFCMelt_Nd_Age2.Text := FormatFloat('#0.000',MeltElementYY_Age2);
  eAFCMelt_SmNd_Age2.Text := FormatFloat('#0.0000',MeltElementXX_Age2/MeltElementYY_Age2);
end;

procedure Tfm_RdMx_Main.UpdateChartInitial(SeriesID : string; Age, Ratio : double);
var
  SeriesNum : integer;
begin
  if (SeriesID = 'Juvenile') then SeriesNum := 0;
  if (SeriesID = 'Evolved') then SeriesNum := 1;
  if (SeriesID = 'Mixture') then SeriesNum := 2;
  if (SeriesID = 'AFC') then SeriesNum := 3;
  if (SeriesID = 'Juvenile evolution') then SeriesNum := 4;
  if (SeriesID = 'Evolved evolution') then SeriesNum := 5;
  if (SeriesID = 'Mixture evolution Age1') then SeriesNum := 6;
  if (SeriesID = 'Mixture evolution Age2') then SeriesNum := 7;
  if (SeriesID = 'Melt evolution Age1') then SeriesNum := 8;
  if (SeriesID = 'Melt evolution Age2') then SeriesNum := 9;
  if (SeriesID = 'Zircon evolution Age1') then SeriesNum := 10;
  if (SeriesID = 'Zircon evolution Age2') then SeriesNum := 11;
  if (SeriesID = 'Zircon melt evolution Age1') then SeriesNum := 12;
  if (SeriesID = 'Zircon melt evolution Age2') then SeriesNum := 13;
  //ShowMessage('Updating '+SeriesID);
  ChartInitial.SeriesList[SeriesNum].AddXY(Age,Ratio);
end;

procedure Tfm_RdMx_Main.UpdateChartEpsilon(SeriesID : string; Age, Epsilon : double);
var
  SeriesNum : integer;
begin
  if (SeriesID = 'Juvenile') then SeriesNum := 0;
  if (SeriesID = 'Evolved') then SeriesNum := 1;
  if (SeriesID = 'Mixture') then SeriesNum := 2;
  if (SeriesID = 'AFC') then SeriesNum := 3;
  if (SeriesID = 'Juvenile evolution') then SeriesNum := 4;
  if (SeriesID = 'Evolved evolution') then SeriesNum := 5;
  if (SeriesID = 'Mixture evolution Age1') then SeriesNum := 6;
  if (SeriesID = 'Mixture evolution Age2') then SeriesNum := 7;
  if (SeriesID = 'Melt evolution Age1') then SeriesNum := 8;
  if (SeriesID = 'Melt evolution Age2') then SeriesNum := 9;
  if (SeriesID = 'Zircon evolution Age1') then SeriesNum := 10;
  if (SeriesID = 'Zircon evolution Age2') then SeriesNum := 11;
  if (SeriesID = 'Zircon melt evolution Age1') then SeriesNum := 12;
  if (SeriesID = 'Zircon melt evolution Age2') then SeriesNum := 13;
  //ShowMessage('Updating '+SeriesID);
  ChartEpsilon.SeriesList[SeriesNum].AddXY(Age,Epsilon);
end;

procedure Tfm_RdMx_Main.UpdateChartChemistry(SeriesID : string; X, Y : double);
var
  SeriesNum : integer;
begin
  if (SeriesID = 'Juvenile') then SeriesNum := 0;
  if (SeriesID = 'Evolved') then SeriesNum := 1;
  if (SeriesID = 'Mixture') then SeriesNum := 2;
  if (SeriesID = 'AFC') then SeriesNum := 3;
  if (SeriesID = 'Mixture evolution Age1') then SeriesNum := 4;
  if (SeriesID = 'Mixture evolution Age2') then SeriesNum := 5;
  if (SeriesID = 'Melt evolution Age1') then SeriesNum := 6;
  if (SeriesID = 'Melt evolution Age2') then SeriesNum := 7;
  ChartChemistry.SeriesList[SeriesNum].AddXY(X,Y);
end;

procedure Tfm_RdMx_Main.CalculateDMValues(ModelStartingAge, ModelEndingAge : double; ModelRatioY, ModelRatioX, DC : double);
var
  tmpAge, tmpRatio, tmpEpsilon : double;
begin
  //Depleted mantle reservoir
  tmpAge := ModelEndingAge;
  repeat
    tmpRatio := ModelRatioY - ModelRatioX * (exp(DC*tmpAge*1.0e6)-1.0);
    UpdateChartInitial('Juvenile evolution',tmpAge,tmpRatio);
    CalculateEpsilon(tmpAge,DC,CHURX,CHURY_present,tmpRatio,tmpEpsilon);
    UpdateChartEpsilon('Juvenile evolution',tmpAge,tmpEpsilon);
    tmpAge := tmpAge + 5.0;
  until (tmpAge > ModelStartingAge);
end;

procedure Tfm_RdMx_Main.CalculateEvolvedValues(ModelStartingAge, ModelEndingAge : double; ModelRatioY, ModelRatioX, DC : double);
var
  tmpAge, tmpRatio, tmpEpsilon : double;
begin
  //Evolved reservoir
  tmpAge := ModelEndingAge;
  repeat
    tmpRatio := ModelRatioY - ModelRatioX * (exp(DC*tmpAge*1.0e6)-1.0);
    UpdateChartInitial('Evolved evolution',tmpAge,tmpRatio);
    CalculateEpsilon(tmpAge,DC,CHURX,CHURY_present,tmpRatio,tmpEpsilon);
    UpdateChartEpsilon('Evolved evolution',tmpAge,tmpEpsilon);
    tmpAge := tmpAge + 5.0;
  until (tmpAge > ModelStartingAge);
end;

procedure Tfm_RdMx_Main.CalculateMixtureEvolutionValues(ModelID : string; StartingAge, ModelEndingAge : double; ModelRatioY, ModelRatioX, DC : double);
var
  tmpAge, tmpRatio, tmpEpsilon : double;
begin
  //Mixture evolution curve
  tmpAge := ModelEndingAge;
  repeat
    tmpRatio := ModelRatioY - ModelRatioX * (exp(DC*tmpAge*1.0e6)-1.0);
    CalculateEpsilon(tmpAge,DC,CHURX,CHURY_present,tmpRatio,tmpEpsilon);
    if (ModelID = 'Mixture evolution Age1') then
    begin
      UpdateChartInitial('Mixture evolution Age1',tmpAge,tmpRatio);
      UpdateChartEpsilon('Mixture evolution Age1',tmpAge,tmpEpsilon);
    end;
    if (ModelID = 'Mixture evolution Age2') then
    begin
      UpdateChartInitial('Mixture evolution Age2',tmpAge,tmpRatio);
      UpdateChartEpsilon('Mixture evolution Age2',tmpAge,tmpEpsilon);
    end;
    if (ModelID = 'Melt evolution Age1') then
    begin
      UpdateChartInitial('Melt evolution Age1',tmpAge,tmpRatio);
      UpdateChartEpsilon('Melt evolution Age1',tmpAge,tmpEpsilon);
    end;
    if (ModelID = 'Melt evolution Age2') then
    begin
      UpdateChartInitial('Melt evolution Age2',tmpAge,tmpRatio);
      UpdateChartEpsilon('Melt evolution Age2',tmpAge,tmpEpsilon);
    end;
    if (ModelID = 'Zircon evolution Age1') then
    begin
      UpdateChartInitial('Zircon evolution Age1',tmpAge,tmpRatio);
      UpdateChartEpsilon('Zircon evolution Age1',tmpAge,tmpEpsilon);
    end;
    if (ModelID = 'Zircon evolution Age2') then
    begin
      UpdateChartInitial('Zircon evolution Age2',tmpAge,tmpRatio);
      UpdateChartEpsilon('Zircon evolution Age2',tmpAge,tmpEpsilon);
    end;
    if (ModelID = 'Zircon melt evolution Age1') then
    begin
      UpdateChartInitial('Zircon melt evolution Age1',tmpAge,tmpRatio);
      UpdateChartEpsilon('Zircon melt evolution Age1',tmpAge,tmpEpsilon);
    end;
    if (ModelID = 'Zircon melt evolution Age2') then
    begin
      UpdateChartInitial('Zircon melt evolution Age2',tmpAge,tmpRatio);
      UpdateChartEpsilon('Zircon melt evolution Age2',tmpAge,tmpEpsilon);
    end;
    tmpAge := tmpAge + 5.0;
  until (tmpAge > StartingAge);
end;

procedure Tfm_RdMx_Main.CalculateCHURValues(Age : double; DC, RatioX, RatioY : double; var CHURY : double);
var
  tmpAge, tmpRatio : double;
begin
  CHURY := RatioY - RatioX*(exp(DC*Age*1.0e6) - 1.0);
end;

procedure Tfm_RdMx_Main.CalculateMixtureValues(ProportionA,RatioYA, RatioYB, ElementYYA, ElementYYB : double; var MixRatio : double; var MixElement : double);
var
  ProportionB : double;
  tmpMixVarA, tmpMixVarB : double;
  tmpMixElement : double;
begin
  //ShowMessage('Proportion juvenile = '+FormatFloat('0.00',ProportionA));
  //ShowMessage('Juvenile concentration = '+FormatFloat('000.000000',ElementYYA));
  //ShowMessage('Evolved concentration = '+FormatFloat('000.000000',ElementYYB));
  //ShowMessage('Juvenile ratio = '+FormatFloat('000.000000',RatioYA));
  //ShowMessage('Evolved ratio = '+FormatFloat('000.000000',RatioYB));
  tmpMixVarA := (ElementYYA*ElementYYB*(RatioYB-RatioYA))/(ElementYYA-ElementYYB);
  tmpMixVarB := (ElementYYA*RatioYA - ElementYYB*RatioYB)/(ElementYYA-ElementYYB);
  //ShowMessage('factor a = '+FormatFloat('000.00000',tmpMixVarA));
  //ShowMessage('factor b = '+FormatFloat('000.00000',tmpMixVarB));
  ProportionB := 1.0 - ProportionA;
  //tmpMixElement := ProportionJuvenile*ElementXX_j + (1.0-ProportionJuvenile)*ElementXX_e;
  MixElement := ProportionA*ElementYYA + ProportionB*ElementYYB;
  MixRatio := tmpMixVarA/MixElement + tmpMixVarB;
  //ShowMessage('Mixture concentration = '+FormatFloat('000.000',MixElement));
end;

procedure Tfm_RdMx_Main.CalculateMixtureEvolutionChemistryValues(ModelID : string; RatioYA, RatioYB, ElementYYA, ElementYYB : double);
var
  ProportionA,ProportionB : double;
  tmpMixVarA, tmpMixVarB : double;
  tmpMixElement : double;
  MixElement, MixRatio : double;
begin
  //ShowMessage('Juvenile concentration = '+FormatFloat('000.000000',ElementYYA));
  //ShowMessage('Evolved concentration = '+FormatFloat('000.000000',ElementYYB));
  //ShowMessage('Juvenile ratio = '+FormatFloat('000.000000',RatioYA));
  //ShowMessage('Evolved ratio = '+FormatFloat('000.000000',RatioYB));
  tmpMixVarA := (ElementYYA*ElementYYB*(RatioYB-RatioYA))/(ElementYYA-ElementYYB);
  tmpMixVarB := (ElementYYA*RatioYA - ElementYYB*RatioYB)/(ElementYYA-ElementYYB);
  //ShowMessage('factor a = '+FormatFloat('000.00000',tmpMixVarA));
  //ShowMessage('factor b = '+FormatFloat('000.00000',tmpMixVarB));
  ProportionA := 0.01;
  ProportionB := 1.0 - ProportionA;
  MixElement := ProportionA*ElementYYA + ProportionB*ElementYYB;
  MixRatio := tmpMixVarA/MixElement + tmpMixVarB;
  //ShowMessage('1 - Proportion juvenile = '+FormatFloat('0.00',ProportionA));
  //ShowMessage('1 - Mixture concentration = '+FormatFloat('000.000',MixElement)+' Mixture ratio = '+FormatFloat('##0.000000',MixRatio));
  repeat
    ProportionB := 1.0 - ProportionA;
    //tmpMixElement := ProportionJuvenile*ElementXX_j + (1.0-ProportionJuvenile)*ElementXX_e;
    MixElement := ProportionA*ElementYYA + ProportionB*ElementYYB;
    MixRatio := tmpMixVarA/MixElement + tmpMixVarB;
    UpdateChartChemistry(ModelID,MixElement,MixRatio);
    ProportionA := ProportionA + 0.01;
  until (ProportionA > 0.99);
  //ShowMessage('2 - Proportion juvenile = '+FormatFloat('0.00',ProportionA));
  //ShowMessage('2 - Mixture concentration = '+FormatFloat('000.000',MixElement)+' Mixture ratio = '+FormatFloat('##0.000000',MixRatio));
end;

procedure Tfm_RdMx_Main.FormShow(Sender: TObject);
begin
  TabControl1.ActiveTab := ti_Control;
  eWtOlChange(Sender);
  eKd_XX_OlChange(Sender);
  eKd_YY_OlChange(Sender);
end;

procedure Tfm_RdMx_Main.mi_File_ExitClick(Sender: TObject);
begin
  Close;
end;

procedure Tfm_RdMx_Main.CalculatePresentRatio(IsotopeSystem : string; Age : double; ElementXX, ElementYY, RatioY, DC : double; var PresentRatioY : double; var PresentRatioX : double);
var
  RatioX_present : double;
  ConversionFactorY, ConversionFactorX : double;
begin
  if (IsotopeSystem = 'Sm-Nd') then
  begin
    ConversionFactorY := 0.531497;
    ConversionFactorX := 0.14521;
  end;
  if (IsotopeSystem = 'Lu-Hf') then
  begin
    ConversionFactorY := 0.134721;
    ConversionFactorX := 0.026044;
  end;
  // Iterate 4 times to get close to correct value
  RatioX_present := (ElementXX/ElementYY)*(ConversionFactorY+ConversionFactorX*RatioY);
  PresentRatioY := RatioY + RatioX_Present*(exp(DC*Age*1.0e6)-1.0);
  RatioX_present := (ElementXX/ElementYY)*(ConversionFactorY+ConversionFactorX*PresentRatioY);
  PresentRatioY := RatioY + RatioX_Present*(exp(DC*Age*1.0e6)-1.0);
  RatioX_present := (ElementXX/ElementYY)*(ConversionFactorY+ConversionFactorX*PresentRatioY);
  PresentRatioY := RatioY + RatioX_Present*(exp(DC*Age*1.0e6)-1.0);
  RatioX_present := (ElementXX/ElementYY)*(ConversionFactorY+ConversionFactorX*PresentRatioY);
  PresentRatioY := RatioY + RatioX_Present*(exp(DC*Age*1.0e6)-1.0);
  RatioX_present := (ElementXX/ElementYY)*(ConversionFactorY+ConversionFactorX*PresentRatioY);
  PresentRatioY := RatioY + RatioX_Present*(exp(DC*Age*1.0e6)-1.0);
  PresentRatioX := (ElementXX/ElementYY)*(ConversionFactorY+ConversionFactorX*PresentRatioY);
end;

procedure Tfm_RdMx_Main.CalculateBulkKD(var Bulk_Kd_Sm : double; var Bulk_Kd_Nd : double);
var
  WtOl, WtOpx, WtCpx, WtHbl,
  WtGt, WtPg, WtMt, WtTit,
  WtSum : double;
  KdOl, KdOpx, KdCpx, KdHbl,
  KdGt, KdPg, KdMt, KdTit,
  KdBulk : double;
  iCode : integer;
begin
  Val(eWtOl.Text,WtOl,iCode);
  Val(eWtOpx.Text,WtOpx,iCode);
  Val(eWtCpx.Text,WtCpx,iCode);
  Val(eWtHbl.Text,WtHbl,iCode);
  Val(eWtGt.Text,WtGt,iCode);
  Val(eWtPg.Text,WtPg,iCode);
  Val(eWtMt.Text,WtMt,iCode);
  Val(eWtTit.Text,WtTit,iCode);
  WtSum := WtOl + WtOpx + WtCpx + WtHbl + WtGt + WtPg + WtMt + WtTit;
  Val(eKd_YY_Ol.Text,KdOl,iCode);
  Val(eKd_YY_Opx.Text,KdOpx,iCode);
  Val(eKd_YY_Cpx.Text,KdCpx,iCode);
  Val(eKd_YY_Hbl.Text,KdHbl,iCode);
  Val(eKd_YY_Gt.Text,KdGt,iCode);
  Val(eKd_YY_Pg.Text,KdPg,iCode);
  Val(eKd_YY_Mt.Text,KdMt,iCode);
  Val(eKd_YY_Tit.Text,KdTit,iCode);
  KdBulk := WtOl*KdOl + WtOpx*KdOpx + WtCpx*KdCpx + WtHbl*KdHbl + WtGt*KdGt + WtPg*KdPg + WtMt*KdMt + WtTit*KdTit;
  eKd_YY_Ol.Text := FormatFloat('#0.00',KdOl);
  eKd_YY_Opx.Text := FormatFloat('#0.00',KdOpx);
  eKd_YY_Cpx.Text := FormatFloat('#0.00',KdCpx);
  eKd_YY_Hbl.Text := FormatFloat('#0.00',KdHbl);
  eKd_YY_Gt.Text := FormatFloat('#0.00',KdGt);
  eKd_YY_Pg.Text := FormatFloat('#0.00',KdPg);
  eKd_YY_Mt.Text := FormatFloat('#0.00',KdMt);
  eKd_YY_Tit.Text := FormatFloat('#0.00',KdTit);
  eKd_YY_Bulk.Text := FormatFloat('#0.00',KdBulk);
  Bulk_Kd_Nd := KdBulk;
  Val(eKd_XX_Ol.Text,KdOl,iCode);
  Val(eKd_XX_Opx.Text,KdOpx,iCode);
  Val(eKd_XX_Cpx.Text,KdCpx,iCode);
  Val(eKd_XX_Hbl.Text,KdHbl,iCode);
  Val(eKd_XX_Gt.Text,KdGt,iCode);
  Val(eKd_XX_Pg.Text,KdPg,iCode);
  Val(eKd_XX_Mt.Text,KdMt,iCode);
  Val(eKd_XX_Tit.Text,KdTit,iCode);
  KdBulk := WtOl*KdOl + WtOpx*KdOpx + WtCpx*KdCpx + WtHbl*KdHbl + WtGt*KdGt + WtPg*KdPg + WtMt*KdMt + WtTit*KdTit;
  eKd_XX_Ol.Text := FormatFloat('#0.00',KdOl);
  eKd_XX_Opx.Text := FormatFloat('#0.00',KdOpx);
  eKd_XX_Cpx.Text := FormatFloat('#0.00',KdCpx);
  eKd_XX_Hbl.Text := FormatFloat('#0.00',KdHbl);
  eKd_XX_Gt.Text := FormatFloat('#0.00',KdGt);
  eKd_XX_Pg.Text := FormatFloat('#0.00',KdPg);
  eKd_XX_Mt.Text := FormatFloat('#0.00',KdMt);
  eKd_XX_Tit.Text := FormatFloat('#0.00',KdTit);
  eKd_XX_Bulk.Text := FormatFloat('#0.00',KdBulk);
  Bulk_Kd_Sm := KdBulk;
end;

procedure Tfm_RdMx_Main.CalculatePartialMeltValues(Age : double; ProportionMelt : double; Bulk_Kd_Sm, Bulk_Kd_Nd : double; ElementXX, ElementYY : double; var MeltElementXX : double; var MeltElementYY : double);
var
  WtOpx, WtCpx, WtHbl, WtPg, WtGr, WtMt, WtTit : double;
  KdOpx_Sm, KdCpx_Sm, KdHbl_Sm, KdPg_Sm, KdGr_Sm, KdMt_Sm, KdTit_Sm : double;
  KdOpx_Nd, KdCpx_Nd, KdHbl_Nd, KdPg_Nd, KdGr_Nd, KdMt_Nd, KdTit_Nd : double;
begin
  MeltElementXX := ElementXX / (Bulk_Kd_Sm + ProportionMelt*(1.0-Bulk_Kd_Sm));
  MeltElementYY := ElementYY / (Bulk_Kd_Nd + ProportionMelt*(1.0-Bulk_Kd_Nd));
end;

procedure Tfm_RdMx_Main.CalculateEpsilon(Age : double; DC,CHURX,CHURY_present,RatioY : double; var Epsilon : double);
var
  tmpCHURY : double;
begin
  CalculateCHURValues(Age,DC,CHURX,CHURY_present,tmpCHURY);
  Epsilon := (RatioY / tmpCHURY - 1.0) * 1.0e4;
end;

procedure Tfm_RdMx_Main.CalculateRatioFromEpsilon(Age : double; DC,CHURX,CHURY_present,Epsilon : double; var RatioY : double);
var
  tmpCHURY : double;
begin
  CalculateCHURValues(Age,DC,CHURX,CHURY_present,tmpCHURY);
  RatioY := ((Epsilon/1.0e4) + 1.0)*tmpCHURY;
end;

procedure Tfm_RdMx_Main.CalculateAFCValues(Age,DC,RateAssimilated,RateCrystallised,ProportionMelt,
    Bulk_Kd_Nd,Bulk_Kd_Sm,
    ElementYY_InitialMagma,ElementXX_InitialMagma, RatioY_InitialMagma,
    ElementYY_Assimilated, ElementXX_Assimilated,  RatioY_Assimilated : double;
    var MeltConcentrationYY : double; var MeltConcentrationXX : double; var MeltRatioY : double);
var
  RatioAssimilationCrystallisation, z, r : double;
  tmpValue1, tmpValue2, tmpValue3,
  tmpValue4, tmpValue5, tmpValue6,
  tmpValue7, tmpValue8 : double;
  Element_Melt : double;
  Epsilon_Assimilated,
  Epsilon_Melt, Epsilon_InitialMagma : double;
begin
  CalculateEpsilon(Age,DC,CHURX,CHURY_present,RatioY_InitialMagma,Epsilon_InitialMagma);
  CalculateEpsilon(Age,DC,CHURX,CHURY_present,RatioY_Assimilated, Epsilon_Assimilated);
  RatioAssimilationCrystallisation := RateAssimilated / RateCrystallised;
  r := RatioAssimilationCrystallisation;
  // Calculate for RatioY and Epsilon
  z := (r + Bulk_Kd_Nd - 1.0)/(r - 1.0);
  if (RatioAssimilationCrystallisation = 1.0) then
  begin
    //
  end else
  begin
    tmpValue1 := Power(ProportionMelt,-1.0*z);
    tmpValue2 := (r/(r+Bulk_Kd_Nd-1.0))* ElementYY_Assimilated/ElementYY_InitialMagma;
    tmpValue3 := 1.0-tmpValue1;
    MeltConcentrationYY := ElementYY_InitialMagma * (tmpValue1+tmpValue2*tmpValue3);
    tmpValue4 := r/(r-1.0)*ElementYY_Assimilated/z;
    tmpValue5 := tmpValue3;
    tmpValue6 := ElementYY_InitialMagma*tmpValue1;
    tmpValue7 := tmpValue4*tmpValue5*Epsilon_Assimilated+tmpValue6*Epsilon_InitialMagma;
    tmpValue8 := tmpValue4*tmpValue5+ElementYY_InitialMagma*tmpValue1;
    Epsilon_Melt := tmpValue7/tmpValue8;;
  end;
  CalculateRatioFromEpsilon(Age,DC,CHURX,CHURY_present,Epsilon_Melt,MeltRatioY);
  // Calculate for RatioX
  z := (r + Bulk_Kd_Sm - 1.0)/(r - 1.0);
  if (RatioAssimilationCrystallisation = 1.0) then
  begin
    //
  end else
  begin
    tmpValue1 := Power(ProportionMelt,-1.0*z);
    tmpValue2 := (r/(r+Bulk_Kd_Sm-1.0))* ElementXX_Assimilated/ElementXX_InitialMagma;
    tmpValue3 := 1.0-tmpValue1;
    MeltConcentrationXX := ElementXX_InitialMagma * (tmpValue1+tmpValue2*tmpValue3);
  end;
end;

procedure Tfm_RdMx_Main.CalculateAFCEvolutionValues(ModelID : string; Age,DC,RateAssimilated,RateCrystallised,ProportionMelt,
    Bulk_Kd_Nd,Bulk_Kd_Sm,
    ElementYY_InitialMagma,ElementXX_InitialMagma, RatioY_InitialMagma,
    ElementYY_Assimilated, ElementXX_Assimilated,  RatioY_Assimilated : double);
var
  RatioAssimilationCrystallisation, z, r : double;
  tmpValue1, tmpValue2, tmpValue3,
  tmpValue4, tmpValue5, tmpValue6,
  tmpValue7, tmpValue8 : double;
  Element_Melt : double;
  Epsilon_Assimilated,
  Epsilon_Melt, Epsilon_InitialMagma : double;
  MeltConcentrationYY, MeltConcentrationXX,MeltRatioY : double;
  tmpProportionMelt : double;
begin
  CalculateEpsilon(Age,DC,CHURX,CHURY_present,RatioY_InitialMagma,Epsilon_InitialMagma);
  CalculateEpsilon(Age,DC,CHURX,CHURY_present,RatioY_Assimilated, Epsilon_Assimilated);
  RatioAssimilationCrystallisation := RateAssimilated / RateCrystallised;
  r := RatioAssimilationCrystallisation;
  // Calculate for RatioY and Epsilon
  z := (r + Bulk_Kd_Nd - 1.0)/(r - 1.0);
  tmpProportionMelt := 0.01;
  repeat
    if (RatioAssimilationCrystallisation = 1.0) then
    begin
      //
    end else
    begin
      tmpValue1 := Power(tmpProportionMelt,-1.0*z);
      tmpValue2 := (r/(r+Bulk_Kd_Nd-1.0))* ElementYY_Assimilated/ElementYY_InitialMagma;
      tmpValue3 := 1.0-tmpValue1;
      MeltConcentrationYY := ElementYY_InitialMagma * (tmpValue1+tmpValue2*tmpValue3);
      tmpValue4 := r/(r-1.0)*ElementYY_Assimilated/z;
      tmpValue5 := tmpValue3;
      tmpValue6 := ElementYY_InitialMagma*tmpValue1;
      tmpValue7 := tmpValue4*tmpValue5*Epsilon_Assimilated+tmpValue6*Epsilon_InitialMagma;
      tmpValue8 := tmpValue4*tmpValue5+ElementYY_InitialMagma*tmpValue1;
      Epsilon_Melt := tmpValue7/tmpValue8;;
      CalculateRatioFromEpsilon(Age,DC,CHURX,CHURY_present,Epsilon_Melt,MeltRatioY);
      if (MeltConcentrationYY > 0.0) then
      begin
        UpdateChartChemistry(ModelID,MeltConcentrationYY,MeltRatioY);
      end;
    end;
    tmpProportionMelt := tmpProportionMelt + 0.001;
  until (tmpProportionMelt > 0.99);
end;

procedure Tfm_RdMx_Main.eKd_YY_OlChange(Sender: TObject);
var
  WtOl, WtOpx, WtCpx, WtHbl,
  WtGt, WtPg, WtMt, WtTit,
  WtSum : double;
  KdOl, KdOpx, KdCpx, KdHbl,
  KdGt, KdPg, KdMt, KdTit,
  KdBulk : double;
  iCode : integer;
begin
  Val(eWtOl.Text,WtOl,iCode);
  Val(eWtOpx.Text,WtOpx,iCode);
  Val(eWtCpx.Text,WtCpx,iCode);
  Val(eWtHbl.Text,WtHbl,iCode);
  Val(eWtGt.Text,WtGt,iCode);
  Val(eWtPg.Text,WtPg,iCode);
  Val(eWtMt.Text,WtMt,iCode);
  Val(eWtTit.Text,WtTit,iCode);
  WtSum := WtOl + WtOpx + WtCpx + WtHbl + WtGt + WtPg + WtMt + WtTit;
  Val(eKd_YY_Ol.Text,KdOl,iCode);
  Val(eKd_YY_Opx.Text,KdOpx,iCode);
  Val(eKd_YY_Cpx.Text,KdCpx,iCode);
  Val(eKd_YY_Hbl.Text,KdHbl,iCode);
  Val(eKd_YY_Gt.Text,KdGt,iCode);
  Val(eKd_YY_Pg.Text,KdPg,iCode);
  Val(eKd_YY_Mt.Text,KdMt,iCode);
  Val(eKd_YY_Tit.Text,KdTit,iCode);
  KdBulk := WtOl*KdOl + WtOpx*KdOpx + WtCpx*KdCpx + WtHbl*KdHbl + WtGt*KdGt + WtPg*KdPg + WtMt*KdMt + WtTit*KdTit;
  eKd_YY_Ol.Text := FormatFloat('#0.0000',KdOl);
  eKd_YY_Opx.Text := FormatFloat('#0.0000',KdOpx);
  eKd_YY_Cpx.Text := FormatFloat('#0.0000',KdCpx);
  eKd_YY_Hbl.Text := FormatFloat('#0.0000',KdHbl);
  eKd_YY_Gt.Text := FormatFloat('#0.0000',KdGt);
  eKd_YY_Pg.Text := FormatFloat('#0.0000',KdPg);
  eKd_YY_Mt.Text := FormatFloat('#0.0000',KdMt);
  eKd_YY_Tit.Text := FormatFloat('#0.0000',KdTit);
  eKd_YY_Bulk.Text := FormatFloat('#0.0000',KdBulk);
end;

procedure Tfm_RdMx_Main.eKd_YY_OlDblClick(Sender: TObject);
begin
  eKd_YY_OlChange(Sender);
end;

procedure Tfm_RdMx_Main.eKd_XX_OlChange(Sender: TObject);
var
  WtOl, WtOpx, WtCpx, WtHbl,
  WtGt, WtPg, WtMt, WtTit,
  WtSum : double;
  KdOl, KdOpx, KdCpx, KdHbl,
  KdGt, KdPg, KdMt, KdTit,
  KdBulk : double;
  iCode : integer;
begin
  Val(eWtOl.Text,WtOl,iCode);
  Val(eWtOpx.Text,WtOpx,iCode);
  Val(eWtCpx.Text,WtCpx,iCode);
  Val(eWtHbl.Text,WtHbl,iCode);
  Val(eWtGt.Text,WtGt,iCode);
  Val(eWtPg.Text,WtPg,iCode);
  Val(eWtMt.Text,WtMt,iCode);
  Val(eWtTit.Text,WtTit,iCode);
  WtSum := WtOl + WtOpx + WtCpx + WtHbl + WtGt + WtPg + WtMt + WtTit;
  Val(eKd_XX_Ol.Text,KdOl,iCode);
  Val(eKd_XX_Opx.Text,KdOpx,iCode);
  Val(eKd_XX_Cpx.Text,KdCpx,iCode);
  Val(eKd_XX_Hbl.Text,KdHbl,iCode);
  Val(eKd_XX_Gt.Text,KdGt,iCode);
  Val(eKd_XX_Pg.Text,KdPg,iCode);
  Val(eKd_XX_Mt.Text,KdMt,iCode);
  Val(eKd_XX_Tit.Text,KdTit,iCode);
  KdBulk := WtOl*KdOl + WtOpx*KdOpx + WtCpx*KdCpx + WtHbl*KdHbl + WtGt*KdGt + WtPg*KdPg + WtMt*KdMt + WtTit*KdTit;
  eKd_XX_Ol.Text := FormatFloat('#0.0000',KdOl);
  eKd_XX_Opx.Text := FormatFloat('#0.0000',KdOpx);
  eKd_XX_Cpx.Text := FormatFloat('#0.0000',KdCpx);
  eKd_XX_Hbl.Text := FormatFloat('#0.0000',KdHbl);
  eKd_XX_Gt.Text := FormatFloat('#0.0000',KdGt);
  eKd_XX_Pg.Text := FormatFloat('#0.0000',KdPg);
  eKd_XX_Mt.Text := FormatFloat('#0.0000',KdMt);
  eKd_XX_Tit.Text := FormatFloat('#0.0000',KdTit);
  eKd_XX_Bulk.Text := FormatFloat('#0.0000',KdBulk);
end;

procedure Tfm_RdMx_Main.eKd_XX_OlDblClick(Sender: TObject);
begin
  eKd_XX_OlChange(Sender);
end;

procedure Tfm_RdMx_Main.eWtOlChange(Sender: TObject);
var
  WtOl, WtOpx, WtCpx, WtHbl,
  WtGt, WtPg, WtMt, WtTit,
  WtSum : double;
  iCode : integer;
begin
  Val(eWtOl.Text,WtOl,iCode);
  Val(eWtOpx.Text,WtOpx,iCode);
  Val(eWtCpx.Text,WtCpx,iCode);
  Val(eWtHbl.Text,WtHbl,iCode);
  Val(eWtGt.Text,WtGt,iCode);
  Val(eWtPg.Text,WtPg,iCode);
  Val(eWtMt.Text,WtMt,iCode);
  Val(eWtTit.Text,WtTit,iCode);
  WtSum := WtOl + WtOpx + WtCpx + WtHbl + WtGt + WtPg + WtMt + WtTit;
  eWtOl.Text := FormatFloat('#0.000',WtOl);
  eWtOpx.Text := FormatFloat('#0.000',WtOpx);
  eWtCpx.Text := FormatFloat('#0.000',WtCpx);
  eWtHbl.Text := FormatFloat('#0.000',WtHbl);
  eWtGt.Text := FormatFloat('#0.000',WtGt);
  eWtPg.Text := FormatFloat('#0.000',WtPg);
  eWtMt.Text := FormatFloat('#0.000',WtMt);
  eWtTit.Text := FormatFloat('#0.000',WtTit);
  eWtSum.Text := FormatFloat('#0.000',WtSum);
end;

procedure Tfm_RdMx_Main.CalculateRatioAtAge(Age,DC,RatioY_present,RatioX : double; var RatioY : double);
begin
  // Calculate initial ratio at age
  RatioY := RatioY_present - RatioX * (exp(DC*Age*1.0e6)-1.0);
end;

procedure Tfm_RdMx_Main.cbIsotopeSystemChange(Sender: TObject);
var
  iCode : integer;
begin
  if (cbIsotopeSystem.Text = 'Sm-Nd') then
  begin
    CHURX := 0.196;
    CHURY_present := 0.512630;
    DC1 := 6.524e-12;
    DMModelRatioX := 0.2136;
    DMModelRatioY := 0.513075;
    ElementXX_j := 2.99;
    ElementYY_j := 8.48;
    ejElementXX.Text := FormatFloat('#0.00',ElementXX_j);
    ejElementYY.Text := FormatFloat('#0.00',ElementYY_j);
    ejRatioX.Text := FormatFloat('#0.0000',DMModelRatioX);
    ejRatioY.Text := FormatFloat('#0.000000',DMModelRatioY);
    Val(ejRatioX.Text,RatioX_j,iCode);
    Val(ejRatioY.Text,RatioY_j,iCode);
    CalculateEpsilon(0.0,DC1,CHURX,CHURY_present,RatioY_j,Epsilon_j);
    ejEpsilon.Text := FormatFloat('##0.00',Epsilon_j);
    eeElementXX.Text := FormatFloat('#0.00',2.8);
    eeElementYY.Text := FormatFloat('#0.00',11.0);
    eeRatioX.Text := FormatFloat('#0.0000',0.1180);
    eeRatioY.Text := FormatFloat('#0.000000',0.510500);
    Val(eeRatioX.Text,RatioX_e,iCode);
    Val(eeRatioY.Text,RatioY_e,iCode);
    CalculateEpsilon(0.0,DC1,CHURX,CHURY_present,RatioY_e,Epsilon_e);
    eeEpsilon.Text := FormatFloat('##0.00',Epsilon_e);
    eKd_XX_Ol.Text := FormatFloat('#0.0000',0.0013);
    eKd_XX_Opx.Text := FormatFloat('#0.0000',0.0100);
    eKd_XX_Cpx.Text := FormatFloat('#0.0000',0.7000);
    eKd_XX_Hbl.Text := FormatFloat('#0.0000',0.8500);
    eKd_XX_Gt.Text := FormatFloat('#0.0000',0.2170);
    eKd_XX_Pg.Text := FormatFloat('#0.0000',0.1100);
    eKd_XX_Mt.Text := FormatFloat('#0.0000',1.1000);
    eKd_XX_Tit.Text := FormatFloat('#0.0000',10.000);
    eKd_XX_Bulk.Text := FormatFloat('#0.0000',0.0);
    eKd_YY_Ol.Text := FormatFloat('#0.0000',0.0010);
    eKd_YY_Opx.Text := FormatFloat('#0.0000',0.0050);
    eKd_YY_Cpx.Text := FormatFloat('#0.0000',0.300);
    eKd_YY_Hbl.Text := FormatFloat('#0.0000',0.6500);
    eKd_YY_Gt.Text := FormatFloat('#0.0000',0.0870);
    eKd_YY_Pg.Text := FormatFloat('#0.0000',0.1400);
    eKd_YY_Mt.Text := FormatFloat('#0.0000',1.0000);
    eKd_YY_Tit.Text := FormatFloat('#0.0000',10.000);
    eKd_YY_Bulk.Text := FormatFloat('#0.0000',0.0);
    leElementXX.Text := 'Sm (ppm)';
    leElementYY.Text := 'Nd (ppm)';
    leRatioX.Text := '147Sm/144Nd';
    leRatioY.Text := '143Nd/144Nd';
    lChemistryXX.Text := 'Sm';
    lChemistryYY.Text := 'Nd';
    ljElementXX.Text := 'Sm (ppm)';
    ljElementYY.Text := 'Nd (ppm)';
    ljRatioX.Text := '147Sm/144Nd';
    ljRatioY.Text := '143Nd/144Nd';
    lBulkKdXX.Text := 'Bulk Kd (Sm)';
    lBulkKdYY.Text := 'Bulk Kd (Nd)';
    lMix1X_Age2.Text := '147Sm/144Nd';
    lMix1Y_Age2.Text := '143Nd/144Nd';
    lMix1XX_Age2.Text := 'Sm';
    lMix1YY_Age2.Text := 'Nd';
    lMixAFCXX_Age1.Text := 'Sm';
    lMixAFCYY_Age1.Text := 'Nd';
    lMixAFCXX_Age2.Text := 'Sm';
    lMixAFCYY_Age2.Text := 'Nd';
    lMixAFCXX_Age1.Text := 'Sm';
    lMixAFCYY_Age1.Text := 'Nd';
    lAFCXX_Age2.Text := 'Sm';
    lAFCYY_Age2.Text := 'Nd';
    lAFCXX_Age1.Text := 'Sm';
    lAFCYY_Age1.Text := 'Nd';
    ChartInitial.SeriesList.Items[10].Visible := false;
    ChartInitial.SeriesList.Items[11].Visible := false;
    ChartInitial.SeriesList.Items[12].Visible := false;
    ChartInitial.SeriesList.Items[13].Visible := false;
    ChartInitial.SeriesList.Items[10].ShowInLegend := false;
    ChartInitial.SeriesList.Items[11].ShowInLegend := false;
    ChartInitial.SeriesList.Items[12].ShowInLegend := false;
    ChartInitial.SeriesList.Items[13].ShowInLegend := false;
  end;
  if (cbIsotopeSystem.Text = 'Lu-Hf') then
  begin
    CHURX := 0.0336;
    CHURY_present := 0.282785;
    DC1 := 1.867e-11;
    DMModelRatioX := 0.0384;
    DMModelRatioY := 0.283238;
    ElementXX_j := 0.470;
    ElementYY_j := 2.20;
    ejElementXX.Text := FormatFloat('#0.00',ElementXX_j);
    ejElementYY.Text := FormatFloat('#0.00',ElementYY_j);
    ejRatioX.Text := FormatFloat('#0.0000',DMModelRatioX);
    ejRatioY.Text := FormatFloat('#0.000000',DMModelRatioY);
    Val(ejRatioX.Text,RatioX_j,iCode);
    Val(ejRatioY.Text,RatioY_j,iCode);
    CalculateEpsilon(0.0,DC1,CHURX,CHURY_present,RatioY_j,Epsilon_j);
    ejEpsilon.Text := FormatFloat('##0.00',Epsilon_j);
    eeElementXX.Text := FormatFloat('#0.00',0.250);
    eeElementYY.Text := FormatFloat('#0.00',1.90);
    eeRatioX.Text := FormatFloat('#0.0000',0.015);
    eeRatioY.Text := FormatFloat('#0.000000',0.28150);
    Val(eeRatioX.Text,RatioX_e,iCode);
    Val(eeRatioY.Text,RatioY_e,iCode);
    CalculateEpsilon(0.0,DC1,CHURX,CHURY_present,RatioY_e,Epsilon_e);
    eeEpsilon.Text := FormatFloat('##0.00',Epsilon_e);
    eKd_XX_Ol.Text := FormatFloat('#0.0000',0.0015);
    eKd_XX_Opx.Text := FormatFloat('#0.0000',0.0600);
    eKd_XX_Cpx.Text := FormatFloat('#0.0000',0.2650);
    eKd_XX_Gt.Text := FormatFloat('#0.0000',5.5000);
    eKd_XX_Pg.Text := FormatFloat('#0.0000',0.0250);
    eKd_XX_Mt.Text := FormatFloat('#0.0000',1.0000);
    eKd_XX_Tit.Text := FormatFloat('#0.0000',10.000);
    eKd_XX_Bulk.Text := FormatFloat('#0.0000',0.0);
    eKd_YY_Ol.Text := FormatFloat('#0.0000',0.0037);
    eKd_YY_Opx.Text := FormatFloat('#0.0000',0.0550);
    eKd_YY_Cpx.Text := FormatFloat('#0.0000',0.2630);
    eKd_YY_Hbl.Text := FormatFloat('#0.0000',0.5000);
    eKd_YY_Gt.Text := FormatFloat('#0.0000',0.3000);
    eKd_YY_Pg.Text := FormatFloat('#0.0000',0.0510);
    eKd_YY_Mt.Text := FormatFloat('#0.0000',3.000);
    eKd_YY_Tit.Text := FormatFloat('#0.0000',10.000);
    eKd_YY_Bulk.Text := FormatFloat('#0.0000',0.0);
    leElementXX.Text := 'Lu (ppm)';
    leElementYY.Text := 'Hf (ppm)';
    leRatioX.Text := '176Lu/177Hf';
    leRatioY.Text := '176Hf/177Nd';
    lChemistryXX.Text := 'Lu';
    lChemistryYY.Text := 'Hf';
    ljElementXX.Text := 'Lu (ppm)';
    ljElementYY.Text := 'Hf (ppm)';
    ljRatioX.Text := '176Lu/177Hf';
    ljRatioY.Text := '176Hf/177Hf';
    lBulkKdXX.Text := 'Bulk Kd (Lu)';
    lBulkKdYY.Text := 'Bulk Kd (Hf)';
    lMix1X_Age2.Text := '176Lu/177Hf';
    lMix1Y_Age2.Text := '176Hf/177Hf';
    lMix1XX_Age2.Text := 'Lu';
    lMix1YY_Age2.Text := 'Hf';
    lMixAFCXX_Age2.Text := 'Lu';
    lMixAFCYY_Age2.Text := 'Hf';
    lMixAFCXX_Age1.Text := 'Lu';
    lMixAFCYY_Age1.Text := 'Hf';
    lAFCXX_Age2.Text := 'Lu';
    lAFCYY_Age2.Text := 'Hf';
    lAFCXX_Age1.Text := 'Lu';
    lAFCYY_Age1.Text := 'Hf';
    ChartInitial.SeriesList.Items[10].Visible := true;
    ChartInitial.SeriesList.Items[11].Visible := true;
    ChartInitial.SeriesList.Items[12].Visible := true;
    ChartInitial.SeriesList.Items[13].Visible := true;
    ChartInitial.SeriesList.Items[10].ShowInLegend := true;
    ChartInitial.SeriesList.Items[11].ShowInLegend := true;
    ChartInitial.SeriesList.Items[12].ShowInLegend := true;
    ChartInitial.SeriesList.Items[13].ShowInLegend := true;
  end;
  eWtOlChange(Sender);
  eKd_XX_OlDblClick(Sender);
  eKd_YY_OlDblClick(Sender);
end;

procedure Tfm_RdMx_Main.mi_Help_AboutClick(Sender: TObject);
var
  fmAbout : TfmAbout;
begin
  try
    fmAbout := TfmAbout.Create(fm_RdMx_main);
    fmAbout.Parent := fm_RdMx_main;
    fmAbout.ShowModal(
      procedure(ModalResult: TModalResult)
      begin
        // do something...
      end
    );
  finally
    fmAbout.Free;
  end;
end;

end.
