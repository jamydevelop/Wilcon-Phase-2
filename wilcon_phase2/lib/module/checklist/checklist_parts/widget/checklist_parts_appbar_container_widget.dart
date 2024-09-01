import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wilcon_phase2/widget/customized_appbar/appbar_widget.dart';
import 'package:wilcon_phase2/widget/customized_appbar/back_screen_widget.dart';
import 'package:wilcon_phase2/widget/header_bar_widget.dart';

class ChecklistPartsAppbarContainerWidget extends StatefulWidget {
  const ChecklistPartsAppbarContainerWidget({super.key});

  @override
  State<ChecklistPartsAppbarContainerWidget> createState() =>
      _ChecklistPartsAppbarContainerWidgetState();
}

class _ChecklistPartsAppbarContainerWidgetState
    extends State<ChecklistPartsAppbarContainerWidget> {
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
              text: 'Checklist Part',
              isYellow: false,
            ),
            const SizedBox(height: 12),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Input simple instruction here. Make it short.'),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
