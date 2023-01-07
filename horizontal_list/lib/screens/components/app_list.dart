// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:horizontal_list/screens/components/app_card.dart';

class AppList extends StatelessWidget {
  final List<int> items;

  const AppList({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      itemCount: items.length,
      itemBuilder: (_, index) => AppCard(
        item: items[index],
      ),
    );
  }
}
