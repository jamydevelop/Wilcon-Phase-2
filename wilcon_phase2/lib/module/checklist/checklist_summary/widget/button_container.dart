import 'package:flutter/material.dart';
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
      child: const Column(
        children: [
          SizedBox(height: 12),
          FilledButtonWidget(titleText: 'View Checklist'),
          SizedBox(height: 12),
          OutlinedButtonWidget(titleText: 'Edit'),
          SizedBox(height: 12),
          OnlyTextButtonWidget(titleText: 'Delete'),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}
