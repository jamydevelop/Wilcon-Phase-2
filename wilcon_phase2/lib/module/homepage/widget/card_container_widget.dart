import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/homepage/widget/text_widget/recent_checklist_text_widget.dart';

class CardContainerWidget extends StatefulWidget {
  const CardContainerWidget({super.key});

  @override
  State<CardContainerWidget> createState() => _CardContainerWidgetState();
}

class _CardContainerWidgetState extends State<CardContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(0.0),
        color: const Color(0xFFF4F7FA), // Updated background color
        child: const RecentChecklistTextWidget(),
      ),
    );
  }
}
