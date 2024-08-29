import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/project/project_details/widget/project_details_appbar_container_widget.dart';
import 'package:wilcon_phase2/module/project/project_details/widget/project_details_content_body_container_widget.dart';

class ProjectDetailsBodyWidget extends StatefulWidget {
  const ProjectDetailsBodyWidget({super.key});

  @override
  State<ProjectDetailsBodyWidget> createState() =>
      _ProjectDetailsBodyWidgetState();
}

class _ProjectDetailsBodyWidgetState extends State<ProjectDetailsBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Material(
          elevation: 4.0, // Adjust elevation for the floating effect
          shadowColor: Colors.black45, // Optional: To control shadow color
          child: ProjectDetailsAppbarContainerWidget(),
        ),
        const SizedBox(height: 12),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              width: double.infinity,
              child: const Column(
                children: <Widget>[
                  ProjectDetailsContentBodyContainerWidget(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
