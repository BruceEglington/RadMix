unit RdMx_variables;

interface

const
  Zero = 0.0;

var
  CommonFilePath,
  FlexTemplatePath,
  ExportPath,
  DataPath   : string;
  IniFileName : string;
  tmpIsotopeSystem : string;
  CHURX, CHURY, CHURY_present,
  CHURX_SmNd, CHURY_SmNd, CHURY_present_SmNd,
  CHURX_LuHf, CHURY_LuHf, CHURY_present_LuHf,
  ModelStartingAge, ModelEndingAge,
  DMModelRatioY, DMModelRatioX,
  DMModelRatioY_SmNd, DMModelRatioX_SmNd,
  DMModelRatioY_LuHf, DMModelRatioX_LuHf,
  CHURModelRatioY, CHURModelRatioX,
  RatioX_j, RatioX_e,
  RatioX_j_SmNd, RatioX_e_SmNd,
  RatioX_j_LuHf, RatioX_e_LuHf,
  RatioX_m_Age1_present, RatioX_m_Age2_present,
  RatioY_m_Age1_present, RatioY_m_Age2_present,
  RatioX_melt_Age1_present, RatioX_melt_Age2_present,
  RatioY_melt_Age1_present, RatioY_melt_Age2_present,
  RatioY_j, RatioY_e,
  RatioY_j_SmNd, RatioY_e_SmNd,
  RatioY_j_LuHf, RatioY_e_LuHf,
  ElementXX_j, ElementXX_e,
  ElementXX_j_SmNd, ElementXX_e_SmNd,
  ElementXX_j_LuHf, ElementXX_e_LuHf,
  ElementYY_j, ElementYY_e,
  ElementYY_j_SmNd, ElementYY_e_SmNd,
  ElementYY_j_LuHf, ElementYY_e_LuHf,
  ProportionJuvenile, ProportionMelt,
  MassAssimilatedMassCrystallised ,
  MeltElementXX_Age1, MeltElementYY_Age1,
  MeltElementXX_Age2, MeltElementYY_Age2,
  Age1, Age2,
  DC1, DC1_SmNd, DC1_LuHf,
  MixtureX, MixtureY,
  DMX, DMY,
  T2DM,
  Epsilon_j, Epsilon_e,
  tmp : double;
  i, j : integer;
  NormaliseValueXX, NormaliseValueYY : double;
  AtNumSm, AtNumNd : double;
  NPoints : integer;
  RatioStartMinAge1, RatioEndMaxAge1,
  RatioStartMinAge2, RatioEndMaxAge2 : double;
  Kd_LuHf_XX_Ol, Kd_LuHf_XX_Opx, Kd_LuHf_XX_Cpx, Kd_LuHf_XX_Hbl,
  Kd_LuHf_XX_Gt, Kd_LuHf_XX_Pg, Kd_LuHf_XX_Mt, Kd_LuHf_XX_Tit : double;
  Kd_LuHf_YY_Ol, Kd_LuHf_YY_Opx, Kd_LuHf_YY_Cpx, Kd_LuHf_YY_Hbl,
  Kd_LuHf_YY_Gt, Kd_LuHf_YY_Pg, Kd_LuHf_YY_Mt, Kd_LuHf_YY_Tit : double;
  Kd_SmNd_XX_Ol, Kd_SmNd_XX_Opx, Kd_SmNd_XX_Cpx, Kd_SmNd_XX_Hbl,
  Kd_SmNd_XX_Gt, Kd_SmNd_XX_Pg, Kd_SmNd_XX_Mt, Kd_SmNd_XX_Tit : double;
  Kd_SmNd_YY_Ol, Kd_SmNd_YY_Opx, Kd_SmNd_YY_Cpx, Kd_SmNd_YY_Hbl,
  Kd_SmNd_YY_Gt, Kd_SmNd_YY_Pg, Kd_SmNd_YY_Mt, Kd_SmNd_YY_Tit : double;
  Kd_XX_Ol, Kd_XX_Opx, Kd_XX_Cpx, Kd_XX_Hbl,
  Kd_XX_Gt, Kd_XX_Pg, Kd_XX_Mt, Kd_XX_Tit : double;
  Kd_YY_Ol, Kd_YY_Opx, Kd_YY_Cpx, Kd_YY_Hbl,
  Kd_YY_Gt, Kd_YY_Pg, Kd_YY_Mt, Kd_YY_Tit : double;
  MaximumRatioAge2_SmNd, MinimumRatioAge2_SmNd,
  MaximumRatioAge1_SmNd, MinimumRatioAge1_SmNd : double;
  MaximumRatioAge2_LuHf, MinimumRatioAge2_LuHf,
  MaximumRatioAge1_LuHf, MinimumRatioAge1_LuHf : double;
  MaximumRatioAge2, MinimumRatioAge2,
  MaximumRatioAge1, MinimumRatioAge1 : double;
  tKc_SmNd, tKc_LuHf, tKc : double;

implementation

end.
