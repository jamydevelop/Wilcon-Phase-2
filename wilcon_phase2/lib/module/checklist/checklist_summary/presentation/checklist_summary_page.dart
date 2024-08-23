import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/checklist_body_widget.dart';
import 'package:wilcon_phase2/widget/sidebar_widget.dart';

class ChecklistSummaryPage extends StatefulWidget {
  const ChecklistSummaryPage({super.key});

  @override
  State<ChecklistSummaryPage> createState() => _ChecklistSummaryPageState();
}

class _ChecklistSummaryPageState extends State<ChecklistSummaryPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white, //*********** COLOR BLUE ***************
      endDrawer:
          CustomSidebar(), // Make sure this is not const if it is not a const constructor
      body: SafeArea(
        child: ChecklistBodyWidget(),
      ),
    );
  }
}
