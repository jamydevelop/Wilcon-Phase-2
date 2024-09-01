import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/homepage/widget/text_widget/recent_checklist_text_widget.dart';
import 'package:wilcon_phase2/module/homepage/widget/homepage_card_widget.dart';

class HomepageCardContainerWidget extends StatefulWidget {
  const HomepageCardContainerWidget({super.key});

  @override
  State<HomepageCardContainerWidget> createState() =>
      _HomepageCardContainerWidgetState();
}

class _HomepageCardContainerWidgetState
    extends State<HomepageCardContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        color: const Color(0xFFF4F7FA), // Updated background color
        child: const SingleChildScrollView(
          child: Column(
            children: [
              RecentChecklistTextWidget(),
              SizedBox(height: 24),
              HomepageCardWidget(
                mainTitle: 'Checklist #432',
                subTitle: 'Security',
                rowTitles: ['Project', 'Location', 'Status'],
                rowContents: [
                  '(Do not Select) Project A',
                  'D02 - Balintawak',
                  'Acknowledge',
                ],
              ),
              SizedBox(height: 12),
              HomepageCardWidget(
                mainTitle: 'Checklist #432',
                subTitle: 'Security',
                rowTitles: ['Project', 'Location', 'Status'],
                rowContents: [
                  '(Do not Select) Project A',
                  'D02 - Balintawak',
                  'Not Validated',
                ],
              ),
              SizedBox(height: 12),
              HomepageCardWidget(
                mainTitle: 'Checklist #432',
                subTitle: 'Security',
                rowTitles: ['Project', 'Location', 'Status'],
                rowContents: [
                  '(Do not Select) Project A',
                  'D02 - Balintawak',
                  'For checking of inspector',
                ],
              ),
              SizedBox(height: 12),
              HomepageCardWidget(
                mainTitle: 'Checklist #432',
                subTitle: 'Security',
                rowTitles: ['Project', 'Location'],
                rowContents: [
                  '(Do not Select) Project A',
                  'D02 - Balintawak',
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
