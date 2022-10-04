import '../../representation/widgets/appbar_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      child: Container(
        color: Colors.amber,
      ),
    );
  }
}
