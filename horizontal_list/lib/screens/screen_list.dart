// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:horizontal_list/components/app_screen_wrapper.dart';
import 'package:horizontal_list/screens/components/app_grid.dart';
import 'package:horizontal_list/screens/components/app_list.dart';

class ScreenList extends StatelessWidget {
  final List<int> _items = List.generate(50, (index) => index);

  @override
  Widget build(BuildContext context) {
    return AppScreenWrapper(
      widget: Column(
        children: [
          Expanded(
            child: LayoutBuilder(
              builder: (_, constraints) {
                double _width = constraints.constrainWidth();

                return _width > 500
                    ? AppGrid(items: _items)
                    : AppList(items: _items);
              },
            ),
          ),
        ],
      ),
    );
  }
}
