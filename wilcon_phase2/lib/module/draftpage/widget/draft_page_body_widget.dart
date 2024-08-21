import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/homepage/widget/dropdown_list_widget.dart';
import 'package:wilcon_phase2/module/homepage/widget/recent_checklist_body_widget.dart';

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
            DropdownListWidget(),
            SizedBox(height: 24),
            RecentChecklistBodyWidget(),
          ],
        ),
      ),
    );
  }
}
