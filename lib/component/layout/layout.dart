import 'package:auto_route/auto_route.dart';
import 'package:bapbi_app/component/english/ui/dashboard.dart';
import 'package:bapbi_app/component/health/ui/dashboard.dart';
import 'package:bapbi_app/component/layout/header/header.dart';
import 'package:bapbi_app/invoice.dart';
import 'package:bapbi_app/order.dart';
import 'package:bapbi_app/product.dart';
import 'package:bapbi_app/component/layout/sidebar.dart';
import 'package:bapbi_app/widget/notification_listener.dart';
import 'package:flutter/material.dart';

const backgroundStartColor = Color(0xFFFFD500);
const backgroundEndColor = Color(0xFFF6A00C);

@RoutePage()
class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int _selectedIndex = 4;
  final PageController _pageController = PageController(
    initialPage: 4,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const AppNotificationListener(),
          Sidebar(
              selectedIndex: _selectedIndex,
              onSelect: (i) {
                setState(() {
                  _selectedIndex = i;
                  _pageController.jumpToPage(i);
                });
              }),
          Expanded(
            child: Column(
              children: [
                const Header(),
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      HealthDashboardScreen(),
                      ProductScreen(),
                      OrderScreen(),
                      InvoiceScreen(),
                      EnglishDashboardScreen(),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
