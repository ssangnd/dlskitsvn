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

import 'representation/screens/guide_screen.dart';
import 'representation/screens/main_app.dart';
import 'representation/screens/vleague_screen.dart';

import 'representation/screens/vleagues/viettel_screen.dart';

final Map<String, WidgetBuilder> routes = {
  MainApp.routeName: (context) => const MainApp(),
  VLeagueScreen.routeName: (context) => const VLeagueScreen(),
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
};
