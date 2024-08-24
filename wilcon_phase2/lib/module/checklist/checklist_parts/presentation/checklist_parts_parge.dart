import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/checklist/checklist_parts/widget/checklist_parts_body.dart';
import 'package:wilcon_phase2/widget/sidebar_widget.dart';

class ChecklistPartsParge extends StatefulWidget {
  const ChecklistPartsParge({super.key});

  @override
  State<ChecklistPartsParge> createState() => _ChecklistPartsPargeState();
}

class _ChecklistPartsPargeState extends State<ChecklistPartsParge> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white, //*********** COLOR BLUE ***************
      endDrawer:
          CustomSidebar(), // Make sure this is not const if it is not a const constructor
      body: SafeArea(
        child: ChecklistPartsBody(),
      ),
    );
  }
}
