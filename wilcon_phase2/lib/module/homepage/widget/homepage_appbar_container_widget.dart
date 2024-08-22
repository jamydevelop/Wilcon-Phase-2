import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/homepage/widget/draft_list_button_widget.dart';
import 'package:wilcon_phase2/module/homepage/widget/text_widget/security_text_widget.dart';
import 'package:wilcon_phase2/widget/checklist_modal/dropdown_checklist_widget.dart';
import 'package:wilcon_phase2/widget/customized_appbar/appbar_widget.dart';
import 'package:wilcon_phase2/widget/project_modal/dropdown_project_widget.dart';

class HomepageAppbarContainerWidget extends StatefulWidget {
  const HomepageAppbarContainerWidget({super.key});

  @override
  State<HomepageAppbarContainerWidget> createState() =>
      _HomepageAppbarContainerWidgetState();
}

class _HomepageAppbarContainerWidgetState
    extends State<HomepageAppbarContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // This container is used to create the shadow below the widget
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 20, // Adjust height for shadow effect
            decoration: BoxDecoration(
              color: Colors.transparent,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3), // Shadow color
                  offset: const Offset(0, 10), // Position the shadow underneath
                  blurRadius: 20, // Blur effect of the shadow
                  spreadRadius: 5, // Spread radius of the shadow
                ),
              ],
            ),
          ),
        ),
        // This is your original widget with elevation around it
        Material(
          elevation: 0, // No additional elevation needed here
          color: Colors.transparent,
          child: Container(
            color: Colors.white,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  CustomizedAppBar(),
                  SizedBox(height: 48),
                  SecurityTextWidget(),
                  SizedBox(height: 24),
                  DropdownChecklistWidget(),
                  SizedBox(height: 12),
                  DropdownProjectWidget(),
                  SizedBox(height: 24),
                  DraftListButtonWidget(),
                  SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
