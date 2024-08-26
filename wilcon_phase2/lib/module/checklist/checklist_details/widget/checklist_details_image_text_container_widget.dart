import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/checklist/checklist_details/widget/checklist_details_clickable_text_img_widget.dart';

class ChecklistDetailsImageTextContainerWidget extends StatefulWidget {
  const ChecklistDetailsImageTextContainerWidget({super.key});

  @override
  State<ChecklistDetailsImageTextContainerWidget> createState() =>
      _ChecklistDetailsImageTextContainerWidgetState();
}

class _ChecklistDetailsImageTextContainerWidgetState
    extends State<ChecklistDetailsImageTextContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                // margin: const EdgeInsets.symmetric(vertical: 8.0),
                padding: const EdgeInsets.all(12.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: const Row(
                  children: [
                    Text(
                      '1.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(width: 8.0),
                    ChecklistDetailsClickableTextImgWidget(isInContainer: true),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border(
                    top: BorderSide(color: Colors.grey[400]!),
                    bottom: BorderSide(color: Colors.grey[400]!),
                    left: BorderSide.none,
                    right: BorderSide.none,
                  ),
                ),
                child: const Row(
                  children: [
                    Text(
                      '2.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(width: 8.0),
                    ChecklistDetailsClickableTextImgWidget(isInContainer: true),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
