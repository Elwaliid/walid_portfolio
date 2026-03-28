import 'dart:ui';
import 'package:mysite/sections/main/widgets/arrow_on_top.dart';

import 'package:mysite/core/colors.dart';
import 'package:mysite/providers/drawer_provider.dart';
import 'package:mysite/providers/scroll_provider.dart';
import 'package:mysite/core/responsivness/responsive.dart';
import 'package:flutter/material.dart';
import 'package:mysite/core/text_space_config/configs.dart';
import 'package:mysite/core/text_space_config/app.dart';

import 'package:mysite/sections/main/utils/navbar_utils.dart';

import 'package:mysite/sections/main/widgets/navbar_logo.dart';
import 'package:mysite/sections/main/widgets/navbar_actions_button.dart';
import 'package:mysite/sections/sections_view.dart' show Body;
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:sizer/sizer.dart';
part 'widgets/_navbars.dart';
part 'widgets/_mobile_drawer.dart';
part 'widgets/_body.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    App.init(context);
    final drawerProvider = Provider.of<DrawerProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: drawerProvider.key,
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: Responsive(
          desktop: _NavbarDesktop(),
          mobile: _NavBarTablet(),
          tablet: _NavBarTablet(),
        ),
      ),
      drawer: !Responsive.isDesktop(context) ? const _MobileDrawer() : null,
      body: Stack(
        children: [
          Positioned(
            top: height * 0.2,
            left: -88,
            child: Container(
              height: height / 3,
              width: 166,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: secondaryColor,
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                child: Container(
                  height: 166,
                  width: 166,
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: -100,
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor.withOpacity(0.5),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 500, sigmaY: 500),
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            // BG01.png
            child: Image.asset(
              'assets/imgs/design.png',
              opacity: const AlwaysStoppedAnimation<double>(0.5),
              width: width,
              height: height,
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
          _Body(),
          const ArrowOnTop(),
        ],
      ),
    );
  }
}
