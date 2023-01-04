// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:list_view_divider/components/app_drawer.dart';
import 'package:list_view_divider/components/app_header.dart';

class AppScreenWrapper extends StatelessWidget {
  final Widget widget;

  const AppScreenWrapper({
    Key? key,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: const AppHeader(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: widget,
      ),
    );
  }
}
