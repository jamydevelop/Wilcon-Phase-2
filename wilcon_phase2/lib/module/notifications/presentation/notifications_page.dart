import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/notifications/widgets/notification_appbar_container_widget.dart';
import 'package:wilcon_phase2/module/notifications/widgets/notification_body_widget.dart';
import 'package:wilcon_phase2/widget/buttons_widget/filled_button_widget.dart';
import 'package:wilcon_phase2/widget/sidebar_widget.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const CustomSidebar(),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Material(
              elevation: 4.0,
              shadowColor: Colors.black45,
              child: NotificationAppbarContainerWidget(),
            ),
            const SizedBox(height: 23.69),
            const SizedBox(height: 12),
            Expanded(
              child: Card(
                margin: const EdgeInsets.all(0),
                color: Colors.white,
                elevation: 1.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: const Column(
                  children: [
                    // Wrap NotificationBodyWidget with Expanded
                    Expanded(child: NotificationBodyWidget()),
                    // Or you can also wrap FilledButtonWidget with Padding or SizedBox to adjust its position
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FilledButtonWidget(
                        titleText: 'Load More',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
