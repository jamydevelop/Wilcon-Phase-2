import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/project/project_details/widget/project_details_body_widget.dart';
import 'package:wilcon_phase2/widget/sidebar_widget.dart';

class ProjectDetailsPage extends StatefulWidget {
  const ProjectDetailsPage({super.key});

  @override
  State<ProjectDetailsPage> createState() => _ProjectDetailsPageState();
}

class _ProjectDetailsPageState extends State<ProjectDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white, //*********** COLOR BLUE ***************
        endDrawer:
            CustomSidebar(), // Make sure this is not const if it is not a const constructor
        body: SafeArea(
          child: ProjectDetailsBodyWidget(),
        ),
      ),
    );
  }
}
