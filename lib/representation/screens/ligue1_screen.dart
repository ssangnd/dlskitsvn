import '../../representation/screens/ligue1s/monaco_screen.dart';
import '../../representation/screens/ligue1s/olympiquelyonnais_screen.dart';
import '../../representation/screens/ligue1s/olympiquemarseille_screen.dart';
import '../../representation/screens/ligue1s/psg_screen.dart';

import '../../representation/widgets/appbar_container.dart';
import 'package:flutter/material.dart';

import '../../core/constants/color_constants.dart';
import '../../core/constants/dismension_constants.dart';
import '../../helpers/asset_helper.dart';
import '../../helpers/image_helper.dart';

class Ligue1Screen extends StatefulWidget {
  const Ligue1Screen({super.key});
  static const String routeName = 'ligue1_screen';
  @override
  State<Ligue1Screen> createState() => _Ligue1ScreenState();
}

class _Ligue1ScreenState extends State<Ligue1Screen> {
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
      titleString: 'Ligue 1',
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
                    ImageHelper.loadFromAsset(AssetHelper.icoMacsay,
                        width: 65, height: 65),
                    const Color(0xffF77777),
                    () {
                      Navigator.of(context)
                          .pushNamed(OlympiqueMarseilleScareen.routeName);
                    },
                    'Olympique Marseille',
                  ),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoPsg,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context)
                        .pushNamed(ParisSaintGermainlScreen.routeName);
                  }, 'Paris Saint Germain'),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoMonaco,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(MonacoScreen.routeName);
                  }, 'Monaco'),
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width * 0.025),
                ),
              ],
            ),
            const SizedBox(
              height: kMediumPadding,
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
                      ImageHelper.loadFromAsset(AssetHelper.icoOlylyon,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context)
                        .pushNamed(OlympiqueLyonnaislScreen.routeName);
                  }, 'Olympique Lyon'),
                ),
                const SizedBox(
                  width: kItemPadding,
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
