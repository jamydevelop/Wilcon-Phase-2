import 'package:flutter/material.dart';
import 'package:wilcon_phase2/widget/build_row_widget.dart';

class SecondCardBodyWidget extends StatefulWidget {
  final void Function()? onPress;

  const SecondCardBodyWidget({super.key, this.onPress});

  @override
  State<SecondCardBodyWidget> createState() => _SecondCardBodyWidgetState();
}

class _SecondCardBodyWidgetState extends State<SecondCardBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPress,
      child: Column(
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
            isTopBorderActivate: false,
          ),
          BuildRowWidget(
            label: 'Total Accumulated Points',
            value: '70',
            backgroundColor: Colors.grey[200]!,
          ),
        ],
      ),
    );
  }
}
