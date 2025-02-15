import 'package:auto_route/auto_route.dart';
import 'package:bapbi_app/component/health/ui/hydration_stats.dart';
import 'package:bapbi_app/widget/content_view.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HealthDashboardScreen extends StatefulWidget {
  const HealthDashboardScreen({super.key});

  @override
  State<HealthDashboardScreen> createState() => _HealthDashboardScreenState();
}

class _HealthDashboardScreenState extends State<HealthDashboardScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const ContentView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HydrationStats(),
        ],
      ),
    );
  }
}
