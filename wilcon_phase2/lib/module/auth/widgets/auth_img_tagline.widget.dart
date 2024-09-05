import 'package:flutter/material.dart';

class AuthImgTaglineWidget extends StatefulWidget {
  const AuthImgTaglineWidget({super.key});

  @override
  State<AuthImgTaglineWidget> createState() => _AuthImgTaglineWidgetState();
}

class _AuthImgTaglineWidgetState extends State<AuthImgTaglineWidget> {
  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage('assets/images/TAGLINE.png'),
    );
  }
}
