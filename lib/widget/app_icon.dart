import 'package:clgapp/util/daimantion.dart';
import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  // ignore: non_constant_identifier_names
  final double Iconsize;
  AppIcon(
      {super.key,
      required this.icon,
      this.backgroundColor = const Color(0xfffcf4e4),
      this.iconColor = const Color(0xff756d54),
      this.size = 40,
      // ignore: non_constant_identifier_names
      this.Iconsize = 16});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size / 2),
          color: backgroundColor),
      child: Icon(
        icon,
        color: iconColor,
        size: Iconsize,
      ),
    );
  }
}
