import 'package:flutter/material.dart';

class DividerWithMarginWidget extends StatefulWidget {
  const DividerWithMarginWidget({super.key});

  @override
  State<DividerWithMarginWidget> createState() =>
      _DividerWithMarginWidgetState();
}

class _DividerWithMarginWidgetState extends State<DividerWithMarginWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: const Column(
        children: [Divider(thickness: 1, color: Colors.grey)],
      ),
    );
  }
}
