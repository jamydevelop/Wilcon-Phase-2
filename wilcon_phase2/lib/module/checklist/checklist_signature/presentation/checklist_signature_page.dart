import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/checklist/checklist_signature/widget/checklist_signature_body_widget.dart';
import 'package:wilcon_phase2/widget/sidebar_widget.dart';

class ChecklistSignaturePage extends StatefulWidget {
  const ChecklistSignaturePage({super.key});

  @override
  State<ChecklistSignaturePage> createState() => _ChecklistSignaturePageState();
}

class _ChecklistSignaturePageState extends State<ChecklistSignaturePage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white, //*********** COLOR BLUE ***************
        endDrawer:
            CustomSidebar(), // Make sure this is not const if it is not a const constructor
        body: SafeArea(
          child: ChecklistSignatureBodyWidget(),
        ),
      ),
    );
  }
}
