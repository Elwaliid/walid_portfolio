import 'package:flutter/material.dart';
import 'package:mysite/core/app_theme.dart';
import 'package:mysite/core/providers/drawer_provider.dart';
import 'package:mysite/core/responsivness/responsive.dart';
import 'package:mysite/core/text_space_config/space.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class _NavbarDesktop extends StatefulWidget {
  const _NavbarDesktop({Key? key}) : super(key: key);

  @override
  State<_NavbarDesktop> createState() => _NavbarDesktopState();
}

class _NavbarDesktopState extends State<_NavbarDesktop> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // theme
    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width / 8, vertical: 10),
      color: theme.navBarColor,
      child: Row(
        children: [
          // const NavBarLogo(),
          Space.xm!,
          // ...NavBarUtils.names.asMap().entries.map(
          //       (e) => NavBarActionButton(
          //         label: e.value,
          //         index: e.key,
          //       ),
          //     ),
        ],
      ),
    );
  }
}

class _NavBarTablet extends StatelessWidget {
  const _NavBarTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);
    var theme = Theme.of(context);
    return Container(
      color: theme.navBarColor,
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isTablet(context) ? 10.w : 10, vertical: 10),
      child: Row(
        children: [
          IconButton(
            highlightColor: Colors.white54,
            onPressed: () {
              drawerProvider.key.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
          Space.xm!,
          // const NavBarLogo(),
          // Space.x1!,
        ],
      ),
    );
  }
}
