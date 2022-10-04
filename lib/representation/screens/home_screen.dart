import 'package:dlskitsvn/helpers/asset_helper.dart';
import 'package:dlskitsvn/helpers/image_helper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/constants/dismension_constants.dart';
import '../../core/constants/textstyle_constants.dart';
import '../../representation/widgets/appbar_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              vertical: kMinPadding,
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
          Text(title)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      // titleString: 'Home',
      // implementLeading: true,
      // implementTraling: true,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kItemPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Xin chào!',
                    style:
                        TextStyles.defaultStyle.fontHeader.whiteTextColor.bold),
                const SizedBox(
                  height: kMediumPadding,
                ),
                Text(
                  'Trải nghiệm ứng dụng để có những kit tuyệt vời',
                  style: TextStyles.defaultStyle.fontCaption.whiteTextColor,
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              FontAwesomeIcons.bell,
              size: kDefaultIconSize,
              color: Colors.white,
            ),
            const SizedBox(
              width: kMinPadding,
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  kItemPadding,
                ),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(kItemPadding),
              // child: ImageHelper.loadFromAsset(
              //   AssetHelper.person,
              // ),
            ),
          ],
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: _buildItemCategory(
                    ImageHelper.loadFromAsset(AssetHelper.icoVleague,
                        width: 75, height: 75),
                    const Color(0xffF77777),
                    () {},
                    'VLeague'),
              ),
              const SizedBox(
                width: kDefaultPadding,
              ),
              Expanded(
                child: _buildItemCategory(
                    ImageHelper.loadFromAsset(AssetHelper.icoPpremierLeague,
                        width: 75, height: 75),
                    const Color(0xffF77777),
                    () {},
                    'Premier League'),
              ),
              const SizedBox(
                width: kDefaultPadding,
              ),
              Expanded(
                child: _buildItemCategory(
                    ImageHelper.loadFromAsset(AssetHelper.icoLaliga,
                        width: 75, height: 75),
                    const Color(0xffF77777),
                    () {},
                    'Laliga'),
              ),
              const SizedBox(
                width: kDefaultPadding,
              ),
            ],
          ),
          const SizedBox(
            height: kMediumPadding,
          ),
          Row(
            children: [
              Expanded(
                child: _buildItemCategory(
                    ImageHelper.loadFromAsset(AssetHelper.icoLigue1,
                        width: 75, height: 75),
                    const Color(0xffF77777),
                    () {},
                    'Ligue 1'),
              ),
              const SizedBox(
                width: kDefaultPadding,
              ),
              Expanded(
                child: _buildItemCategory(
                    ImageHelper.loadFromAsset(AssetHelper.icoBundesliga,
                        width: 75, height: 75),
                    const Color(0xffF77777),
                    () {},
                    'Bundesliga'),
              ),
              const SizedBox(
                width: kDefaultPadding,
              ),
              Expanded(
                child: _buildItemCategory(
                    ImageHelper.loadFromAsset(AssetHelper.icoSeria,
                        width: 75, height: 75),
                    const Color(0xffF77777),
                    () {},
                    'Seria'),
              ),
              const SizedBox(
                width: kDefaultPadding,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
