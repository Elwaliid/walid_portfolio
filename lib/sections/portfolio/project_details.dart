// ignore_for_file: deprecated_member_use

import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:mysite/core/app_theme.dart';
import 'package:mysite/sections/main/widgets/navbar_logo.dart';
import 'package:mysite/sections/portfolio/animations/dislay_on_scroll.dart';
import 'package:mysite/sections/portfolio/util/project_utils.dart';
import 'package:mysite/sections/portfolio/widgets/phone_preview.dart';

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

  void _showLivePreview(String url) {
    final overlay = Overlay.of(context);
    late OverlayEntry entry;
    entry = OverlayEntry(
      builder: (context) => GestureDetector(
        onTap: () => entry.remove(),
        child: Container(
          color: Colors.black54,
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () {},
            child: SizedBox(
              width: MediaQuery.of(context).size.width <= 510 ? 90.w : 490,
              height: MediaQuery.of(context).size.width <= 830 ? 100.h : 810,
              child: PhonePreview(url: url),
            ),
          ),
        ),
      ),
    );
    overlay.insert(entry);
  }

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

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: theme.navBarColor,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const NavBarLogo(),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ================= HERO =================
            Container(
              height: 90.h,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(project.banners),
                  fit: BoxFit.cover,
                ),
              ),
              child: AnimatedBuilder(
                animation: _blurAnimation,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.6),
                        Colors.black.withOpacity(0.3),
                      ],
                    ),
                  ),
                  child: SafeArea(
                    child: Padding(
                      padding: EdgeInsets.all(5.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ScrollEntrance(
                            delay: const Duration(milliseconds: 200),
                            child: Text(
                              project.name,
                              style: TextStyle(
                                fontSize:
                                    Responsive.isDesktop(context) ? 12.h : 6.h,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 2.h),
                          ScrollEntrance(
                            delay: const Duration(milliseconds: 400),
                            child: Text(
                              project.subtitle,
                              style: TextStyle(
                                fontSize:
                                    Responsive.isDesktop(context) ? 4.h : 2.5.h,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          SizedBox(height: 3.h),
                          Expanded(
                            child: ScrollEntrance(
                              delay: const Duration(milliseconds: 600),
                              child: SingleChildScrollView(
                                child: Text(
                                  project.overview,
                                  style: TextStyle(
                                    fontSize:
                                        Responsive.isDesktop(context) ? 22 : 16,
                                    color: Colors.white,
                                    height: 1.6,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                builder: (context, child) => BackdropFilter(
                  filter: ui.ImageFilter.blur(
                    sigmaX: _blurAnimation.value,
                    sigmaY: _blurAnimation.value,
                  ),
                  child: child!,
                ),
              ),
            ),

            // ================= TECH STACK =================
            Padding(
              padding: EdgeInsets.fromLTRB(5.w, 5.h, 5.w, 3.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ScrollEntrance(
                    child: Text(
                      'Tech Stack',
                      style: TextStyle(
                        fontSize: Responsive.isDesktop(context) ? 6.h : 3.h,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 3.h),
                  SizedBox(
                    height: Responsive.isDesktop(context) ? 5.h : 4.5.h,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: project.techStack.length,
                      separatorBuilder: (_, __) => SizedBox(width: 1.5.w),
                      itemBuilder: (context, index) {
                        return ScrollEntrance(
                          delay: Duration(milliseconds: 200 + index * 50),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: BackdropFilter(
                              filter:
                                  ui.ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 2.w,
                                  vertical: 1.h,
                                ),
                                decoration: BoxDecoration(
                                  // ignore: duplicate_ignore
                                  // ignore: deprecated_member_use
                                  color: Colors.white.withOpacity(0.08),
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: Colors.white.withOpacity(0.2),
                                    width: 1.2,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      blurRadius: 20,
                                      spreadRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Text(
                                  project.techStack[index],
                                  style: TextStyle(
                                    fontSize:
                                        Responsive.isDesktop(context) ? 16 : 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            // ================= FEATURES / CHALLENGES / LEARNINGS =================
            Padding(
              padding: EdgeInsets.fromLTRB(5.w, 3.h, 5.w, 5.h),
              child: Responsive.isDesktop(context)
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: buildListSection('Features', project.features),
                        ),
                        SizedBox(width: 5.w),
                        Expanded(
                          child: buildListSection(
                              'Challenges', project.challenges),
                        ),
                        SizedBox(width: 5.w),
                        Expanded(
                          child:
                              buildListSection('Learnings', project.learnings),
                        ),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildListSection('Features', project.features),
                        SizedBox(height: 4.h),
                        buildListSection('Challenges', project.challenges),
                        SizedBox(height: 4.h),
                        buildListSection('Learnings', project.learnings),
                      ],
                    ),
            ),
            // ================= CTA BUTTONS WITH HOVER =================
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Lauch Button
                  ScrollEntrance(
                    child: _GlassButton(
                      icon: Icons.launch,
                      label: 'Launch',
                      onTap: () => _showLivePreview(project.cta['live']!),
                    ),
                  ),
                  SizedBox(width: 2.w),
                  // GitHub Button
                  if (project.cta['github']!.isNotEmpty)
                    ScrollEntrance(
                      child: _GlassButton(
                        icon: Icons.code,
                        label: 'GitHub',
                        onTap: () =>
                            launchUrl(Uri.parse(project.cta['github']!)),
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 5.h),
          ],
        ),
      ),
      // ================= CTA =================
    );
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
