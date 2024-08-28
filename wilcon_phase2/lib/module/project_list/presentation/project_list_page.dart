import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/project_list/widget/project_list_body_widget.dart';
import 'package:wilcon_phase2/widget/sidebar_widget.dart';

class ProjectListPage extends StatefulWidget {
  const ProjectListPage({super.key});

  @override
  State<ProjectListPage> createState() => _ProjectListPageState();
}

class _ProjectListPageState extends State<ProjectListPage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white, //*********** COLOR BLUE ***************
        endDrawer:
            CustomSidebar(), // Make sure this is not const if it is not a const constructor
        body: SafeArea(
          child: ProjectListBodyWidget(),
        ),
      ),
    );
  }
}
