import 'package:flutter/material.dart';
import 'package:wilcon_phase2/widget/buttons_widget/filled_button_widget.dart';
import 'package:wilcon_phase2/widget/buttons_widget/modal_close_button_widget.dart';
import 'package:wilcon_phase2/widget/buttons_widget/outlined_button_widget.dart';
import 'package:wilcon_phase2/widget/show_dialog/success_dialog_widget.dart';

class ProjectDetailsGenerateWeeklyChargesWidget extends StatefulWidget {
  const ProjectDetailsGenerateWeeklyChargesWidget({super.key});

  @override
  State<ProjectDetailsGenerateWeeklyChargesWidget> createState() =>
      _ProjectDetailsGenerateWeeklyChargesWidgetState();
}

class _ProjectDetailsGenerateWeeklyChargesWidgetState
    extends State<ProjectDetailsGenerateWeeklyChargesWidget> {
  String? _selectedReason;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Take all available width
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: ModalCloseButtonWidget(
              onPress: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          const Icon(
            Icons.error,
            color: Colors.redAccent,
            size: 48,
          ),
          const SizedBox(height: 16),
          const Text(
            'Generate Weekly Charges',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF313131),
            ),
          ),
          const SizedBox(height: 16),
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Select week',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF313131),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey, // Outline color
                width: 1.0, // Outline width
              ),
              borderRadius:
                  BorderRadius.circular(5.0), // Optional: Rounds the corners
            ),
            child: DropdownButtonFormField<String>(
              value: _selectedReason,
              hint: const Text("Week 51: December 18 - December 24, 2024"),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedReason = newValue;
                });
              },
              items: <String>[
                'Week 51: December 18 - December 24, 2024',
                '51st Week (18th Dec 2024 - 24th Dec 2024)',
                'Week 51 (18/12/2024 - 24/12/2024)',
                'Week #51 (Dec 18, 2024 - Dec 24, 2024)'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              decoration: const InputDecoration(
                enabledBorder: InputBorder
                    .none, // Removes the internal border of DropdownButtonFormField
                focusedBorder: InputBorder
                    .none, // Removes the internal border of DropdownButtonFormField when focused
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12), // Adds padding inside the dropdown
              ),
            ),
          ),
          const SizedBox(height: 16),
          FilledButtonWidget(
            titleText: 'Select',
            onPress: () {
              // Handle submit logic
              Navigator.of(context).pop();
              _showDialog(context);
            },
          ),
          const SizedBox(height: 16),
          OutlinedButtonWidget(
            titleText: 'Back',
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const Dialog(
          backgroundColor: Colors.transparent,
          child: SuccessDialogWidget(
              confirmationMessage: "Weekly charges has been generated."),
        );
      },
    );
  }
}
