part of '../main_section.dart';

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
    final langProvider = Provider.of<LanguageProvider>(context);
    final s = AppStrings.of(langProvider.locale.languageCode);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width / 8, vertical: 10),
      color: theme.navBarColor,
      child: Row(
        children: [
          const NavBarLogo(),
          Space.xm!,
          ...s.navItems.asMap().entries.map(
                (e) => NavBarActionButton(
                  label: e.value,
                  index: e.key,
                ),
              ),
          const Spacer(),
          const LanguageToggleButton(),
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
          const NavBarLogo(),
        ],
      ),
    );
  }
}
