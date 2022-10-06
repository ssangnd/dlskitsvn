import '../../representation/screens/laligas/barcerona_screen.dart';
import '../../representation/screens/laligas/realbetis_screen.dart';
import '../../representation/screens/laligas/realmadrid_screen.dart';
import '../../representation/screens/laligas/realsociedad_screen.dart';
import '../../representation/screens/laligas/valencia_screen.dart';

import '../../representation/widgets/appbar_container.dart';
import 'package:flutter/material.dart';

import '../../core/constants/color_constants.dart';
import '../../core/constants/dismension_constants.dart';
import '../../helpers/asset_helper.dart';
import '../../helpers/image_helper.dart';
import 'laligas/athleticbilbao_screen.dart';
import 'laligas/villarreal_screen.dart';

class LaligaScreen extends StatefulWidget {
  const LaligaScreen({super.key});
  static const String routeName = 'liliga_screen';
  @override
  State<LaligaScreen> createState() => _LaligaScreenState();
}

class _LaligaScreenState extends State<LaligaScreen> {
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
      titleString: 'Laliga',
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
                    ImageHelper.loadFromAsset(AssetHelper.icoAthleticbilbao,
                        width: 65, height: 65),
                    const Color(0xffF77777),
                    () {
                      Navigator.of(context)
                          .pushNamed(AthleticBilbaolScreen.routeName);
                    },
                    'Athletic Bilbao',
                  ),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoBarca,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(BarcelonalScreen.routeName);
                  }, 'Barcelona'),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoRealbetis,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(RealBetis.routeName);
                  }, 'Real Betis'),
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
                      ImageHelper.loadFromAsset(AssetHelper.icoRealmadrid,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(RealMadrid.routeName);
                  }, 'Real Madrid'),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoRealsociedad,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(RealSociedad.routeName);
                  }, 'Real Sociedad'),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoValencia,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(ValenciaScreen.routeName);
                  }, 'Valencia CF'),
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
                      ImageHelper.loadFromAsset(AssetHelper.icoVillarreal,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(Villarreal.routeName);
                  }, 'Villarreal'),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                //   Expanded(
                //     child: _buildItemCategory(
                //         ImageHelper.loadFromAsset(AssetHelper.icoHatinh,
                //             width: 65, height: 65),
                //         const Color(0xffF77777), () {
                //       Navigator.of(context).pushNamed(HaTinhScreen.routeName);
                //     }, 'Hồng Lĩnh Hà Tĩnh'),
                //   ),
                //   const SizedBox(
                //     width: kItemPadding,
                //   ),
                //   Expanded(
                //     child: _buildItemCategory(
                //         ImageHelper.loadFromAsset(AssetHelper.icoHagl,
                //             width: 65, height: 65),
                //         const Color(0xffF77777), () {
                //       Navigator.of(context).pushNamed(HaglScreen.routeName);
                //     }, 'Hoàng Anh Gia Lai'),
                //   ),
                //   SizedBox(
                //     width: (MediaQuery.of(context).size.width * 0.025),
                //   ),
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
