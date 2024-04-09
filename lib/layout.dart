import 'package:auto_route/auto_route.dart';
import 'package:bapbi_app/header.dart';
import 'package:bapbi_app/home.dart';
import 'package:bapbi_app/invoice.dart';
import 'package:bapbi_app/order.dart';
import 'package:bapbi_app/product.dart';
import 'package:bapbi_app/sidebar.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

const backgroundStartColor = Color(0xFFFFD500);
const backgroundEndColor = Color(0xFFF6A00C);

@RoutePage()
class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Sidebar(onSelect: (i) {
            setState(() {
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
                    children: const [
                      HomeScreen(),
                      ProductScreen(),
                      OrderScreen(),
                      InvoiceScreen(),
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

class NavLink extends StatelessWidget {
  const NavLink({super.key, required this.label, required this.destination});

  final String label;
  final PageRouteInfo destination;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => {context.router.push(destination)},
        child: Text(label));
  }
}

final buttonColors = WindowButtonColors(
    iconNormal: const Color(0xFF805306),
    mouseOver: const Color(0xFFF6A00C),
    mouseDown: const Color(0xFF805306),
    iconMouseOver: const Color(0xFF805306),
    iconMouseDown: const Color(0xFFFFD500));

final closeButtonColors = WindowButtonColors(
    mouseOver: const Color(0xFFD32F2F),
    mouseDown: const Color(0xFFB71C1C),
    iconNormal: const Color(0xFF805306),
    iconMouseOver: Colors.white);

class WindowButtons extends StatelessWidget {
  const WindowButtons({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(colors: buttonColors),
        MaximizeWindowButton(colors: buttonColors),
        CloseWindowButton(colors: closeButtonColors),
      ],
    );
  }
}
