import 'package:flutter/material.dart';

class ChecklistSummaryTextLabelWidget extends StatefulWidget {
  const ChecklistSummaryTextLabelWidget({super.key});

  @override
  State<ChecklistSummaryTextLabelWidget> createState() =>
      _ChecklistSummaryTextLabelWidgetState();
}

class _ChecklistSummaryTextLabelWidgetState
    extends State<ChecklistSummaryTextLabelWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 12, 8, 12),
      child: const Text(
        'Checklist A (For General Contractor- Daily Safety and Security Checklist',
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w700, letterSpacing: 0.028),
      ),
    );
  }
}
