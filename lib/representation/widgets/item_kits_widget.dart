import '../../core/constants/dismension_constants.dart';
import 'package:flutter/material.dart';

import '../../core/constants/textstyle_constants.dart';
import '../../helpers/image_helper.dart';
import '../../models/item_model.dart';
import 'button_small_widget.dart';
import 'button_widget.dart';
import 'dash_line.dart';

class ItemKitsWidget extends StatelessWidget {
  const ItemKitsWidget(
      {super.key, required this.itemModel, this.onTap, this.numberOfRoom});
  final ItemModel itemModel;
  final Function()? onTap;
  final int? numberOfRoom;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kMediumPadding),
        color: Colors.white,
      ),
      margin: const EdgeInsets.only(bottom: kMediumPadding),
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      itemModel.name,
                      style: TextStyles.defaultStyle.fontHeader.bold,
                    ),
                    const SizedBox(
                      height: kMin3,
                    ),
                    SizedBox(
                      width: 100,
                      child: ButtonSmallWidget(
                        data: 'Hướng dẫn',
                        onTap: () {},
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: ImageHelperNetwork.loadFromNetwork(itemModel.image,
                    radius: BorderRadius.circular(kMin3)),
              ),
            ],
          ),
          const SizedBox(
            height: kMin3,
          ),
          Row(
            children: [
              const SizedBox(
                width: kMinPadding,
              ),
              const Text(
                'URL: ',
              ),
              Text(
                itemModel.image,
                style: TextStyles.defaultStyle.subTitleTextColor,
              ),
            ],
          ),
          const DashLineWidget(),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      itemModel.price.toString(),
                      style: TextStyles.defaultStyle.fontHeader.bold,
                    ),
                    const SizedBox(
                      height: kMinPadding,
                    ),
                    Text(
                      '/No',
                      style: TextStyles.defaultStyle.fontCaption,
                    )
                  ],
                ),
              ),
              Expanded(
                child: numberOfRoom == null
                    ? ButtonWidget(
                        data: 'Copy',
                        onTap: onTap,
                      )
                    : Text(
                        '$numberOfRoom room',
                        textAlign: TextAlign.end,
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
