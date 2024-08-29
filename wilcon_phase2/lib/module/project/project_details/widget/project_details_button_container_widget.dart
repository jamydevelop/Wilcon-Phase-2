import 'package:flutter/material.dart';
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
            onPress: () {},
          ),
          const SizedBox(height: 12),
          OutlinedButtonWidget(
            titleText: "Generate Weekly Charges",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
