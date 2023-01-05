// Flutter imports:
import 'package:flutter/material.dart';

class AppSliverList extends StatelessWidget {
  final List<String> items;

  const AppSliverList({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> _children = items
        .map(
          (item) => ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            title: Text(item),
          ),
        )
        .toList();

    return SliverList(
      delegate: SliverChildListDelegate(_children),
    );
  }
}
