import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/project/project_details/widget/project_details_end_project_dialog_widget.dart';
import 'package:wilcon_phase2/module/project/project_details/widget/project_details_generate_weekly_charges_widget.dart';
import 'package:wilcon_phase2/widget/buttons_widget/filled_button_widget.dart';
import 'package:wilcon_phase2/widget/buttons_widget/outlined_button_widget.dart';

class ProjectDetailsButtonContainerWidget extends StatefulWidget {
  const ProjectDetailsButtonContainerWidget({super.key});

  @override
  State<ProjectDetailsButtonContainerWidget> createState() =>
      _ProjectDetailsButtonContainerWidgetState();
}

class _ProjectDetailsButtonContainerWidgetState
    extends State<ProjectDetailsButtonContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          const SizedBox(height: 12),
          FilledButtonWidget(
            titleText: "End Project",
            onPress: () {
              _showEndProjectDialog(context);
            },
          ),
          const SizedBox(height: 12),
          OutlinedButtonWidget(
            titleText: "Generate Weekly Charges",
            onPressed: () {
              _showGenerateWeeklyChargesDialog(context);
            },
          ),
        ],
      ),
    );
  }

  void _showEndProjectDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const Dialog(
          backgroundColor: Colors.transparent,
          child: ProjectDetailsEndProjectDialogWidget(
            title: "Are you sure?",
            confirmationMessage: 'Are you sure you want to end this project?',
          ),
        );
      },
    );
  }

  void _showGenerateWeeklyChargesDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const Dialog(
          insetPadding: EdgeInsets.all(10),
          backgroundColor: Colors.transparent,
          child: ProjectDetailsGenerateWeeklyChargesWidget(),
        );
      },
    );
  }
}
