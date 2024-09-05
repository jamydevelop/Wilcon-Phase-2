import 'package:go_router/go_router.dart';
import 'package:wilcon_phase2/module/auth/presentation/auth.page.dart';
import 'package:wilcon_phase2/module/checklist/checklist_details/presentation/checklist_details_page.dart';
import 'package:wilcon_phase2/module/checklist/checklist_not_compiled/presentation/checklist_not_compiled_page.dart';
import 'package:wilcon_phase2/module/checklist/checklist_parts/presentation/checklist_parts_parge.dart';
import 'package:wilcon_phase2/module/checklist/checklist_signature/presentation/checklist_signature_page.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/presentation/checklist_summary_page.dart';
import 'package:wilcon_phase2/module/draftlist/presentation/draft_list_page.dart';
import 'package:wilcon_phase2/module/homepage/presentation/home.page.dart';
import 'package:wilcon_phase2/module/notifications/presentation/notifications_page.dart';
import 'package:wilcon_phase2/module/project/project_details/presentation/project_details_page.dart';

class AppPages {
  static final GoRouter router =
      GoRouter(initialLocation: AppRoute.loginPage, routes: [
    GoRoute(
        path: AppRoute.loginPage,
        builder: (context, state) => const AuthPage()),
    GoRoute(
        path: AppRoute.homePage, builder: (context, state) => const HomePage()),
    GoRoute(
        path: AppRoute.draftlistPage,
        builder: (context, state) => const DraftlistPage()),
    GoRoute(
        path: AppRoute.checklistSummaryPage,
        builder: (context, state) => const ChecklistSummaryPage()),
    GoRoute(
        path: AppRoute.notificationPage,
        builder: (context, state) => const NotificationsPage()),
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
    GoRoute(
        path: "/not_compiled",
        builder: (context, state) => const ChecklistNotCompiledPage()),
    //ProjectDetailsPage
    GoRoute(
        path: "/project_details",
        builder: (context, state) => const ProjectDetailsPage()),
  ]);
}

abstract class AppRoute {
  static const initialPage = '/';
  static const loginPage = '/login_page';
  static const homePage = '/home_page';
  static const draftlistPage = '/draft_list_page';
  static const checklistSummaryPage = '/checklist_summary_page';
  static const notificationPage = '/notification_page';
}
