import 'package:flutter/material.dart';
import 'package:wilcon_phase2/routes.dart';

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
      routerConfig: AppPages.router,
      // home: LoginPage(),
    );
  }

  // final GoRouter _router = GoRouter(initialLocation: "/login_page", routes: [
  //   GoRoute(path: "/login_page", builder: (context, state) => const AuthPage()),
  //   GoRoute(path: "/home", builder: (context, state) => const Homepage()),
  //   GoRoute(path: "/home_page", builder: (context, state) => const Homepage()),
  //   GoRoute(
  //       path: "/draft_list_page",
  //       builder: (context, state) => const DraftlistPage()),
  //   //
  //   GoRoute(
  //       path: "/checklist_summary_page",
  //       builder: (context, state) => const ChecklistSummaryPage()),
  //   GoRoute(
  //       path: "/checklist_parts",
  //       builder: (context, state) => const ChecklistPartsParge()),

  //   GoRoute(
  //       path: "/signature_page",
  //       builder: (context, state) => const ChecklistSignaturePage()),
  //   //ChecklistDetailsPage
  //   GoRoute(
  //       path: "/details_page",
  //       builder: (context, state) => const ChecklistDetailsPage()),
  //   GoRoute(
  //       path: "/not_compiled",
  //       builder: (context, state) => const ChecklistNotCompiledPage()),
  //   //ProjectDetailsPage
  //   GoRoute(
  //       path: "/project_details",
  //       builder: (context, state) => const ProjectDetailsPage()),
  // ]);
}
