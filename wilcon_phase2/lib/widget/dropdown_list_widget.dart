import 'package:flutter/material.dart';

class DropdownListWidget extends StatefulWidget {
  const DropdownListWidget({super.key});

  @override
  State<DropdownListWidget> createState() => _DropdownListWidgetState();
}

class _DropdownListWidgetState extends State<DropdownListWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: ExpansionTile(
          title: const Text('Daily Safety and Security Checklist'),
          trailing: Icon(
            _isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
            color: Colors.grey,
          ),
          onExpansionChanged: (bool expanded) {
            setState(() => _isExpanded = expanded);
          },
          children: const <Widget>[
            // Add your expanded content here
            ListTile(
              title: Text('Daily Sanitation Checklist'),
            ),
            ListTile(
              title: Text(
                  'daily Inspection Checklist \n for roving security Coordinators'),
            ),
            ListTile(
              title: Text('quarterly Risk Assessment Checklist'),
            ),
            ListTile(
              title: Text('Quarterly Security Agency Evaluation Form'),
            ),
          ],
        ),
      ),
    );
  }
}
