import 'package:dlskitsvn/representation/widgets/appbar_container.dart';
import 'package:dlskitsvn/representation/widgets/item_kits_widget.dart';
import 'package:flutter/material.dart';

import '../../../models/item_model.dart';

class ViettelScreen extends StatefulWidget {
  const ViettelScreen({super.key});

  static const String routeName = 'viettel_screen';

  @override
  State<ViettelScreen> createState() => _ViettelScreenState();
}

class _ViettelScreenState extends State<ViettelScreen> {
  final List<ItemModel> listRoom = [
    ItemModel(
      image: 'https://i.imgur.com/AqR2lbJ.png',
      name: 'Logo',
      size: 40,
      price: 1,
    ),
    ItemModel(
      image: 'https://i.imgur.com/zzlqaoj.png',
      name: 'Home Kit',
      size: 40,
      price: 2,
    ),
    ItemModel(
      image: 'https://i.imgur.com/NvNUIH0.png',
      name: 'Away Kit',
      size: 40,
      price: 3,
    ),
    ItemModel(
      image: 'https://i.imgur.com/KMSsNVN.png',
      name: 'Goalkeeper Home Kit',
      size: 40,
      price: 4,
    ),
    ItemModel(
      image: 'https://i.imgur.com/mEk7N6g.png',
      name: 'Goalkeeper Away Kit',
      size: 40,
      price: 5,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      titleString: 'Viettel FC',
      implementLeading: true,
      implementTraling: true,
      child: SingleChildScrollView(
        child: Column(
          children: listRoom
              .map(
                (e) => ItemKitsWidget(
                  itemModel: e,
                  onTap: () {},
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
