import 'package:flutter/material.dart';
import 'package:wilcon_phase2/widget/customized_appbar/appbar_widget.dart';
import 'package:wilcon_phase2/widget/customized_appbar/back_screen_widget.dart';
import 'package:wilcon_phase2/widget/header_bar_widget.dart';

class ChecklistSignatureAppbarContainerWidget extends StatefulWidget {
  const ChecklistSignatureAppbarContainerWidget({super.key});

  @override
  State<ChecklistSignatureAppbarContainerWidget> createState() =>
      _ChecklistSignatureAppbarContainerWidgetState();
}

class _ChecklistSignatureAppbarContainerWidgetState
    extends State<ChecklistSignatureAppbarContainerWidget> {
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
              text: 'Signature',
              isYellow: false,
            ),
            SizedBox(height: 12),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Please sign as a confirmation of the checklist.'),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
