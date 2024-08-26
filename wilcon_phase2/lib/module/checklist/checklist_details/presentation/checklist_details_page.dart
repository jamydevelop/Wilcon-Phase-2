import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/checklist/checklist_details/widget/checklist_details_body_widget.dart';
import 'package:wilcon_phase2/widget/sidebar_widget.dart';

class ChecklistDetailsPage extends StatefulWidget {
  const ChecklistDetailsPage({super.key});

  @override
  State<ChecklistDetailsPage> createState() => _ChecklistDetailsPageState();
}

class _ChecklistDetailsPageState extends State<ChecklistDetailsPage> {
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
            child: ChecklistDetailsBodyWidget(),
          ),
        ),
      ),
    );
  }
}
