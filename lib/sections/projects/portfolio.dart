import 'package:flutter/material.dart';
import 'projects_desktop.dart';
import 'projects_mobile.dart';
import 'package:mysite/core/responsivness/responsive.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ProjectsMobileTab(),
      tablet: ProjectsMobileTab(),
      desktop: ProjectsDesktop(),
    );
  }
}
