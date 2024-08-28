import 'package:flutter/material.dart';
import 'package:signature/signature.dart';
import 'package:wilcon_phase2/widget/buttons_widget/filled_button_widget.dart';
import 'package:wilcon_phase2/widget/buttons_widget/outlined_button_widget.dart';
import 'package:wilcon_phase2/widget/show_dialog/success_dialog_widget.dart';

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
          Expanded(
            child: _signatureWidget(),
          ),
          const SizedBox(height: 12),
          FilledButtonWidget(
            titleText: 'Submit',
            onPress: () {
              _showDialog(context);
            },
          ),
          const SizedBox(height: 12),
          OutlinedButtonWidget(
            titleText: 'Clear',
            onPressed: () {
              controller.clear(); // Clear the signature
            },
          ),
        ],
      ),
    );
  }

  Widget _signatureWidget() {
    return Container(
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

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const Dialog(
          backgroundColor: Colors.transparent,
          child: SuccessDialogWidget(),
        );
      },
    );
  }
}
