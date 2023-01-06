// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:sliver_widgets/components/app_avatar.dart';
import 'package:sliver_widgets/components/app_header/components/app_space_bar.dart';

class AppHeader extends StatelessWidget {
  final String title;

  const AppHeader({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: _buildLeading(),
      backgroundColor: Colors.black87,
      expandedHeight: 300,
      floating: false,
      pinned: true,
      toolbarHeight: 56.0,
      flexibleSpace: AppSpaceBar(title: title),
    );
  }

  Widget _buildLeading() => Builder(
        builder: (context) => IconButton(
          icon: AppAvatar(),
          onPressed: Scaffold.of(context).openDrawer,
        ),
      );
}
