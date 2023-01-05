// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:sliver_widgets/components/app_avatar.dart';

class AppHeaderLeading extends StatelessWidget {
  const AppHeaderLeading({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: AppAvatar(),
      onPressed: Scaffold.of(context).openDrawer,
    );
  }
}
