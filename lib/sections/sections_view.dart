import 'package:flutter/material.dart';
import 'package:mysite/sections/home/home.dart';
import 'package:mysite/sections/services/services.dart';

class Body {
  static List<Widget> views = [
    const HomePage(),
    const Services(),
    // const Portfolio(),
    // const Contact(),
    // const Footer(),
  ];
}
