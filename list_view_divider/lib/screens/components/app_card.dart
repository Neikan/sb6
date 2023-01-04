// Flutter imports:
import 'package:flutter/material.dart';

class AppListTile extends StatelessWidget {
  final int item;

  const AppListTile({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      title: Text('$item'),
    );
  }
}
