// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:sliver_widgets/screens/screen_slivers.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: ScreenSlivers(),
    );
  }
}
