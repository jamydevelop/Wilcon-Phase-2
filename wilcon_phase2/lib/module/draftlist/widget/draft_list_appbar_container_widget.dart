import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wilcon_phase2/widget/checklist_modal/dropdown_checklist_widget.dart';
import 'package:wilcon_phase2/widget/customized_appbar/appbar_widget.dart';
import 'package:wilcon_phase2/widget/customized_appbar/back_screen_widget.dart';
import 'package:wilcon_phase2/widget/header_bar_widget.dart';

class DraftListAppbarContainerWidget extends StatefulWidget {
  const DraftListAppbarContainerWidget({super.key});

  @override
  State<DraftListAppbarContainerWidget> createState() =>
      _DraftListAppbarContainerWidgetState();
}

class _DraftListAppbarContainerWidgetState
    extends State<DraftListAppbarContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: <Widget>[
            const CustomizedAppBar(),
            BackToPrevScreen(
              onPress: () {
                context.go("/home_page");
              },
            ),
            const SizedBox(height: 12),
            const HeaderBar(text: 'Draft List', isYellow: false),
            const SizedBox(height: 48),
            const DropdownChecklistWidget(),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
