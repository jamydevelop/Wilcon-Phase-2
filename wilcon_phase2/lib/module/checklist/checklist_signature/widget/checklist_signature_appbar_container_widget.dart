import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            const SizedBox(height: 24),
            const CustomizedAppBar(),
            BackToPrevScreen(
              onPress: () {
                GoRouter.of(context).go("/checklist_summary_page");
              },
            ),
            const SizedBox(height: 12),
            const HeaderBar(
              text: 'Signature',
              isYellow: false,
            ),
            const SizedBox(height: 12),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Please sign as a confirmation of the checklist.'),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
