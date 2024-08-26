import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/checklist/checklist_details/widget/checklist_details_modal_widget.dart';

class ChecklistDetailsClickableTextImgWidget extends StatefulWidget {
  final bool isInContainer;

  const ChecklistDetailsClickableTextImgWidget(
      {super.key, this.isInContainer = true});

  @override
  State<ChecklistDetailsClickableTextImgWidget> createState() =>
      _ChecklistDetailsClickableTextImgWidgetState();
}

class _ChecklistDetailsClickableTextImgWidgetState
    extends State<ChecklistDetailsClickableTextImgWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        alignment: Alignment.centerLeft, // Force alignment to the left
        child: GestureDetector(
          onTap: () {
            _showDropdownModal(context); // Call the method here
          },
          child: Text(
            'picture.jpg',
            style: TextStyle(
              color: Colors.green,
              decoration: TextDecoration.underline,
              decorationColor: Colors.green,
              fontWeight:
                  widget.isInContainer ? FontWeight.bold : FontWeight.normal,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }

  void _showDropdownModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return const ChecklistDetailsModalWidget();
      },
    );
  }
}
