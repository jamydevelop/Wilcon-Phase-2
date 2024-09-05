import 'package:flutter/material.dart';

class AuthSignedInTextWidget extends StatefulWidget {
  const AuthSignedInTextWidget({super.key});

  @override
  State<AuthSignedInTextWidget> createState() => _AuthSignedInTextWidgetState();
}

class _AuthSignedInTextWidgetState extends State<AuthSignedInTextWidget> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'Sign In',
      style: TextStyle(
        fontFamily: 'Open Sans',
        fontSize: 20,
        fontWeight: FontWeight.w700,
        height: 20 / 20, // Line height 20px
        letterSpacing: 0.0015, // Letter spacing
        //textAlign: TextAlign.center,
      ),
    );
  }
}
