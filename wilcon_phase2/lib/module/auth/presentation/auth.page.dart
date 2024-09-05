import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/auth/widgets/auth_build_ui.widget.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          child: SafeArea(
            child: AuthBuildUiWidget(),
          ),
        ),
      ),
    );
  }
}
