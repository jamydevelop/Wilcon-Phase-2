import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/card_widget/build_row_widget.dart';

class ThirdCardBodyWidget extends StatefulWidget {
  const ThirdCardBodyWidget({super.key});

  @override
  State<ThirdCardBodyWidget> createState() => _ThirdCardBodyWidgetState();
}

class _ThirdCardBodyWidgetState extends State<ThirdCardBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuildRowWidget(
          label: 'Comment here. Sample sentence here.',
          backgroundColor: Colors.grey[200]!,
          isTopBorderActivate: false,
        ),
        const BuildRowWidget(
            label: 'Comment here. Sample sentence here.',
            backgroundColor: Colors.white,
            isTopBorderActivate: false),
      ],
    );
  }
}
