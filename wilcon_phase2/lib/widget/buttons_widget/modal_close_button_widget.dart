import 'package:flutter/material.dart';

class ModalCloseButtonWidget extends StatelessWidget {
  final VoidCallback? onPress;

  const ModalCloseButtonWidget({super.key, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: const Icon(Icons.close_outlined),
    );
  }
}
