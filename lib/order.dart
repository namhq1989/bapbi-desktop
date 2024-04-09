import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('RENDER ORDER SCREEN');
    return const Scaffold(
      body: SafeArea(
          child: Center(
        child: Text('ORDER SCREEN'),
      )),
    );
  }
}
