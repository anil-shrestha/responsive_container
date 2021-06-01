import 'package:flutter/material.dart';

class RContainer extends StatelessWidget {
  final Widget mobile;
  final Widget tab;
  final Widget desk;
  final int tabletMinWidth;
  final int desktopMinWidth;
  const RContainer(
      {Key? key,
      required this.mobile,
      Widget? tablet,
      Widget? desktop,
      this.tabletMinWidth = 800,
      this.desktopMinWidth = 1200})
      : tab = tablet ?? mobile,
        desk = desktop ?? tablet ?? mobile,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= desktopMinWidth) {
        return desk;
      } else if (constraints.maxWidth >= tabletMinWidth) {
        return tab;
      } else {
        return mobile;
      }
    });
  }
}
