// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:list_view_divider/screens/screen_list_separated.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: const ScreenListSeparated(),
    );
  }
}
