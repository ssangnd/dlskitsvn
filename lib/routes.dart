import '../../representation/screens/premierleagues/everton_screen.dart';
import '../../representation/screens/premierleagues/leitercity_screen.dart';
import '../../representation/screens/premierleagues/southamton_screen.dart';

import '../../representation/screens/nationals/australia_screen.dart';
import '../../representation/screens/nationals/belgium_screen.dart';
import '../../representation/screens/nationals/brazil_screen.dart';
import '../../representation/screens/nationals/hungary_screen.dart';
import '../../representation/screens/nationals/us_screen.dart';

import '../../representation/screens/nationals/argentina_screen.dart';
import '../../representation/screens/nationals/ecuado_screen.dart';
import '../../representation/screens/nationals/england_screen.dart';
import '../../representation/screens/nationals/france_screen.dart';
import '../../representation/screens/nationals/italia_screen.dart';
import '../../representation/screens/nationals/japan_screen.dart';
import '../../representation/screens/nationals/mexico_screen.dart';
import '../../representation/screens/nationals/portugal_screen.dart';

import '../../representation/screens/national_screen.dart';
import '../../representation/screens/nationals/spain_screen.dart';
import '../../representation/screens/serias/acmilan_screen.dart';
import '../../representation/screens/serias/asroma_screen.dart';
import '../../representation/screens/serias/intermilan_screen.dart';
import '../../representation/screens/serias/juventus_screen.dart';

import '../../representation/screens/bundesligas/dortmund_screen.dart';
import '../../representation/screens/bundesligas/freiburg_screen.dart';

import '../../representation/screens/bundesliga_screen.dart';
import '../../representation/screens/seria_screen.dart';

import '../../representation/screens/ligue1s/monaco_screen.dart';
import '../../representation/screens/ligue1s/olympiquelyonnais_screen.dart';
import '../../representation/screens/ligue1s/psg_screen.dart';

import '../../representation/screens/laligas/athleticbilbao_screen.dart';
import '../../representation/screens/laligas/barcerona_screen.dart';
import '../../representation/screens/laligas/realbetis_screen.dart';
import '../../representation/screens/laligas/realmadrid_screen.dart';
import '../../representation/screens/laligas/realsociedad_screen.dart';
import '../../representation/screens/laligas/villarreal_screen.dart';
import '../../representation/screens/premierleague_screen.dart';
import '../../representation/screens/premierleagues/asernal_screen.dart';
import '../../representation/screens/premierleagues/chelsea_screen.dart';
import '../../representation/screens/premierleagues/liverpool_screen.dart';
import '../../representation/screens/premierleagues/mancity_screen.dart';
import '../../representation/screens/premierleagues/manu_screen.dart';
import '../../representation/screens/premierleagues/totenham_screen.dart';

import './representation/screens/vleagues/becamexbinhduong_screen.dart';
import './representation/screens/vleagues/binhdinh_screen.dart';
import './representation/screens/vleagues/hagl_screen.dart';
import './representation/screens/vleagues/haiphong_screen.dart';
import './representation/screens/vleagues/hanoi_screen.dart';
import './representation/screens/vleagues/hatinh_screen.dart';
import './representation/screens/vleagues/hcm_screen.dart';
import './representation/screens/vleagues/namdinh_screen.dart';
import './representation/screens/vleagues/saigon_screen.dart';
import './representation/screens/vleagues/shbdanang_screen.dart';
import './representation/screens/vleagues/slna_screen.dart';
import './representation/screens/vleagues/thanhhoa_screen.dart';
import 'package:flutter/material.dart';

import 'representation/screens/bundesligas/bayernmunich_screen.dart';
import 'representation/screens/guide_screen.dart';
import 'representation/screens/laliga_screen.dart';
import 'representation/screens/laligas/valencia_screen.dart';
import 'representation/screens/ligue1_screen.dart';
import 'representation/screens/ligue1s/olympiquemarseille_screen.dart';
import 'representation/screens/main_app.dart';
import 'representation/screens/nationals/chile_screen.dart';
import 'representation/screens/nationals/germany_screen.dart';
import 'representation/screens/nationals/korea_screen.dart';
import 'representation/screens/nationals/vn_screen.dart';
import 'representation/screens/serias/napoli_screen.dart';
import 'representation/screens/vleague_screen.dart';

import 'representation/screens/vleagues/viettel_screen.dart';

