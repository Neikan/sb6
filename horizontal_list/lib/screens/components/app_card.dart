// Flutter imports:
import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final int item;

  const AppCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      elevation: 10,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        title: Text('$item'),
      ),
    );
  }
}
