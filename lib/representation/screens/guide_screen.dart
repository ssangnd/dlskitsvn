import '../../helpers/asset_helper.dart';

import '../../core/constants/textstyle_constants.dart';
import '../../helpers/image_helper.dart';
import '../../representation/widgets/appbar_container.dart';
import 'package:flutter/material.dart';

import '../../core/constants/dismension_constants.dart';

class GuideScreen extends StatelessWidget {
  const GuideScreen({super.key});

  static const String routeName = 'guide_screen';
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
                  Text('DLS Kits Viet Nam',
                      style: TextStyles
                          .defaultStyle.fontHeader.whiteTextColor.bold),
                  const SizedBox(
                    height: kMediumPadding,
                  ),
                  Text(
                    'Hướng dẫn sử dụng kit trong game DLS 2022',
                    style: TextStyles.defaultStyle.fontCaption.whiteTextColor,
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kDefaultPadding),
                  color: Colors.white,
                ),
                margin: const EdgeInsets.only(bottom: kMediumPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(right: kDefaultPadding),
                      child: ImageHelper.loadFromAsset(
                        AssetHelper.imgaeGuide1,
                        radius: const BorderRadius.only(
                          topLeft: Radius.circular(
                            kDefaultPadding,
                          ),
                          bottomRight: Radius.circular(
                            kDefaultPadding,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(
                        kDefaultPadding,
                      ),
                      child: Text(
                        '''Mở game Dream League Soccer 2022.''',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kDefaultPadding),
                  color: Colors.white,
                ),
                margin: const EdgeInsets.only(bottom: kMediumPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(right: kDefaultPadding),
                      child: ImageHelper.loadFromAsset(
                        AssetHelper.imgaeGuide2,
                        radius: const BorderRadius.only(
                          topLeft: Radius.circular(
                            kDefaultPadding,
                          ),
                          bottomRight: Radius.circular(
                            kDefaultPadding,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(
                        kDefaultPadding,
                      ),
                      child: Text(
                        '''Tiếp theo chọn Customize, sau đó chọn EDIT LOGO.''',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kDefaultPadding),
                  color: Colors.white,
                ),
                margin: const EdgeInsets.only(bottom: kMediumPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(right: kDefaultPadding),
                      child: ImageHelper.loadFromAsset(
                        AssetHelper.imgaeGuide3,
                        width: 700,
                        height: 400,
                        radius: const BorderRadius.only(
                          topLeft: Radius.circular(
                            kDefaultPadding,
                          ),
                          bottomRight: Radius.circular(
                            kDefaultPadding,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(
                        kDefaultPadding,
                      ),
                      child: Text(
                        '''Sau đó vào bạn copy link logo nhé!''',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kDefaultPadding),
                  color: Colors.white,
                ),
                margin: const EdgeInsets.only(bottom: kMediumPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(right: kDefaultPadding),
                      child: ImageHelper.loadFromAsset(
                        AssetHelper.imgaeGuide4,
                        radius: const BorderRadius.only(
                          topLeft: Radius.circular(
                            kDefaultPadding,
                          ),
                          bottomRight: Radius.circular(
                            kDefaultPadding,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(
                        kDefaultPadding,
                      ),
                      child: Text(
                        '''Dán link logo bạn vừa copy được vào đây nhé!''',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kDefaultPadding),
                  color: Colors.white,
                ),
                margin: const EdgeInsets.only(bottom: kMediumPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(right: kDefaultPadding),
                      child: ImageHelper.loadFromAsset(
                        AssetHelper.imgaeGuide5,
                        radius: const BorderRadius.only(
                          topLeft: Radius.circular(
                            kDefaultPadding,
                          ),
                          bottomRight: Radius.circular(
                            kDefaultPadding,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(
                        kDefaultPadding,
                      ),
                      child: Text(
                        '''Sau khi dán DLS sẽ save link và download về, phía trên là kết quả đổi logo thành công''',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kDefaultPadding),
                  color: Colors.white,
                ),
                margin: const EdgeInsets.only(bottom: kMediumPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(right: kDefaultPadding),
                      child: ImageHelper.loadFromAsset(
                        AssetHelper.imgaeGuide6,
                        radius: const BorderRadius.only(
                          topLeft: Radius.circular(
                            kDefaultPadding,
                          ),
                          bottomRight: Radius.circular(
                            kDefaultPadding,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(
                        kDefaultPadding,
                      ),
                      child: Text(
                        '''Để đổi áo đâu cho đội bóng bạn chọn tương tự Edit Kit rồi chọn Custom Kit rồi copy link kit áo đấu rồi dán vào, ở trên là kết quá đổi kit.''',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(
                        kDefaultPadding,
                      ),
                      child: Text(
                        '''Chúng các bạn thành công!''',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ));
  }
}
