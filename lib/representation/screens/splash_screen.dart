import 'package:flutter/material.dart';

import '../../helpers/asset_helper.dart';
import '../../helpers/image_helper.dart';
import 'main_app.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static String routeName = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _routeToIntroScreen();
  }

  void _routeToIntroScreen() async {
    await Future.delayed(const Duration(milliseconds: 10000));
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushNamed(MainApp.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ImageHelper.loadFromAsset(
            AssetHelper.backgroundSplash,
            fit: BoxFit.fitWidth,
          ),
        ),
        // Positioned.fill(
        //   child: ImageHelper.loadFromAsset(
        //     AssetHelper.circleSplash,
        //   ),
        // ),
      ],
    );
  }
}
