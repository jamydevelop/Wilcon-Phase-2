import 'package:flutter/material.dart';
import 'package:wilcon_phase2/widget/build_row_widget.dart';

class ThirdCardBodyWidget extends StatefulWidget {
  const ThirdCardBodyWidget({super.key});

  @override
  State<ThirdCardBodyWidget> createState() => _ThirdCardBodyWidgetState();
}

class _ThirdCardBodyWidgetState extends State<ThirdCardBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
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
      ),
    );
  }
}