final Map<String, WidgetBuilder> routes = {
  MainApp.routeName: (context) => const MainApp(),
  VLeagueScreen.routeName: (context) => const VLeagueScreen(),
  PremierScreen.routeName: (context) => const PremierScreen(),
  LaligaScreen.routeName: (context) => const LaligaScreen(),
  Ligue1Screen.routeName: (context) => const Ligue1Screen(),
  BundesligaScreen.routeName: (context) => const BundesligaScreen(),
  SeriaScreen.routeName: (context) => const SeriaScreen(),
  NationalScreen.routeName: (context) => const NationalScreen(),

  GuideScreen.routeName: (context) => const GuideScreen(),
  // Vleague
  ViettelScreen.routeName: (context) => const ViettelScreen(),
  HoChiMinhScreen.routeName: (context) => const HoChiMinhScreen(),
  HaNoiScreen.routeName: (context) => const HaNoiScreen(),
  NamDinhlScreen.routeName: (context) => const NamDinhlScreen(),
  ShbDaNangScreen.routeName: (context) => const ShbDaNangScreen(),
  SaiGonScreen.routeName: (context) => const SaiGonScreen(),
  HaiPhongScreen.routeName: (context) => const HaiPhongScreen(),
  HaTinhScreen.routeName: (context) => const HaTinhScreen(),
  HaglScreen.routeName: (context) => const HaglScreen(),
  SlnaScreen.routeName: (context) => const SlnaScreen(),
  BinhDinhScreen.routeName: (context) => const BinhDinhScreen(),
  ThanhHoaScreen.routeName: (context) => const ThanhHoaScreen(),
  BecamexBinhDuongScreen.routeName: (context) => const BecamexBinhDuongScreen(),

  //PR

  ArsenalScreen.routeName: (context) => const ArsenalScreen(),
  ChelseaScreen.routeName: (context) => const ChelseaScreen(),
  LiverpoolScreen.routeName: (context) => const LiverpoolScreen(),
  ManCityScreen.routeName: (context) => const ManCityScreen(),
  ManchesterUnitedScreen.routeName: (context) => const ManchesterUnitedScreen(),
  TottenhamlScreen.routeName: (context) => const TottenhamlScreen(),
  SouthamptonlScreen.routeName: (context) => const SouthamptonlScreen(),
  LeicesterCityScreen.routeName: (context) => const LeicesterCityScreen(),
  EvertonScreen.routeName: (context) => const EvertonScreen(),

  //Laliga

  AthleticBilbaolScreen.routeName: (context) => const AthleticBilbaolScreen(),
  BarcelonalScreen.routeName: (context) => const BarcelonalScreen(),
  RealBetis.routeName: (context) => const RealBetis(),
  RealMadrid.routeName: (context) => const RealMadrid(),
  RealSociedad.routeName: (context) => const RealSociedad(),
  ValenciaScreen.routeName: (context) => const ValenciaScreen(),
  Villarreal.routeName: (context) => const Villarreal(),

  //Ligue1
  ParisSaintGermainlScreen.routeName: (context) =>
      const ParisSaintGermainlScreen(),
  MonacoScreen.routeName: (context) => const MonacoScreen(),
  OlympiqueLyonnaislScreen.routeName: (context) =>
      const OlympiqueLyonnaislScreen(),
  OlympiqueMarseilleScareen.routeName: (context) =>
      const OlympiqueMarseilleScareen(),

  //Bundesliga
  FreiburgScreen.routeName: (context) => const FreiburgScreen(),
  BorussiaDortmundlScreen.routeName: (context) =>
      const BorussiaDortmundlScreen(),
  BayerMunichScreen.routeName: (context) => const BayerMunichScreen(),

  //Seria
  NapoliScreen.routeName: (context) => const NapoliScreen(),
  JuventuslScreen.routeName: (context) => const JuventuslScreen(),
  AcMilanScreen.routeName: (context) => const AcMilanScreen(),
  AsRomaScreen.routeName: (context) => const AsRomaScreen(),
  InterMilanScreen.routeName: (context) => const InterMilanScreen(),

  //National
  SpainlScreen.routeName: (context) => const SpainlScreen(),
  JapanScreen.routeName: (context) => const JapanScreen(),
  VietNamScreen.routeName: (context) => const VietNamScreen(),
  FranceScreen.routeName: (context) => const FranceScreen(),
  PortugalScreen.routeName: (context) => const PortugalScreen(),
  ArgentinaScreen.routeName: (context) => const ArgentinaScreen(),
  ItalialScreen.routeName: (context) => const ItalialScreen(),
  EnglandScreen.routeName: (context) => const EnglandScreen(),
  MexicoScreen.routeName: (context) => const MexicoScreen(),
  EcuadorScreen.routeName: (context) => const EcuadorScreen(),
  KoreaScreen.routeName: (context) => const KoreaScreen(),
  ChileScreen.routeName: (context) => const ChileScreen(),
  HungaryScreen.routeName: (context) => const HungaryScreen(),
  AustriaScreen.routeName: (context) => const AustriaScreen(),
  UsScreen.routeName: (context) => const UsScreen(),
  BrazilScreen.routeName: (context) => const BrazilScreen(),
  BelgiumScreen.routeName: (context) => const BelgiumScreen(),
  GermanyScreen.routeName: (context) => const GermanyScreen(),
};
