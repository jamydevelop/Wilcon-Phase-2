import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/auth/widgets/auth_img_background_widget.dart';
import 'package:wilcon_phase2/module/auth/widgets/auth_login_form_widget.dart';

class AuthBuildUiWidget extends StatefulWidget {
  const AuthBuildUiWidget({super.key});

  @override
  State<AuthBuildUiWidget> createState() => _AuthBuildUiWidgetState();
}

class _AuthBuildUiWidgetState extends State<AuthBuildUiWidget> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AuthImgBackgroundWidget(),
        AuthLoginFormWidget(),
      ],
    );
  }
}
