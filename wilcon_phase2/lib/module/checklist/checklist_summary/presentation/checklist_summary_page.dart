import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/card_widget/card_body_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/checklist_appbar_container_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/text_label_widget.dart';
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
      backgroundColor: Colors.white, //*********** COLOR BLUE ***************
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
              child: SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.all(12),
                  width: double.infinity,
                  color: Colors.white, //*********** COLOR TEAL ***************
                  child: const Column(
                    children: <Widget>[
                      TextLabelWidget(),
                      CardBodyWidget(),
                      Divider(thickness: 1, color: Colors.grey),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
