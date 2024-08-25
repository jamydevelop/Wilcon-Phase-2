import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/checklist/checklist_item/widget/checklist_item_modal_widget.dart';

class ChecklistItemClickableTextImgWidget extends StatefulWidget {
  final bool isInContainer;

  const ChecklistItemClickableTextImgWidget(
      {super.key, this.isInContainer = true});

  @override
  State<ChecklistItemClickableTextImgWidget> createState() =>
      _ChecklistItemClickableTextImgWidgetState();
}

class _ChecklistItemClickableTextImgWidgetState
    extends State<ChecklistItemClickableTextImgWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }

  void _showDropdownModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return const ChecklistItemModalWidget();
      },
    );
  }
}
