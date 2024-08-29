import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/project/project_details/presentation/project_details_page.dart';
import 'package:wilcon_phase2/module/project/project_list/widget/project_list_card_widget.dart';

class ProjectListContentBodyContainerWidget extends StatefulWidget {
  const ProjectListContentBodyContainerWidget({super.key});

  @override
  State<ProjectListContentBodyContainerWidget> createState() =>
      _ProjectListContentBodyContainerWidgetState();
}

class _ProjectListContentBodyContainerWidgetState
    extends State<ProjectListContentBodyContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      // color: const Color(0xFFF4F7FA),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            ProjectListCardWidget(
              mainTitle: 'Project ID#11',
              subTitle: 'completed',
              rowTitles: const ['Name', 'Location', 'status'],
              rowContents: const ['D68-Naic Renovation', 'D68-Naic', 'Active'],
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProjectDetailsPage()));
              },
            ),
            const SizedBox(height: 12),
            ProjectListCardWidget(
              mainTitle: 'Project ID#11',
              subTitle: 'completed',
              rowTitles: const ['Name', 'Location', 'status'],
              rowContents: const [
                'D68-Naic Renovation',
                'D68-Naic',
                'Inactive'
              ],
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProjectDetailsPage()));
              },
            ),
            const SizedBox(height: 12),
            ProjectListCardWidget(
              mainTitle: 'Project ID#11',
              subTitle: 'completed',
              rowTitles: const ['Name', 'Location', 'status'],
              rowContents: const [
                'D68-Naic Renovation',
                'D68-Naic',
                'Inactive'
              ],
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProjectDetailsPage()));
              },
            ),
            const SizedBox(height: 12),

            // Additional content can be added here
          ],
        ),
      ),
    );
  }
}
