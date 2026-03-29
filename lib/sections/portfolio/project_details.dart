// ignore_for_file: deprecated_member_use

import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:mysite/sections/portfolio/animations/dislay_on_scroll.dart';
import 'package:mysite/sections/portfolio/util/project_utils.dart';

import 'package:sizer/sizer.dart';
import 'package:mysite/core/responsivness/responsive.dart';

import 'package:url_launcher/url_launcher.dart';

class ProjectDetailsScreen extends StatefulWidget {
  final ProjectUtils project;

  const ProjectDetailsScreen({Key? key, required this.project})
      : super(key: key);

  @override
  State<ProjectDetailsScreen> createState() => _ProjectDetailsScreenState();
}

class _ProjectDetailsScreenState extends State<ProjectDetailsScreen>
    with TickerProviderStateMixin {
  late AnimationController _blurController;
  late Animation<double> _blurAnimation;
  @override
  void initState() {
    super.initState();
    _blurController = AnimationController(
      duration: const Duration(milliseconds: 3500),
      vsync: this,
    )..forward();
    _blurAnimation = Tween<double>(
      begin: 0.0,
      end: 5.0,
    ).animate(CurvedAnimation(
      parent: _blurController,
      curve: Curves.easeIn,
    ));
  }

  @override
  void dispose() {
    _blurController.dispose();
    super.dispose();
  }

  void _showLivePreview(String url) {}

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    final project = widget.project;

    // Unified title style
    TextStyle sectionTitleStyle(String title) {
      return TextStyle(
        fontSize: Responsive.isDesktop(context) ? 6.h : 3.h,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      );
    }

    // List section builder
    Widget buildListSection(String title, List<String> items) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ScrollEntrance(
            child: Text(title, style: sectionTitleStyle(title)),
          ),
          SizedBox(height: 2.h),
          ...List.generate(
            items.length,
            (index) => ScrollEntrance(
              delay: Duration(milliseconds: 200 + index * 100),
              child: Padding(
                padding: EdgeInsets.only(bottom: 1.5.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '•',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white70,
                        height: 1.6,
                      ),
                    ),
                    SizedBox(width: 1.w),
                    Expanded(
                      child: Text(
                        items[index],
                        style: TextStyle(
                          fontSize: Responsive.isDesktop(context) ? 18 : 14,
                          color: Colors.white70,
                          height: 1.6,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    }

    return const Scaffold();
  }
}

class _GlassButton extends StatefulWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _GlassButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  State<_GlassButton> createState() => _GlassButtonState();
}

class _GlassButtonState extends State<_GlassButton> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: BackdropFilter(
            filter: ui.ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.5.h),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(_hovering ? 0.12 : 0.05),
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.white24),
                boxShadow: _hovering
                    ? [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.1),
                          blurRadius: 10,
                          spreadRadius: 2,
                        )
                      ]
                    : [],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(widget.icon, color: Colors.white),
                  const SizedBox(width: 8),
                  Text(widget.label,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: Responsive.isDesktop(context) ? 16 : 14,
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
