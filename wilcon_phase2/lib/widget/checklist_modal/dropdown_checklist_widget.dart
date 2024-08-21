import 'package:flutter/material.dart';
import 'package:wilcon_phase2/widget/checklist_modal/checklist_modal_widget.dart';

class DropdownChecklistWidget extends StatelessWidget {
  const DropdownChecklistWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: ListTile(
          title: const Text('Daily Safety and Security Checklist'),
          trailing: const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.grey,
          ),
          onTap: () {
            _showDropdownModal(context);
          },
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
        return const ChecklistModalWidget();
      },
    );
  }
}
