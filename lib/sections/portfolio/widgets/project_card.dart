import 'package:flutter/material.dart';
import 'package:mysite/core/colors.dart';

import 'package:mysite/core/text_space_config/configs.dart';
import 'package:mysite/core/responsivness/responsive.dart';
import 'package:mysite/sections/portfolio/util/project_utils.dart';

import 'package:sizer/sizer.dart';

class ProjectCard extends StatefulWidget {
  final ProjectUtils project;

  const ProjectCard({Key? key, required this.project}) : super(key: key);
  @override
  ProjectCardState createState() => ProjectCardState();
}

class ProjectCardState extends State<ProjectCard> {
  bool isHover = false;
  bool get effectiveIsHover => Responsive.isDesktop(context) ? isHover : true;
  @override
  Widget build(BuildContext context) {
    const glassBaseColor = Color.fromARGB(255, 115, 115, 115);
    final glassColor =
        // ignore: deprecated_member_use
        glassBaseColor.withOpacity(effectiveIsHover ? 0.22 : 0.08);
    // ignore: deprecated_member_use
    final glassBorderColor = Colors.white.withOpacity(0.2);
    final glassShadow = [
      BoxShadow(
        // ignore: deprecated_member_use
        color: Colors.black.withOpacity(0.2),
        blurRadius: 20,
        spreadRadius: 2,
      ),
    ];
    // double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var theme = Theme.of(context);
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      onHover: Responsive.isDesktop(context)
          ? (isHovering) {
              if (isHovering) {
                setState(() => isHover = true);
              } else {
                setState(() => isHover = false);
              }
            }
          : null,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 1.w),
          width: Responsive.isDesktop(context) ? 30.w : 70.w,
          height: 36.h,
          decoration: BoxDecoration(
            color: glassColor,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: glassBorderColor,
              width: 1.5,
            ),
            boxShadow: glassShadow,
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Padding(
                padding: effectiveIsHover
                    ? const EdgeInsets.all(20)
                    : EdgeInsets.zero,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: widget.project.icons.map((icon) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 3),
                          child: Image.asset(
                            icon,
                            height: icon.contains('nodejs.png')
                                ? height * 0.09
                                : height * 0.06,
                          ),
                        );
                      }).toList(),
                    ),
                    SizedBox(height: height * 0.02),
                    Text(
                      widget.project.titles,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: effectiveIsHover ? whiteColor : theme.textColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      widget.project.description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: effectiveIsHover ? whiteColor : theme.textColor,
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                  ],
                ),
              ),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 400),
                opacity: effectiveIsHover ? 0.1 : 1.0,
                child: Container(
                  width: Responsive.isDesktop(context) ? 30.w : 70.w,
                  height: 36.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: AssetImage(widget.project.banners),
                        fit: BoxFit.cover),
                  ),
                  child: Image.asset(
                    widget.project.banners,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 13,
                right: 13,
                child: Material(
                  color: Colors.transparent,
                  child: OutlinedButton(
                    onPressed: () {
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
                                width: MediaQuery.of(context).size.width <= 510
                                    ? 90.w
                                    : 490,
                                height: MediaQuery.of(context).size.width <= 830
                                    ? 100.h
                                    : 810,
                                // child: PhonePreview(url: widget.project.links),
                              ),
                            ),
                          ),
                        ),
                      );

                      overlay.insert(entry);
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: effectiveIsHover
                            ? Colors.white.withOpacity(0.8)
                            : Colors.transparent,
                        width: Responsive.isDesktop(context) ? 1.5 : 1,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                    ),
                    child: Text(
                      'Launch',
                      style: TextStyle(
                        color:
                            effectiveIsHover ? whiteColor : Colors.transparent,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
              // Positioned(
              //   top: 13,
              //   left: 13,
              //   child: Material(
              //     color: Colors.transparent,
              //     child: OutlinedButton(
              //       onPressed: () {
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => ProjectDetailsScreen(
              //               project: widget.project,
              //             ),
              //           ),
              //         );
              //       },
              //       style: OutlinedButton.styleFrom(
              //         side: BorderSide(
              //           color: effectiveIsHover
              //               ? Colors.white.withOpacity(0.8)
              //               : Colors.transparent,
              //           width: Responsive.isDesktop(context) ? 1.5 : 1,
              //         ),
              //         shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(16),
              //         ),
              //         padding: const EdgeInsets.symmetric(
              //           horizontal: 16,
              //           vertical: 8,
              //         ),
              //       ),
              //       child: Text(
              //         'Details',
              //         style: TextStyle(
              //           color: effectiveIsHover
              //               // ignore: deprecated_member_use
              //               ? const Color.fromARGB(255, 255, 255, 255)
              //                   .withOpacity(0.9)
              //               : Colors.transparent,
              //           fontWeight: FontWeight.w500,
              //           fontSize: 14,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
