import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:mysite/core/responsivness/responsive.dart';
import 'package:sizer/sizer.dart';
import 'package:mysite/core/text_space_config/space.dart';

class ToolsGridSection extends StatelessWidget {
  const ToolsGridSection({Key? key}) : super(key: key);

  static const List<String> skillIcons = [
    'c++.png',
    'css.png',
    'firebase.png',
    'flutter.png',
    'html.png',
    'java.png',
    'js.png',
    'mongodb.png',
    'nodejs.png',
    'postman.png',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double paddingH = width > 1200 ? width / 10 : width * 0.05;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: paddingH).copyWith(bottom: 4.w),
      child: Column(
        children: [
          Space.y(1.w)!,
          Wrap(
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            spacing: 4.w,
            runSpacing: 4.w,
            children:
                skillIcons.map((icon) => ToolIcon(iconName: icon)).toList(),
          ),
        ],
      ),
    );
  }
}

class ToolIcon extends StatefulWidget {
  final String iconName;
  const ToolIcon({super.key, required this.iconName});

  @override
  State<ToolIcon> createState() => _ToolIconState();
}

class _ToolIconState extends State<ToolIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  bool _isHovered = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.07).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  double _getIconSize(double width) {
    if (width >= 1200) return 60; // desktop
    if (width >= 800) return 50; // tablet
    return 40; // mobile
  }

  Widget _toolLabel() {
    String name = widget.iconName.split('.').first;
    if (name == 'c++') name = 'C++';
    String displayName = name[0].toUpperCase() + name.substring(1);

    double fontSize = Responsive.isDesktop(context) ? 22 : 16;
    if (name == 'firebase') {
      fontSize = Responsive.isDesktop(context) ? 19 : 13;
    }

    return Text(
      displayName,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double iconSize = _getIconSize(width);

    return MouseRegion(
      onEnter: (_) => setState(() {
        _isHovered = true;
        _controller.forward();
      }),
      onExit: (_) => setState(() {
        _isHovered = false;
        _controller.reverse();
      }),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Tooltip / label above icon
          AnimatedOpacity(
            duration: const Duration(milliseconds: 200),
            opacity: _isHovered ? 1.0 : 0.0,
            child: _toolLabel(),
          ),
          SizedBox(height: 0.5.h),
          AnimatedBuilder(
            animation: _scaleAnimation,
            builder: (context, child) {
              return Transform.scale(
                scale: _scaleAnimation.value,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ui.ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                    child: Container(
                      width: iconSize + 8,
                      height: iconSize + 8,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 115, 115, 115)
                            // ignore: deprecated_member_use
                            .withOpacity(0.08),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          // ignore: deprecated_member_use
                          color: Colors.white.withOpacity(0.2),
                          width: 1.5,
                        ),
                        boxShadow: _isHovered
                            ? [
                                BoxShadow(
                                  // ignore: deprecated_member_use
                                  color: Colors.black.withOpacity(0.25),
                                  blurRadius: 12,
                                  spreadRadius: 1,
                                  offset: const Offset(0, 4),
                                )
                              ]
                            : [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  blurRadius: 8,
                                  spreadRadius: 0.5,
                                )
                              ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Image.asset(
                          'assets/imgs/skills/${widget.iconName}',
                          width: iconSize,
                          height: iconSize,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
