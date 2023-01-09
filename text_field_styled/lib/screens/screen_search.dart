// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:text_field_styled/components/app_drawer.dart';
import 'package:text_field_styled/components/app_header.dart';
import 'package:text_field_styled/components/app_search_field.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppHeader(
        title: 'Поиск',
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSearchField(
                labelText: 'Поиск пользователя',
                padding: EdgeInsets.only(bottom: 32),
              ),
              AppSearchField(labelText: 'Поиск группы'),
            ],
          ),
        ),
      ),
    );
  }
}
