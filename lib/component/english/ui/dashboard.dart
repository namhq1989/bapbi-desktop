import 'package:auto_route/auto_route.dart';
import 'package:bapbi_app/component/english/ui/recent_words.dart';
import 'package:bapbi_app/widget/container_standard.dart';
import 'package:bapbi_app/widget/content_view.dart';
import 'package:flutter/material.dart';

@RoutePage()
class EnglishDashboardScreen extends StatefulWidget {
  const EnglishDashboardScreen({super.key});

  @override
  State<EnglishDashboardScreen> createState() => _EnglishDashboardScreenState();
}

class _EnglishDashboardScreenState extends State<EnglishDashboardScreen>
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
          Column(
            children: [
              EnglishRecentWords(),
            ],
          ),
        ],
      ),
    );
  }
}
