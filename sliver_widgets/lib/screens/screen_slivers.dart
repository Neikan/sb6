// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:sliver_widgets/components/app_drawer.dart';
import 'package:sliver_widgets/components/app_header/app_header.dart';
import 'package:sliver_widgets/components/app_sliver_list.dart';
import 'package:sliver_widgets/consts/data.dart';

class ScreenSlivers extends StatefulWidget {
  const ScreenSlivers({super.key});

  @override
  State<ScreenSlivers> createState() => _ScreenSliversState();
}

class _ScreenSliversState extends State<ScreenSlivers> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: AppDrawer(),
      body: CustomScrollView(
        slivers: [
          AppHeader(title: 'Batman'),
          AppSliverList(items: descriptions),
        ],
      ),
    );
  }
}
