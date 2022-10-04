import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/constants/dismension_constants.dart';
import '../../core/constants/textstyle_constants.dart';
import '../../representation/widgets/appbar_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      child: Container(),
    );
  }
}
