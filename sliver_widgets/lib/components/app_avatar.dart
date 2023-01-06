// Flutter imports:
import 'package:flutter/material.dart';

class AppAvatar extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final double? radius;

  const AppAvatar({
    Key? key,
    this.padding,
    this.radius = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Align(
        alignment: Alignment.center,
        child: CircleAvatar(
          radius: radius,
          backgroundImage: NetworkImage('https://neikan.pro/img/foto/me.png'),
        ),
      ),
    );
  }
}
