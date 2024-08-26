import 'package:flutter/material.dart';
import 'package:signature/signature.dart';
import 'package:wilcon_phase2/widget/buttons_widget/filled_button_widget.dart';
import 'package:wilcon_phase2/widget/buttons_widget/outlined_button_widget.dart';

class ChecklistSignatureContainerWidget extends StatefulWidget {
  const ChecklistSignatureContainerWidget({super.key});

  @override
  State<ChecklistSignatureContainerWidget> createState() =>
      _ChecklistSignatureContainerWidgetState();
}

class _ChecklistSignatureContainerWidgetState
    extends State<ChecklistSignatureContainerWidget> {
  final controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportPenColor: Colors.black,
      exportBackgroundColor: Colors.black);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.transparent,
        child: Column(
          children: [
            _signatureWidget(),
            const SizedBox(height: 12),
            const FilledButtonWidget(titleText: 'Submit'),
            const SizedBox(height: 12),
            const OutlinedButtonWidget(titleText: 'Clear'),
          ],
        ));
  }

  Widget _signatureWidget() {
    return Container(
      height: MediaQuery.of(context).size.height *
          0.526, // Set a specific height or use MediaQuery to calculate
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF166E16), // Border color
          width: 2, // Border width
        ),
      ),
      child: Signature(
        controller: controller,
        width: double.infinity,
        height: double.infinity,
        backgroundColor: Colors.white,
      ),
    );
  }
}
