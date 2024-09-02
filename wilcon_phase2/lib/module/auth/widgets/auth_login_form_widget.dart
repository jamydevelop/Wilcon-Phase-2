import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/auth/widgets/auth_img_inventi_widget.dart';
import 'package:wilcon_phase2/module/auth/widgets/auth_login_button_widget.dart';
import 'package:wilcon_phase2/module/auth/widgets/auth_signed_in_text_widget.dart';

class AuthLoginFormWidget extends StatefulWidget {
  const AuthLoginFormWidget({super.key});

  @override
  State<AuthLoginFormWidget> createState() => _AuthLoginFormWidgetState();
}

class _AuthLoginFormWidgetState extends State<AuthLoginFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(10), // Optional: Adds rounded corners
          ),
          child: const Padding(
            padding: EdgeInsets.only(left: 12, right: 12, bottom: 16),
            child: Form(
              child: Column(
                mainAxisSize: MainAxisSize
                    .min, // Adjusted to min to avoid excessive height
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 24),
                  AuthSignedInTextWidget(),
                  SizedBox(height: 24),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email Address',
                    ),
                  ),
                  SizedBox(height: 24),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(height: 24),
                  AuthLoginButtonWidget(),
                  SizedBox(height: 24),
                  SizedBox(width: 99, height: 16),
                  AuthImgInventiWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
