import 'package:flutter/material.dart';
import 'package:wilcon_phase2/widget/build_row_widget.dart';

class SecondCardBodyWidget extends StatefulWidget {
  const SecondCardBodyWidget({super.key});

  @override
  State<SecondCardBodyWidget> createState() => _SecondCardBodyWidgetState();
}

class _SecondCardBodyWidgetState extends State<SecondCardBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuildRowWidget(
          label: 'Total Points For Major Incidents',
          value: '50',
          backgroundColor: Colors.grey[200]!,
          isTopBorderActivate: false,
        ),
        const BuildRowWidget(
            label: 'Total Points for Minor Incidents',
            value: '20',
            backgroundColor: Colors.white,
            isTopBorderActivate: false),
        BuildRowWidget(
          label: 'Total Accumulated Points',
          value: '70',
          backgroundColor: Colors.grey[200]!,
        ),
      ],
    );
  }
}
