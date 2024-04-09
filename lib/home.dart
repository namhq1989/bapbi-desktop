import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  int _total = 0;

  @override
  Widget build(BuildContext context) {
    print('RENDER HOME SCREEN');

    super.build(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
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
                child: const Text('+'),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
              const SizedBox(height: 20),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
              const SizedBox(height: 20),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
              const SizedBox(height: 20),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
              const SizedBox(height: 20),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
              const SizedBox(height: 20),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
