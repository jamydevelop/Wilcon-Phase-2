import 'package:flutter/material.dart';
import 'package:wilcon_phase2/widget/build_row_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/card_widget/build_row_with_badge.dart';

class FirstCardBodyWidget extends StatefulWidget {
  const FirstCardBodyWidget({super.key});

  @override
  State<FirstCardBodyWidget> createState() => _FirstCardBodyWidgetState();
}

class _FirstCardBodyWidgetState extends State<FirstCardBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuildRowWidget(
            label: 'Project',
            value: '[Do not Select] Project A',
            backgroundColor: Colors.grey[200]!),
        const BuildRowWidget(
            label: 'Location',
            value: 'D02 - Balintawak',
            backgroundColor: Colors.white),
        BuildRowWithBadge(
            label: 'Status',
            value: 'Not Validated',
            backgroundColor: Colors.grey[200]!),
        const BuildRowWidget(
            label: 'Contractor',
            value: '[Do not Select] Contractor A',
            backgroundColor: Colors.white),
        BuildRowWidget(
            label: 'Project In-Charge',
            value: 'PIC Eloisa',
            backgroundColor: Colors.grey[200]!),
        const BuildRowWidget(
            label: 'Date of Inspection',
            value: 'Nov 15, 2023',
            backgroundColor: Colors.white),
        BuildRowWidget(
            label: 'Date & Time Created',
            value: '3 Jan 2024 12:00 PM',
            backgroundColor: Colors.grey[200]!),
      ],
    );
  }
}
