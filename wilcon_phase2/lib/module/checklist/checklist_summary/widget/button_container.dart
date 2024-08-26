import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/checklist/checklist_parts/presentation/checklist_parts_parge.dart';
import 'package:wilcon_phase2/module/checklist/checklist_signature/presentation/checklist_signature_page.dart';
import 'package:wilcon_phase2/widget/buttons_widget/filled_button_widget.dart';
import 'package:wilcon_phase2/widget/buttons_widget/only_text_button_widget.dart';
import 'package:wilcon_phase2/widget/buttons_widget/outlined_button_widget.dart';

class ButtonContainer extends StatefulWidget {
  const ButtonContainer({super.key});

  @override
  State<ButtonContainer> createState() => _ButtonContainerState();
}

class _ButtonContainerState extends State<ButtonContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          const SizedBox(height: 12),
          FilledButtonWidget(
            titleText: 'View Checklist',
            onPress: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const ChecklistPartsParge()),
              );
            },
          ),
          const SizedBox(height: 12),
          FilledButtonWidget(
            titleText: 'Confirm',
            onPress: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ChecklistSignaturePage()));
            },
          ),
          const SizedBox(height: 12),
          const OutlinedButtonWidget(titleText: 'Return to Security Officer'),
          const SizedBox(height: 12),
          const OnlyTextButtonWidget(titleText: 'Delete'),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
