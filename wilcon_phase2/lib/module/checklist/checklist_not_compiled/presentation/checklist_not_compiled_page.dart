import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/checklist/checklist_not_compiled/widget/checklist_not_compiled_body_widget.dart';
import 'package:wilcon_phase2/widget/sidebar_widget.dart';

class ChecklistNotCompiledPage extends StatefulWidget {
  const ChecklistNotCompiledPage({super.key});

  @override
  State<ChecklistNotCompiledPage> createState() =>
      _ChecklistNotCompiledPageState();
}

class _ChecklistNotCompiledPageState extends State<ChecklistNotCompiledPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white, //*********** COLOR BLUE ***************
      endDrawer:
          CustomSidebar(), // Make sure this is not const if it is not a const constructor
      body: SafeArea(
        child: ChecklistNotCompiledBodyWidget(),
      ),
    );
  }
}
