import 'package:flutter/material.dart';

class BuildRowWidget extends StatelessWidget {
  final String label;
  final String? value;
  final Color backgroundColor;
  final bool isTopBorderActivate;
  final Widget? customWidget;

  const BuildRowWidget({
    super.key,
    required this.label,
    this.value,
    required this.backgroundColor,
    this.isTopBorderActivate = true,
    this.customWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        border: backgroundColor == Colors.grey[200]
            ? Border(
                top: isTopBorderActivate
                    ? const BorderSide(color: Colors.grey, width: 1.0)
                    : BorderSide.none,
                bottom: const BorderSide(color: Colors.grey, width: 1.0),
              )
            : null,
      ),
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Row(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Align all children to the start
        children: [
          Expanded(
            flex:
                2, // Adjust flex values so that label, value, and customWidget align
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.left, // Ensure text is aligned to the left
            ),
          ),
          if (value != null)
            Expanded(
              flex: 3,
              child: Text(
                value!,
                textAlign:
                    TextAlign.left, // Ensure value text is aligned to the left
              ),
            ),
          if (customWidget != null)
            Expanded(
              flex: 3, // Ensure the customWidget is aligned similarly
              child: Align(
                alignment: Alignment.centerLeft,
                child: customWidget!,
              ),
            ),
        ],
      ),
    );
  }
}
