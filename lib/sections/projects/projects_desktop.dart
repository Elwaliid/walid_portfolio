import 'package:flutter/material.dart';
import 'package:mysite/changes/links.dart';
import 'package:mysite/changes/strings.dart';
import 'package:mysite/core/text_space_config/configs.dart';
import 'package:mysite/core/url_launch.dart';
import 'package:mysite/sections/projects/util/project_utils.dart';
import 'package:mysite/core/widgets/custom_text_heading.dart';

import 'package:sizer/sizer.dart';

import 'widgets/project_card.dart';

class ProjectsDesktop extends StatefulWidget {
  const ProjectsDesktop({Key? key}) : super(key: key);

  @override
  State<ProjectsDesktop> createState() => _ProjectsDesktopState();
}

class _ProjectsDesktopState extends State<ProjectsDesktop> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: size.width / 8).copyWith(top: 0),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nProjects"),
          Space.y(1.w)!,
          CustomSectionSubHeading(text: protfolioSubHeading),
          Space.y(1.w)!,
          Wrap(
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            runSpacing: 3.w,
            children: projectUtils
                .asMap()
                .entries
                .map(
                  (e) => ProjectCard(project: e.value),
                )
                .toList(),
          ),
          Space.y(1.5.w)!,
          OutlinedButton(
            onPressed: () => openURL(previews),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'View Previews',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
