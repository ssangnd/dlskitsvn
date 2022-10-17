import 'package:dlskitsvn/core/constants/dismension_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/constants/textstyle_constants.dart';
import '../../helpers/asset_helper.dart';
import '../../helpers/image_helper.dart';
import '../../core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class AppBarContainerWidget extends StatelessWidget {
  const AppBarContainerWidget({
    Key? key,
    required this.child,
    this.title,
    this.titleString,
    this.subTitleString,
    this.implementTraling = false,
    this.implementLeading = true,
    this.paddingContent = const EdgeInsets.symmetric(
      horizontal: kMediumPadding,
    ),
  })  : assert(title != null || titleString != null,
            'title or titleString can\'t be null'),
        super(key: key);

  final Widget child;
  final Widget? title;
  final String? titleString;
  final String? subTitleString;
  final bool implementTraling;
  final bool implementLeading;
  final EdgeInsets? paddingContent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 186,
            child: AppBar(
              title: title ??
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (implementLeading)
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  kDefaultPadding,
                                ),
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.all(kItemPadding),
                              child: const Icon(
                                FontAwesomeIcons.arrowLeft,
                                size: kDefaultPadding,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        Expanded(
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  titleString ?? '',
                                  style: TextStyles.defaultStyle.fontHeader
                                      .whiteTextColor.bold,
                                ),
                                if (subTitleString != null)
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: kMediumPadding),
                                    child: Text(
                                      subTitleString!,
                                      style: TextStyles.defaultStyle.fontCaption
                                          .whiteTextColor,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        if (implementTraling)
                          GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Chức năng đang phát triển!'),
                                ),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  kDefaultPadding,
                                ),
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.all(kItemPadding),
                              child: const Icon(
                                FontAwesomeIcons.bars,
                                size: kDefaultPadding,
                                color: Colors.black,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
              flexibleSpace: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xff9ED1D1D), Color(0xF8ED1D1D)],
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(35),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: ImageHelper.loadFromAsset(
                      AssetHelper.icoOvalTop,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: ImageHelper.loadFromAsset(
                      AssetHelper.icoOvalBottom,
                    ),
                  ),
                ],
              ),
              centerTitle: true,
              automaticallyImplyLeading: false,
              elevation: 0,
              toolbarHeight: 90,
              backgroundColor: ColorPalette.backgroundScaffoldColor,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 156),
            // padding: paddingContent,
            child: child,
          ),
        ],
      ),
    );
  }
}
