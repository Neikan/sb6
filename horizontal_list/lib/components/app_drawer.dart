// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:horizontal_list/components/app_avatar.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            AppAvatar(
              padding: EdgeInsets.only(top: 32),
              radius: 48,
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text('Eugene <Neikan> Sladkov'),
            ),
          ],
        ),
      ),
    );
  }
}
