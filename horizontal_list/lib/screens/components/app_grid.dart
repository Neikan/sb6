// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:horizontal_list/screens/components/app_card.dart';

class AppGrid extends StatelessWidget {
  final List<int> items;

  const AppGrid({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2,
      ),
      itemCount: items.length,
      itemBuilder: (_, index) => AppCard(
        item: items[index],
      ),
    );
  }
}
