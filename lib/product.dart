import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('RENDER PRODUCT SCREEN');
    return const Scaffold(
      body: SafeArea(
          child: Center(
        child: Text('PRODUCT SCREEN'),
      )),
    );
  }
}
