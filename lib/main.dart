import 'package:flutter/material.dart';

import 'core/constants/color_constants.dart';
import 'helpers/size_config.dart';
import 'representation/screens/splash_screen.dart';
import 'routes.dart';

void main() {
  runApp(const DlsKitsVnApp());
}

class DlsKitsVnApp extends StatelessWidget {
  const DlsKitsVnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dls Kits Vn App',
      theme: ThemeData(
        primaryColor: ColorPalette.primaryColor,
        scaffoldBackgroundColor: ColorPalette.backgroundScaffoldColor,
        backgroundColor: ColorPalette.backgroundScaffoldColor,
      ),
      routes: routes,
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) {
          SizeConfig.init(context);
          return const SplashScreen();
        },
      ),
    );
  }
}
