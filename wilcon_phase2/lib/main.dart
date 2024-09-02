import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wilcon_phase2/module/auth/presentation/login_page.dart';
import 'package:wilcon_phase2/module/checklist/checklist_details/presentation/checklist_details_page.dart';
import 'package:wilcon_phase2/module/checklist/checklist_parts/presentation/checklist_parts_parge.dart';
import 'package:wilcon_phase2/module/checklist/checklist_signature/presentation/checklist_signature_page.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/presentation/checklist_summary_page.dart';
import 'package:wilcon_phase2/module/draftlist/presentation/draft_list_page.dart';
import 'package:wilcon_phase2/module/homepage/presentation/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Wilcon Phase 2',
      routerConfig: _router,
      // home: LoginPage(),
    );
  }

  final GoRouter _router = GoRouter(initialLocation: "/login_page", routes: [
    GoRoute(
        path: "/login_page", builder: (context, state) => const LoginPage()),
    GoRoute(path: "/home", builder: (context, state) => const Homepage()),
    GoRoute(path: "/home_page", builder: (context, state) => const Homepage()),
    GoRoute(
        path: "/draft_list_page",
        builder: (context, state) => const DraftlistPage()),
    //
    GoRoute(
        path: "/checklist_summary_page",
        builder: (context, state) => const ChecklistSummaryPage()),
    GoRoute(
        path: "/checklist_parts",
        builder: (context, state) => const ChecklistPartsParge()),

    GoRoute(
        path: "/signature_page",
        builder: (context, state) => const ChecklistSignaturePage()),
    //ChecklistDetailsPage
    GoRoute(
        path: "/details_page",
        builder: (context, state) => const ChecklistDetailsPage()),
  ]);
}
