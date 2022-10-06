import 'package:dlskitsvn/representation/screens/serias/acmilan_screen.dart';
import 'package:dlskitsvn/representation/screens/serias/asroma_screen.dart';
import 'package:dlskitsvn/representation/screens/serias/intermilan_screen.dart';
import 'package:dlskitsvn/representation/screens/serias/juventus_screen.dart';
import 'package:dlskitsvn/representation/screens/serias/napoli_screen.dart';

import '../../representation/screens/ligue1s/monaco_screen.dart';
import '../../representation/screens/ligue1s/olympiquelyonnais_screen.dart';

import '../../representation/screens/ligue1s/psg_screen.dart';

import '../../representation/widgets/appbar_container.dart';
import 'package:flutter/material.dart';

import '../../core/constants/color_constants.dart';
import '../../core/constants/dismension_constants.dart';
import '../../helpers/asset_helper.dart';
import '../../helpers/image_helper.dart';

class SeriaScreen extends StatefulWidget {
  const SeriaScreen({super.key});
  static const String routeName = 'SeriaScreen_screen';
  @override
  State<SeriaScreen> createState() => _SeriaScreenState();
}

class _SeriaScreenState extends State<SeriaScreen> {
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
      titleString: 'Seria',
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
                    ImageHelper.loadFromAsset(AssetHelper.icoNapoli,
                        width: 65, height: 65),
                    const Color(0xffF77777),
                    () {
                      Navigator.of(context).pushNamed(NapoliScreen.routeName);
                    },
                    'Napoli',
                  ),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoJuventus,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(JuventuslScreen.routeName);
                  }, 'Juventus'),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoAcMilan,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(AcMilanScreen.routeName);
                  }, 'AC Milan'),
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
                    ImageHelper.loadFromAsset(AssetHelper.icoRoma,
                        width: 65, height: 65),
                    const Color(0xffF77777),
                    () {
                      Navigator.of(context).pushNamed(AsRomaScreen.routeName);
                    },
                    'AS Roma',
                  ),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoIntermilan,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(InterMilanScreen.routeName);
                  }, 'Inter Milan'),
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width * 0.025),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
