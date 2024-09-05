import 'package:flutter/material.dart';

class AuthImgInventiWidget extends StatefulWidget {
  const AuthImgInventiWidget({super.key});

  @override
  State<AuthImgInventiWidget> createState() => _AuthImgInventiWidgetState();
}

class _AuthImgInventiWidgetState extends State<AuthImgInventiWidget> {
  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage('assets/images/Powered.png'),
    );
  }
}
