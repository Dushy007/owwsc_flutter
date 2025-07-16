import 'package:flutter/material.dart';

import '../responsive/responsive_utils.dart';

class ResponsiveContainer extends StatelessWidget {
  final Widget child;
  final double? baseWidth;
  final double? baseHeight;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? color;
  final Decoration? decoration;

  const ResponsiveContainer({
    Key? key,
    required this.child,
    this.baseWidth,
    this.baseHeight,
    this.padding,
    this.margin,
    this.color,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: baseWidth,
        height: baseHeight,
        padding: padding ?? ResponsiveUtils.getResponsivePadding(context),
        margin: margin,
        color: color,
        decoration: decoration,
        constraints: ResponsiveUtils.getContainerConstraints(context),
        child: child,
      ),
    );
  }
}
