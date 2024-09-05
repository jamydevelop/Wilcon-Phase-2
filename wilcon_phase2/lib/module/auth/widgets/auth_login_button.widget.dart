import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wilcon_phase2/routes.dart';

class AuthLoginButtonWidget extends StatefulWidget {
  const AuthLoginButtonWidget({super.key});

  @override
  State<AuthLoginButtonWidget> createState() => _AuthLoginButtonWidgetState();
}

class _AuthLoginButtonWidgetState extends State<AuthLoginButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context)
          .size
          .width, // Set the width to 100% of the screen
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color.fromRGBO(22, 110, 22, 1),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          minimumSize:
              const Size(double.infinity, 52), // Set the height to 52px
          padding:
              const EdgeInsets.all(16), // Add padding inside the button of 16px
          foregroundColor: Colors.white, // Set text color to white
        ),
        onPressed: () {
          GoRouter.of(context).go(AppRoute.homePage);
          //GoRouter.of(context).go("/home");
          //context.go("/home");
        },
        child: const Text('Login'),
      ),
    );
  }
}
