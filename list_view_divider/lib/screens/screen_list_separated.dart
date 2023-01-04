// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:list_view_divider/components/app_divider.dart';
import 'package:list_view_divider/components/app_screen_wrapper.dart';
import 'package:list_view_divider/screens/components/app_card.dart';

class ScreenListSeparated extends StatelessWidget {
  const ScreenListSeparated({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> _items = List.generate(50, (index) => index);

    return AppScreenWrapper(
      widget: ListView.separated(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        itemCount: _items.length,
        itemBuilder: (_, index) => AppListTile(item: _items[index]),
        separatorBuilder: (_, __) => AppDivider(),
      ),
    );
  }
}
