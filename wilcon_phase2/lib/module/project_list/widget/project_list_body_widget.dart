import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/project_list/widget/project_list_appbar_container_widget.dart';
import 'package:wilcon_phase2/module/project_list/widget/project_list_content_body_container_widget.dart';

class ProjectListBodyWidget extends StatefulWidget {
  const ProjectListBodyWidget({super.key});

  @override
  State<ProjectListBodyWidget> createState() => _ProjectListBodyWidgetState();
}

class _ProjectListBodyWidgetState extends State<ProjectListBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Material(
          elevation: 4.0, // Adjust elevation for the floating effect
          shadowColor: Colors.black45, // Optional: To control shadow color
          child: ProjectListAppbarContainerWidget(),
        ),
        const SizedBox(height: 12),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              width: double.infinity,
              child: const Column(
                children: <Widget>[
                  ProjectListContentBodyContainerWidget(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
