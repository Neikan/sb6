// Flutter imports:
import 'package:flutter/material.dart';

class AppSpaceBar extends StatelessWidget {
  final String title;

  const AppSpaceBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final _colorFilter = ColorFilter.mode(
      Colors.black.withOpacity(0.5),
      BlendMode.darken,
    );

    final _background = Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/batman.jpg'),
          fit: BoxFit.cover,
          colorFilter: _colorFilter,
        ),
      ),
    );

    return FlexibleSpaceBar(
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      background: _background,
    );
  }
}
