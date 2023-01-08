// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:horizontal_list/components/app_avatar.dart';
import 'package:horizontal_list/utils/common.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final double? elevation;
  final String? title;
  final List<Widget>? tabs;
  final Widget? leading;

  const AppHeader({
    Key? key,
    this.title,
    this.elevation,
    this.leading,
    this.tabs,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(
        title != null && tabs != null ? 112 : 56,
      );

  @override
  AppBar build(BuildContext context) {
    final _brightness = getStatusBarBrightness();

    return AppBar(
      elevation: elevation,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: _brightness,
        statusBarBrightness: _brightness,
      ),
      backgroundColor: Colors.white,
      bottom: _buildTabBar(),
      title: title != null
          ? Text(
              title!,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 24,
              ),
            )
          : null,
      iconTheme: IconThemeData(color: Colors.grey[700]),
      leading: leading,
      actions: [
        Builder(
          builder: (context) => IconButton(
            icon: const AppAvatar(),
            onPressed: () => Scaffold.of(context).openDrawer(),
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          ),
        ),
      ],
    );
  }

  PreferredSizeWidget? _buildTabBar() {
    if (tabs == null) return null;

    return TabBar(
      enableFeedback: true,
      indicatorColor: Colors.green,
      indicatorWeight: 3.0,
      labelColor: Colors.green,
      tabs: tabs ?? [],
      unselectedLabelColor: Colors.grey,
    );
  }
}
