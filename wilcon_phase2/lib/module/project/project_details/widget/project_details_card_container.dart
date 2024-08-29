import 'package:flutter/material.dart';
import 'package:wilcon_phase2/widget/build_row_widget.dart';

class ProjectDetailsCardContainer extends StatefulWidget {
  const ProjectDetailsCardContainer({super.key});

  @override
  State<ProjectDetailsCardContainer> createState() =>
      _ProjectDetailsCardContainerState();
}

class _ProjectDetailsCardContainerState
    extends State<ProjectDetailsCardContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          BuildRowWidget(
            label: 'Checklist Number',
            value: 'Date & Time Created',
            backgroundColor: Colors.grey[200]!,
            isTopBorderActivate: false,
          ),
          const BuildRowWidget(
            label: '11',
            value: '3 Jan 2024 4:56 PM',
            backgroundColor: Colors.white,
            isTopBorderActivate: true,
          ),
          BuildRowWidget(
            label: '    ',
            value: '    ',
            backgroundColor: Colors.grey[200]!,
            isTopBorderActivate: true,
          ),
        ],
      ),
    );
  }
}
