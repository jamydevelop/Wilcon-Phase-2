import 'package:flutter/material.dart';
import 'package:wilcon_phase2/widget/project_modal/dropdown_project_widget.dart';
import 'package:wilcon_phase2/widget/recent_checklist_body_widget.dart';
import 'package:wilcon_phase2/module/homepage/widget/draft_list_button_widget.dart';
import 'package:wilcon_phase2/widget/checklist_modal/dropdown_checklist_widget.dart';

class HomePageBodyWidget extends StatefulWidget {
  const HomePageBodyWidget({super.key});

  @override
  State<HomePageBodyWidget> createState() => _HomePageBodyWidgetState();
}

class _HomePageBodyWidgetState extends State<HomePageBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: const Column(
          children: [
            DropdownChecklistWidget(),
            SizedBox(height: 12),
            DropdownProjectWidget(),
            SizedBox(height: 24),
            DraftListButtonWidget(),
            SizedBox(height: 24),
            RecentChecklistBodyWidget(),
          ],
        ),
      ),
    );
  }
}
