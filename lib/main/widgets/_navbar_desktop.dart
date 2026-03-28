import 'package:flutter/material.dart';
import 'package:mysite/core/app_theme.dart';
import 'package:mysite/core/text_space_config/space.dart';

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
