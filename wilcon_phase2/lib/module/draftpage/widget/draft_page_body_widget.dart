import 'package:flutter/material.dart';
import 'package:wilcon_phase2/widget/checklist_modal/dropdown_checklist_widget.dart';
import 'package:wilcon_phase2/widget/recent_checklist_body_widget.dart';

class DraftPageBodyWidget extends StatefulWidget {
  const DraftPageBodyWidget({super.key});

  @override
  State<DraftPageBodyWidget> createState() => _DraftPageBodyWidgetState();
}

class _DraftPageBodyWidgetState extends State<DraftPageBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: const Column(
          children: [
            DropdownChecklistWidget(),
            SizedBox(height: 24),
            RecentChecklistBodyWidget(),
          ],
        ),
      ),
    );
  }
}
