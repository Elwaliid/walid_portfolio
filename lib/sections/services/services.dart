import 'package:flutter/material.dart';
import 'package:mysite/changes/strings.dart';
import 'package:mysite/core/responsivness/responsive.dart';
import 'package:mysite/core/text_space_config/configs.dart';
import 'package:mysite/sections/services/widgets/tools_grid_section.dart';
import 'package:mysite/sections/widgets/custom_text_heading.dart';
import 'package:sizer/sizer.dart';

part 'services_desktop.dart';
part 'services_mobile.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ServiceMobile(),
      tablet: ServiceMobile(),
      desktop: ServiceDesktop(),
    );
  }
}
