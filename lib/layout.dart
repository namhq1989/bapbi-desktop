import 'package:auto_route/auto_route.dart';
import 'package:bapbi_app/sidebar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Row(
        children: [
          Sidebar(),
          Center(
            child: Text('CONTENT'),
          ),
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
