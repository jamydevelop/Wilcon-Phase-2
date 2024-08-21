import 'package:flutter/material.dart';
import 'package:wilcon_phase2/widget/project_modal/project_modal_widget.dart';

class DropdownProjectWidget extends StatefulWidget {
  const DropdownProjectWidget({super.key});

  @override
  State<DropdownProjectWidget> createState() => _DropdownProjectWidgetState();
}

class _DropdownProjectWidgetState extends State<DropdownProjectWidget> {
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
          title: const Text('Project Name Here...'),
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
        return const ProjectModalWidget();
      },
    );
  }
}
