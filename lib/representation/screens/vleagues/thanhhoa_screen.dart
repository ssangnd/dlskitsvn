import 'package:dlskitsvn/representation/widgets/appbar_container.dart';
import 'package:dlskitsvn/representation/widgets/item_kits_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../../models/item_model.dart';
import '../../../services/ad_service.dart';

class ThanhHoaScreen extends StatefulWidget {
  const ThanhHoaScreen({super.key});

  static const String routeName = 'thanhhoa_screen';

  @override
  State<ThanhHoaScreen> createState() => _ThanhHoaScreenState();
}

class _ThanhHoaScreenState extends State<ThanhHoaScreen> {
  BannerAd? _banner;
  @override
  void initState() {
    super.initState();
    _createBannerAd();
  }

  void _createBannerAd() {
    _banner = BannerAd(
      size: AdSize.fullBanner,
      adUnitId: AdService.bannerAdUnitId!,
      listener: AdService.bannerAdListener,
      request: const AdRequest(),
    )..load();
  }

  final List<ItemModel> listRoom = [
    ItemModel(
      image: 'https://i.imgur.com/l62oh5Q.png',
      name: 'Logo',
      size: 40,
      price: 1,
    ),
    ItemModel(
      image: 'https://i.imgur.com/YptdyzW.png',
      name: 'Home Kit',
      size: 40,
      price: 2,
    ),
    ItemModel(
      image: 'https://i.imgur.com/arqHLLi.png',
      name: 'Away Kit',
      size: 40,
      price: 3,
    ),
    ItemModel(
      image: 'https://i.imgur.com/nBGALEh.png',
      name: 'Goalkeeper Home Kit',
      size: 40,
      price: 4,
    ),
    ItemModel(
      image: 'https://i.imgur.com/Nd9LXE4.png',
      name: 'Goalkeeper Away Kit',
      size: 40,
      price: 5,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      titleString: 'Thanh Hoa FC',
      implementLeading: true,
      implementTraling: true,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 50, left: 24, right: 24),
            child: SingleChildScrollView(
              child: Column(
                children: listRoom
                    .map(
                      (e) => ItemKitsWidget(
                        itemModel: e,
                        onTap: () {
                          Clipboard.setData(ClipboardData(text: e.image))
                              .then((_) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Copy thành công!'),
                              ),
                            );
                          });
                        },
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: _banner == null
                ? Container()
                : Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: AdWidget(
                      ad: _banner!,
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
