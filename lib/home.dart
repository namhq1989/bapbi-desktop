import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('HOME SCREEN: $_total'),
              Container(
                height: 10.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _total += 1;
                    });
                  },
                  child: const Text('+')),
            ],
          ),
        ),
      ),
    );
  }
}
