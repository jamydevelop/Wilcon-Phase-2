import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/checklist_appbar_container_widget.dart';
import 'package:wilcon_phase2/widget/sidebar_widget.dart';

class ChecklistSummaryPage extends StatefulWidget {
  const ChecklistSummaryPage({super.key});

  @override
  State<ChecklistSummaryPage> createState() => _ChecklistSummaryPageState();
}

class _ChecklistSummaryPageState extends State<ChecklistSummaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer:
          const CustomSidebar(), // Make sure this is not const if it is not a const constructor
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Material(
              elevation: 4.0, // Adjust elevation for the floating effect
              shadowColor: Colors.black45, // Optional: To control shadow color
              child: ChecklistAppbarContainerWidget(),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: SizedBox(
                child: Container(
                  width: double.infinity,
                  color: Colors.teal,
                  child: const Text("data"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
