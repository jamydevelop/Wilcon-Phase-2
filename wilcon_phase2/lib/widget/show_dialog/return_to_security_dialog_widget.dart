import 'package:flutter/material.dart';
import 'package:wilcon_phase2/widget/buttons_widget/filled_button_widget.dart';
import 'package:wilcon_phase2/widget/buttons_widget/modal_close_button_widget.dart';
import 'package:wilcon_phase2/widget/buttons_widget/outlined_button_widget.dart';
import 'package:wilcon_phase2/widget/show_dialog/success_dialog_widget.dart';

class ReturnToSecurityDialogWidget extends StatefulWidget {
  const ReturnToSecurityDialogWidget({super.key});

  @override
  State<ReturnToSecurityDialogWidget> createState() =>
      _ReturnToSecurityDialogWidgetState();
}

class _ReturnToSecurityDialogWidgetState
    extends State<ReturnToSecurityDialogWidget> {
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
            Icons.error_outline,
            color: Colors.redAccent,
            size: 48,
          ),
          const SizedBox(height: 16),
          const Text(
            'Return to Security Officer',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF313131),
            ),
          ),
          const SizedBox(height: 16),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Choose a reason',
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
              hint: const Text("Reason"),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedReason = newValue;
                });
              },
              items: <String>['Reason 1', 'Reason 2', 'Reason 3', 'Others']
                  .map<DropdownMenuItem<String>>((String value) {
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
          if (_selectedReason ==
              'Others') // Show the TextField only if "Others" is selected
            Column(
              children: [
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Input here the reason for disapproval.",
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          const SizedBox(height: 16),
          FilledButtonWidget(
            titleText: 'Submit',
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
              confirmationMessage:
                  "This checklist has been returned to security officer."),
        );
      },
    );
  }
}
