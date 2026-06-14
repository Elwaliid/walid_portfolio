import 'package:flutter/material.dart';
import 'package:mysite/links&texts/links.dart';
import 'package:mysite/core/app_strings.dart';
import 'package:mysite/core/providers/language_provider.dart';
import 'package:provider/provider.dart';
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
  bool _showAll = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final langProvider = Provider.of<LanguageProvider>(context);
    final s = AppStrings.of(langProvider.locale.languageCode);
    final projectUtils = getProjectUtils(langProvider.locale.languageCode);

    final visibleProjects =
        _showAll ? projectUtils : projectUtils.take(4).toList();

    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: size.width / 8).copyWith(top: 0),
      child: Column(
        children: [
          CustomSectionHeading(text: s.projects),
          Space.y(1.w)!,
          CustomSectionSubHeading(text: s.protfolioSubHeading),
          Space.y(1.w)!,
          Wrap(
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            runSpacing: 3.w,
            children: visibleProjects
                .asMap()
                .entries
                .map(
                  (e) => ProjectCard(project: e.value),
                )
                .toList(),
          ),
          Space.y(1.5.w)!,
          Space.y(1.5.w)!,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (projectUtils.length > 4) ...[
                OutlinedButton(
                  onPressed: () => setState(() => _showAll = !_showAll),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      _showAll ? s.less : s.more,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
              ],
              OutlinedButton(
                onPressed: () => openURL(previews),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    s.viewPreviews,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
