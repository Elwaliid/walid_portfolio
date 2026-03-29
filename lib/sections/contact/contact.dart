import 'package:flutter/material.dart';
import 'package:mysite/core/responsivness/responsive.dart';

import 'contact_desktop.dart';
import 'contact_mobile.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: Padding(
        padding: EdgeInsets.only(top: 100.0),
        child: ContactMobileTab(),
      ),
      tablet: Padding(
        padding: EdgeInsets.only(top: 100.0),
        child: ContactMobileTab(),
      ),
      desktop: Padding(
        padding: EdgeInsets.only(top: 150.0),
        child: ContactDesktop(),
      ),
    );
  }
}
