import 'package:flutter/material.dart';
import 'package:wilcon_phase2/widget/checklist_modal/dropdown_checklist_widget.dart';
import 'package:wilcon_phase2/widget/recent_checklist_body_widget.dart';

class DraftlistPageBodyWidget extends StatefulWidget {
  const DraftlistPageBodyWidget({super.key});

  @override
  State<DraftlistPageBodyWidget> createState() =>
      _DraftlistPageBodyWidgetState();
}

class _DraftlistPageBodyWidgetState extends State<DraftlistPageBodyWidget> {
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
