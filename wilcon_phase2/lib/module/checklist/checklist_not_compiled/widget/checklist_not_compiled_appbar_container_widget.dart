import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wilcon_phase2/widget/customized_appbar/appbar_widget.dart';
import 'package:wilcon_phase2/widget/customized_appbar/back_screen_widget.dart';
import 'package:wilcon_phase2/widget/header_bar_widget.dart';

class ChecklistNotCompiledAppbarContainerWidget extends StatefulWidget {
  const ChecklistNotCompiledAppbarContainerWidget({super.key});

  @override
  State<ChecklistNotCompiledAppbarContainerWidget> createState() =>
      _ChecklistNotCompiledAppbarContainerWidgetState();
}

class _ChecklistNotCompiledAppbarContainerWidgetState
    extends State<ChecklistNotCompiledAppbarContainerWidget> {
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
                GoRouter.of(context).go("/details_page");
              },
            ),
            const SizedBox(height: 12),
            const HeaderBar(
              text: 'Complete installed perimeter fence and perimeter lights',
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
