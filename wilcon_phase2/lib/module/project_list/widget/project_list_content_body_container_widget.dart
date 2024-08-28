import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/homepage/widget/homepage_card_widget.dart';

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
    return const SizedBox(
      width: double.infinity,
      // color: const Color(0xFFF4F7FA),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            HomepageCardWidget(
              mainTitle: 'Project ID#11',
              subTitle: 'completed',
              rowTitles: ['Name', 'Location', 'status'],
              rowContents: ['D68-Naic Renovation', 'D68-Naic', 'Active'],
            ),
            SizedBox(height: 12),
            HomepageCardWidget(
              mainTitle: 'Project ID#11',
              subTitle: 'completed',
              rowTitles: ['Name', 'Location', 'status'],
              rowContents: ['D68-Naic Renovation', 'D68-Naic', 'Inactive'],
            ),
            SizedBox(height: 12),
            HomepageCardWidget(
              mainTitle: 'Project ID#11',
              subTitle: 'completed',
              rowTitles: ['Name', 'Location', 'status'],
              rowContents: ['D68-Naic Renovation', 'D68-Naic', 'Inactive'],
            ),

            // Additional content can be added here
          ],
        ),
      ),
    );
  }
}
