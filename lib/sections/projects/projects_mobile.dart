import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mysite/links&texts/links.dart';
import 'package:mysite/links&texts/strings.dart';
import 'package:mysite/core/text_space_config/configs.dart';
import 'package:mysite/core/url_launch.dart';
import 'package:mysite/sections/projects/util/project_utils.dart';
import 'package:mysite/core/widgets/custom_text_heading.dart';
import 'package:sizer/sizer.dart';

import 'widgets/project_card.dart';

class ProjectsMobileTab extends StatelessWidget {
  const ProjectsMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const CustomSectionHeading(text: "\nProjects"),
        Space.y(3.w)!,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: CustomSectionSubHeading(text: protfolioSubHeading),
        ),
        Space.y(5.w)!,
        CarouselSlider.builder(
          itemCount: projectUtils.length,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: ProjectCard(project: projectUtils[i]),
          ),
          options: CarouselOptions(
            height: height * 0.4,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        ),
        Space.y(3.w)!,
        OutlinedButton(
          onPressed: () => openURL(previews),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'View Previews',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 222, 222, 222)),
            ),
          ),
        )
      ],
    );
  }
}
