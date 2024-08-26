import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/checklist/checklist_signature/widget/checklist_signature_appbar_container_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_signature/widget/checklist_signature_container_widget.dart';
import 'package:wilcon_phase2/widget/buttons_widget/filled_button_widget.dart';
import 'package:wilcon_phase2/widget/buttons_widget/outlined_button_widget.dart';

class ChecklistSignatureBodyWidget extends StatefulWidget {
  const ChecklistSignatureBodyWidget({super.key});

  @override
  State<ChecklistSignatureBodyWidget> createState() =>
      _ChecklistSignatureBodyWidgetState();
}

class _ChecklistSignatureBodyWidgetState
    extends State<ChecklistSignatureBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Material(
          elevation: 4.0, // Adjust elevation for the floating effect
          shadowColor: Colors.black45, // Optional: To control shadow color
          child: ChecklistSignatureAppbarContainerWidget(),
        ),
        const SizedBox(height: 12),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(
              bottom: 12,
              left: 12,
              right: 12,
            ),
            child: Column(
              children: <Widget>[
                const Expanded(
                  child: ChecklistSignatureContainerWidget(),
                ),
                const SizedBox(height: 12),
                FilledButtonWidget(titleText: 'Submit'),
                const SizedBox(height: 12),
                OutlinedButtonWidget(titleText: 'Clear'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
