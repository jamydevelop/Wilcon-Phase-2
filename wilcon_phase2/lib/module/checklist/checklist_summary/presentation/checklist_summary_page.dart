import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/checklist_appbar_container_widget.dart';
import 'package:wilcon_phase2/widget/sidebar_widget.dart';

class ChecklistSummaryPage extends StatefulWidget {
  const ChecklistSummaryPage({super.key});

  @override
  State<ChecklistSummaryPage> createState() => _ChecklistSummaryPageState();
}

class _ChecklistSummaryPageState extends State<ChecklistSummaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //*********** COLOR BLUE ***************
      endDrawer:
          const CustomSidebar(), // Make sure this is not const if it is not a const constructor
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Material(
              elevation: 4.0, // Adjust elevation for the floating effect
              shadowColor: Colors.black45, // Optional: To control shadow color
              child: ChecklistAppbarContainerWidget(),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: SizedBox(
                child: Container(
                  margin: const EdgeInsets.all(12),
                  width: double.infinity,
                  color: Colors.white, //*********** COLOR TEAL ***************
                  child: Column(
                    children: <Widget>[
                      _textLabel(),
                      _textBody(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _textLabel() {
    return Container(
      margin: const EdgeInsets.fromLTRB(8, 12, 8, 12),
      child: const Text(
        'Checklist A (For General Contractor- Daily Safety and Security Checklist',
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w700, letterSpacing: 0.028),
      ),
    );
  }

  Widget _textBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildRow('Project', '[Do not Select] Project A', Colors.grey[200]!),
        _buildRow('Location', 'D02 - Balintawak', Colors.white),
        _buildRowWithBadge('Status', 'Not Validated', Colors.grey[200]!),
        _buildRow('Contractor', '[Do not Select] Contractor A', Colors.white),
        _buildRow('Project In-Charge', 'PIC Eloisa', Colors.grey[200]!),
        _buildRow('Date of Inspection', 'Nov 15, 2023', Colors.white),
        _buildRow(
            'Date & Time Created', '3 Jan 2024 12:00 PM', Colors.grey[200]!),
      ],
    );
  }

  Widget _buildRow(String label, String value, Color backgroundColor) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        border: backgroundColor == Colors.grey[200]
            ? const Border(
                top: BorderSide(color: Colors.grey, width: 1.0),
                bottom: BorderSide(color: Colors.grey, width: 1.0),
              )
            : null,
      ),
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(value),
          ),
        ],
      ),
    );
  }

  Widget _buildRowWithBadge(String label, String value, Color backgroundColor) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        border: backgroundColor == Colors.grey[200]
            ? const Border(
                top: BorderSide(color: Colors.grey, width: 1.0),
                bottom: BorderSide(color: Colors.grey, width: 1.0),
              )
            : null,
      ),
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    value,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
