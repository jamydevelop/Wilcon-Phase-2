import 'package:flutter/material.dart';
import 'package:wilcon_phase2/widget/buttons_widget/filled_button_widget.dart';
import 'package:wilcon_phase2/widget/buttons_widget/modal_close_button_widget.dart';

class SuccessDialogWidget extends StatefulWidget {
  final String confirmationMessage;

  const SuccessDialogWidget({
    super.key,
    this.confirmationMessage =
        'This checklist has been confirmed.', // Default value
  });

  @override
  State<SuccessDialogWidget> createState() => _SuccessDialogWidgetState();
}

class _SuccessDialogWidgetState extends State<SuccessDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Takes up all available width
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Align(
            alignment: Alignment.topRight,
            child: ModalCloseButtonWidget(),
          ),
          _thankYouBody(),
        ],
      ),
    );
  }

  Widget _thankYouBody() {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const Icon(
            Icons.check_circle,
            color: Color(0xFF10513F), // Icon color
            size: 48,
          ),
          const SizedBox(height: 16),
          const Text(
            'Thank You!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF313131), // Text color
            ),
          ),
          const SizedBox(height: 8),
          Text(
            widget.confirmationMessage,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF313131), // Text color
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          FilledButtonWidget(
            titleText: 'Ok',
            onPress: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
