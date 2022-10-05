import '../../representation/screens/vleagues/viettel_screen.dart';

import '../../representation/widgets/appbar_container.dart';
import 'package:flutter/material.dart';

import '../../core/constants/color_constants.dart';
import '../../core/constants/dismension_constants.dart';
import '../../helpers/asset_helper.dart';
import '../../helpers/image_helper.dart';

class VLeagueScreen extends StatefulWidget {
  const VLeagueScreen({super.key});
  static const String routeName = 'vleague_screen';
  @override
  State<VLeagueScreen> createState() => _VLeagueScreenState();
}

class _VLeagueScreenState extends State<VLeagueScreen> {
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
      titleString: 'VLeague',
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
                    ImageHelper.loadFromAsset(AssetHelper.icoViettel,
                        width: 65, height: 65),
                    const Color(0xffF77777),
                    () {
                      Navigator.of(context).pushNamed(ViettelScreen.routeName);
                    },
                    'Viettel',
                  ),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoTphcm,
                          width: 65, height: 65),
                      const Color(0xffF77777),
                      () {},
                      'TP Hồ Chí Minh'),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoHanoi,
                          width: 65, height: 65),
                      const Color(0xffF77777),
                      () {},
                      'Hà Nội'),
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
                      ImageHelper.loadFromAsset(AssetHelper.icoNamdinh,
                          width: 65, height: 65),
                      const Color(0xffF77777),
                      () {},
                      'Nam Định'),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoDanang,
                          width: 65, height: 65),
                      const Color(0xffF77777),
                      () {},
                      'SHB Đà Nẵng'),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoSaigon,
                          width: 65, height: 65),
                      const Color(0xffF77777),
                      () {},
                      'Sài Gòn'),
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
                      ImageHelper.loadFromAsset(AssetHelper.icoHaiphong,
                          width: 65, height: 65),
                      const Color(0xffF77777),
                      () {},
                      'Hải Phòng FC'),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoHatinh,
                          width: 65, height: 65),
                      const Color(0xffF77777),
                      () {},
                      'Hồng Lĩnh Hà Tĩnh'),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoHagl,
                          width: 65, height: 65),
                      const Color(0xffF77777),
                      () {},
                      'Hoàng Anh Gia Lai'),
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
                      ImageHelper.loadFromAsset(AssetHelper.icoSlna,
                          width: 65, height: 65),
                      const Color(0xffF77777),
                      () {},
                      'Sông Lam Nghệ An'),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoBinhdinh,
                          width: 65, height: 65),
                      const Color(0xffF77777),
                      () {},
                      'Topenland Bình Định'),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoThanhhoa,
                          width: 65, height: 65),
                      const Color(0xffF77777),
                      () {},
                      'Đông Á Thanh Hóa'),
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
                  width: (MediaQuery.of(context).size.width * 0.3),
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoBinhDuong,
                          width: 65, height: 65),
                      const Color(0xffF77777),
                      () {},
                      'Becamex Bình Dương'),
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width * 0.3),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
