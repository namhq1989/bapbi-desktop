import 'package:bapbi_app/constant.dart';
import 'package:flutter/material.dart';

class ContainerStandard extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final Widget content;

  const ContainerStandard({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.backgroundColor,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(AppStyles.borderRadius),
      ),
      child: content,
    );
  }
}
