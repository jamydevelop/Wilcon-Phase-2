import 'package:flutter/material.dart';
import 'package:wilcon_phase2/widget/customized_appbar/appbar_widget.dart';
import 'package:wilcon_phase2/widget/customized_appbar/back_screen_widget.dart';
import 'package:wilcon_phase2/widget/header_bar_widget.dart';

class RandomAppbarContainerWidget extends StatefulWidget {
  const RandomAppbarContainerWidget({super.key});

  @override
  State<RandomAppbarContainerWidget> createState() =>
      _RandomAppbarContainerWidgetState();
}

class _RandomAppbarContainerWidgetState
    extends State<RandomAppbarContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomizedAppBar(),
            BackToPrevScreen(),
            SizedBox(height: 12),
            HeaderBar(
              text: 'RandomTitle',
              isYellow: false,
            ),
            SizedBox(height: 12),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Input simple instruction here. Make it short.'),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
