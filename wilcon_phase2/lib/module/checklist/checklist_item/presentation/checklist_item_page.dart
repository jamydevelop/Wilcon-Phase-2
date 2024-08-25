import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/checklist/checklist_item/widget/checklist_item_body_widget.dart';
import 'package:wilcon_phase2/widget/sidebar_widget.dart';

class ChecklistItemPage extends StatefulWidget {
  const ChecklistItemPage({super.key});

  @override
  State<ChecklistItemPage> createState() => _ChecklistItemPageState();
}

class _ChecklistItemPageState extends State<ChecklistItemPage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SafeArea(
        child: Scaffold(
          backgroundColor:
              Colors.white, //*********** COLOR BLUE ***************
          endDrawer:
              CustomSidebar(), // Make sure this is not const if it is not a const constructor
          body: SafeArea(
            child: ChecklistItemBodyWidget(),
          ),
        ),
      ),
    );
  }
}
