import 'package:dlskitsvn/representation/screens/nationals/argentina_screen.dart';
import 'package:dlskitsvn/representation/screens/nationals/australia_screen.dart';
import 'package:dlskitsvn/representation/screens/nationals/belgium_screen.dart';
import 'package:dlskitsvn/representation/screens/nationals/brazil_screen.dart';
import 'package:dlskitsvn/representation/screens/nationals/chile_screen.dart';
import 'package:dlskitsvn/representation/screens/nationals/ecuado_screen.dart';
import 'package:dlskitsvn/representation/screens/nationals/england_screen.dart';
import 'package:dlskitsvn/representation/screens/nationals/france_screen.dart';
import 'package:dlskitsvn/representation/screens/nationals/germany_screen.dart';
import 'package:dlskitsvn/representation/screens/nationals/hungary_screen.dart';
import 'package:dlskitsvn/representation/screens/nationals/italia_screen.dart';
import 'package:dlskitsvn/representation/screens/nationals/japan_screen.dart';
import 'package:dlskitsvn/representation/screens/nationals/korea_screen.dart';
import 'package:dlskitsvn/representation/screens/nationals/mexico_screen.dart';
import 'package:dlskitsvn/representation/screens/nationals/portugal_screen.dart';
import 'package:dlskitsvn/representation/screens/nationals/spain_screen.dart';
import 'package:dlskitsvn/representation/screens/nationals/us_screen.dart';
import 'package:dlskitsvn/representation/screens/nationals/vn_screen.dart';
import 'package:dlskitsvn/representation/screens/serias/acmilan_screen.dart';
import 'package:dlskitsvn/representation/screens/serias/asroma_screen.dart';
import 'package:dlskitsvn/representation/screens/serias/intermilan_screen.dart';

import '../../representation/widgets/appbar_container.dart';
import 'package:flutter/material.dart';

import '../../core/constants/color_constants.dart';
import '../../core/constants/dismension_constants.dart';
import '../../helpers/asset_helper.dart';
import '../../helpers/image_helper.dart';

class NationalScreen extends StatefulWidget {
  const NationalScreen({super.key});
  static const String routeName = 'nationalScreen_screen';
  @override
  State<NationalScreen> createState() => _NationalScreenState();
}

class _NationalScreenState extends State<NationalScreen> {
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
      titleString: 'ĐTQG',
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
                    ImageHelper.loadFromAsset(AssetHelper.icoSpain,
                        width: 65, height: 65),
                    const Color(0xffF77777),
                    () {
                      Navigator.of(context).pushNamed(SpainlScreen.routeName);
                    },
                    'Tây Ban Nha',
                  ),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoVn,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(VietNamScreen.routeName);
                  }, 'Việt Nam'),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoJapan,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(JapanScreen.routeName);
                  }, 'Nhật Bản'),
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
                    ImageHelper.loadFromAsset(AssetHelper.icoArgentina,
                        width: 65, height: 65),
                    const Color(0xffF77777),
                    () {
                      Navigator.of(context)
                          .pushNamed(ArgentinaScreen.routeName);
                    },
                    'Argentina',
                  ),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoFrance,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(FranceScreen.routeName);
                  }, 'Pháp'),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoPortugal,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(PortugalScreen.routeName);
                  }, 'Bồ Đào Nha'),
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
                    ImageHelper.loadFromAsset(AssetHelper.icoItalia,
                        width: 65, height: 65),
                    const Color(0xffF77777),
                    () {
                      Navigator.of(context).pushNamed(ItalialScreen.routeName);
                    },
                    'Italia',
                  ),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoEngland,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(EnglandScreen.routeName);
                  }, 'Anh'),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoMexico,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(MexicoScreen.routeName);
                  }, 'Mexico'),
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
                    ImageHelper.loadFromAsset(AssetHelper.icoKorea,
                        width: 65, height: 65),
                    const Color(0xffF77777),
                    () {
                      Navigator.of(context).pushNamed(KoreaScreen.routeName);
                    },
                    'Hàn Quốc',
                  ),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoBrazil,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(BrazilScreen.routeName);
                  }, 'Brazil'),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoGermany,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(GermanyScreen.routeName);
                  }, 'Đức'),
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
                    ImageHelper.loadFromAsset(AssetHelper.icoHungary,
                        width: 65, height: 65),
                    const Color(0xffF77777),
                    () {
                      Navigator.of(context).pushNamed(HungaryScreen.routeName);
                    },
                    'Hungary',
                  ),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoAustralia,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(AustriaScreen.routeName);
                  }, 'Austria'),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoUs,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(UsScreen.routeName);
                  }, 'Mỹ'),
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
                    ImageHelper.loadFromAsset(AssetHelper.icoBelgium,
                        width: 65, height: 65),
                    const Color(0xffF77777),
                    () {
                      Navigator.of(context).pushNamed(BelgiumScreen.routeName);
                    },
                    'Bỉ',
                  ),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoEcuado,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(EcuadorScreen.routeName);
                  }, 'Ecuador'),
                ),
                const SizedBox(
                  width: kItemPadding,
                ),
                Expanded(
                  child: _buildItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoChile,
                          width: 65, height: 65),
                      const Color(0xffF77777), () {
                    Navigator.of(context).pushNamed(ChileScreen.routeName);
                  }, 'Chile'),
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width * 0.025),
                ),
              ],
            ),
            const SizedBox(
              height: 75,
            )
          ],
        ),
      ),
    );
  }
}
