import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/auth/presentation/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wilcon Phase 2',
      home: LoginPage(),
    );
  }
}
