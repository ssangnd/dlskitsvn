import 'package:dlskitsvn/representation/screens/bundesligas/bayernmunich_screen.dart';
import 'package:dlskitsvn/representation/screens/bundesligas/dortmund_screen.dart';
import 'package:dlskitsvn/representation/screens/bundesligas/freiburg_screen.dart';

import '../../representation/widgets/appbar_container.dart';
import 'package:flutter/material.dart';

import '../../core/constants/color_constants.dart';
import '../../core/constants/dismension_constants.dart';
import '../../helpers/asset_helper.dart';
import '../../helpers/image_helper.dart';

class BundesligaScreen extends StatefulWidget {
  const BundesligaScreen({super.key});
  static const String routeName = 'bundesliga_screen';
  @override
  State<BundesligaScreen> createState() => _BundesligaScreenState();
}

class _BundesligaScreenState extends State<BundesligaScreen> {
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
      titleString: 'Bundesliga',
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
                    ImageHelper.loadFromAsset(AssetHelper.icoDortMund,
                        width: 65, height: 65),
                    const Color(0xffF77777),
                    () {
                      Navigator.of(context)
                          .pushNamed(BorussiaDortmundlScreen.routeName);
                    },
                    'Borussia Dortmund',
                  ),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoBayer,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context)
                        .pushNamed(BayerMunichScreen.routeName);
                  }, 'Bayern Munich'),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoMonaco,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(FreiburgScreen.routeName);
                  }, 'Freiburg'),
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width * 0.025),
                ),
              ],
            ),
            const SizedBox(
              height: kMediumPadding,
            ),
          ],
        ),
      ),
    );
  }
}
