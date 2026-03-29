import 'package:flutter/material.dart';
import 'package:mysite/sections/contact/contact.dart';
import 'package:mysite/sections/footer/footer.dart';
import 'package:mysite/sections/home/home.dart';
import 'package:mysite/sections/projects/portfolio.dart';
import 'package:mysite/sections/services/services.dart';

class Body {
  static List<Widget> views = [
    const HomePage(),
    const Services(),
    const Portfolio(),
    const Contact(),
    const Footer(),
  ];
}
