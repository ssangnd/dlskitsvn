import '../../representation/screens/premierleagues/asernal_screen.dart';
import '../../representation/screens/premierleagues/chelsea_screen.dart';
import '../../representation/screens/premierleagues/liverpool_screen.dart';
import '../../representation/screens/premierleagues/mancity_screen.dart';
import '../../representation/screens/premierleagues/manu_screen.dart';
import '../../representation/screens/premierleagues/totenham_screen.dart';

import '../../representation/widgets/appbar_container.dart';
import 'package:flutter/material.dart';

import '../../core/constants/color_constants.dart';
import '../../core/constants/dismension_constants.dart';
import '../../helpers/asset_helper.dart';
import '../../helpers/image_helper.dart';

class PremierScreen extends StatefulWidget {
  const PremierScreen({super.key});
  static const String routeName = 'premier_screen';
  @override
  State<PremierScreen> createState() => _PremierScreenState();
}

class _PremierScreenState extends State<PremierScreen> {
  Widget _buildItemCategory(
      Widget icon, Color color, Function() onTap, String title) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              // vertical: kMediumPadding,
              vertical: kMin3,
            ),
            decoration: BoxDecoration(
              // color: color.withOpacity(0.8),
              color: Colors.white,
              borderRadius: BorderRadius.circular(kItemPadding),
            ),
            child: icon,
          ),
          const SizedBox(
            height: kItemPadding,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 11,
              color: ColorPalette.text1Color,
              fontWeight: FontWeight.w400,
              height: 16 / 14,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      titleString: 'Premier League',
      implementLeading: true,
      implementTraling: true,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: (MediaQuery.of(context).size.width * 0.025),
                ),
                Expanded(
                  child: _buildItemCategory(
                    ImageHelper.loadFromAsset(AssetHelper.icoArsenal,
                        width: 65, height: 65),
                    const Color(0xffF77777),
                    () {
                      Navigator.of(context).pushNamed(ArsenalScreen.routeName);
                    },
                    'Arsenal',
                  ),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoChelsea,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(ChelseaScreen.routeName);
                  }, 'Chelsea'),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoLiverpool,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(LiverpoolScreen.routeName);
                  }, 'Liverpool'),
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width * 0.025),
                ),
              ],
            ),
            const SizedBox(
              height: kMediumPadding,
            ),
            Row(
              children: [
                SizedBox(
                  width: (MediaQuery.of(context).size.width * 0.025),
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoMancity,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(ManCityScreen.routeName);
                  }, 'Manchester City'),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoManu,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context)
                        .pushNamed(ManchesterUnitedScreen.routeName);
                  }, 'Manchester United'),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoTotenham,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(TottenhamlScreen.routeName);
                  }, 'Tottenham Hotspur'),
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width * 0.025),
                ),
              ],
            ),
            const SizedBox(
              height: kMediumPadding,
            ),
            // Row(
            //   children: [
            //     SizedBox(
            //       width: (MediaQuery.of(context).size.width * 0.025),
            //     ),
            //     Expanded(
            //       child: _buildItemCategory(
            //           ImageHelper.loadFromAsset(AssetHelper.icoHaiphong,
            //               width: 65, height: 65),
            //           const Color(0xffF77777), () {
            //         Navigator.of(context).pushNamed(HaiPhongScreen.routeName);
            //       }, 'Hải Phòng FC'),
            //     ),
            //     const SizedBox(
            //       width: kItemPadding,
            //     ),
            //     Expanded(
            //       child: _buildItemCategory(
            //           ImageHelper.loadFromAsset(AssetHelper.icoHatinh,
            //               width: 65, height: 65),
            //           const Color(0xffF77777), () {
            //         Navigator.of(context).pushNamed(HaTinhScreen.routeName);
            //       }, 'Hồng Lĩnh Hà Tĩnh'),
            //     ),
            //     const SizedBox(
            //       width: kItemPadding,
            //     ),
            //     Expanded(
            //       child: _buildItemCategory(
            //           ImageHelper.loadFromAsset(AssetHelper.icoHagl,
            //               width: 65, height: 65),
            //           const Color(0xffF77777), () {
            //         Navigator.of(context).pushNamed(HaglScreen.routeName);
            //       }, 'Hoàng Anh Gia Lai'),
            //     ),
            //     SizedBox(
            //       width: (MediaQuery.of(context).size.width * 0.025),
            //     ),
            //   ],
            // ),
            // const SizedBox(
            //   height: kMediumPadding,
            // ),
            // Row(
            //   children: [
            //     SizedBox(
            //       width: (MediaQuery.of(context).size.width * 0.025),
            //     ),
            //     Expanded(
            //       child: _buildItemCategory(
            //           ImageHelper.loadFromAsset(AssetHelper.icoSlna,
            //               width: 65, height: 65),
            //           const Color(0xffF77777), () {
            //         Navigator.of(context).pushNamed(SlnaScreen.routeName);
            //       }, 'Sông Lam Nghệ An'),
            //     ),
            //     const SizedBox(
            //       width: kItemPadding,
            //     ),
            //     Expanded(
            //       child: _buildItemCategory(
            //           ImageHelper.loadFromAsset(AssetHelper.icoBinhdinh,
            //               width: 65, height: 65),
            //           const Color(0xffF77777), () {
            //         Navigator.of(context).pushNamed(BinhDinhScreen.routeName);
            //       }, 'Topenland Bình Định'),
            //     ),
            //     const SizedBox(
            //       width: kItemPadding,
            //     ),
            //     Expanded(
            //       child: _buildItemCategory(
            //           ImageHelper.loadFromAsset(AssetHelper.icoThanhhoa,
            //               width: 65, height: 65),
            //           const Color(0xffF77777), () {
            //         Navigator.of(context).pushNamed(ThanhHoaScreen.routeName);
            //       }, 'Đông Á Thanh Hóa'),
            //     ),
            //     SizedBox(
            //       width: (MediaQuery.of(context).size.width * 0.025),
            //     ),
            //   ],
            // ),
            // const SizedBox(
            //   height: kMediumPadding,
            // ),
            // Row(
            //   children: [
            //     SizedBox(
            //       width: (MediaQuery.of(context).size.width * 0.3),
            //     ),
            //     Expanded(
            //       child: _buildItemCategory(
            //           ImageHelper.loadFromAsset(AssetHelper.icoBinhDuong,
            //               width: 65, height: 65),
            //           const Color(0xffF77777), () {
            //         Navigator.of(context)
            //             .pushNamed(BecamexBinhDuongScreen.routeName);
            //       }, 'Becamex Bình Dương'),
            //     ),
            //     SizedBox(
            //       width: (MediaQuery.of(context).size.width * 0.3),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
