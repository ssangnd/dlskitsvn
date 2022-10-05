import 'package:flutter/material.dart';

import 'representation/screens/main_app.dart';
import 'representation/screens/vleague_screen.dart';

final Map<String, WidgetBuilder> routes = {
  MainApp.routeName: (context) => const MainApp(),
  VLeagueScreen.routeName: (context) => const VLeagueScreen(),
};
