import 'dart:io' show Platform;

import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdService {
  static String? get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/6300978111';
      // return 'ca-app-pub-2881972598627398/4539269096';
    }
    return null;
  }

  static final BannerAdListener bannerAdListener =
      BannerAdListener(onAdLoaded: (ad) {
    print('Ad loaded');
  }, onAdFailedToLoad: (ad, error) {
    ad.dispose();
    print('Ad failed to load: $error');
  }, onAdOpened: (ad) {
    print('Ad opend');
  }, onAdClosed: ((ad) {
    print('Ad closed');
  }));
}
