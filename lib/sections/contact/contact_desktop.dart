import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:mysite/links&texts/links.dart';
import 'package:mysite/core/app_strings.dart';
import 'package:mysite/core/providers/language_provider.dart';
import 'package:provider/provider.dart';
import 'package:mysite/core/colors.dart';
import 'package:mysite/core/text_space_config/configs.dart';
import 'package:mysite/core/url_launch.dart';
import 'package:mysite/core/widgets/custom_text_heading.dart';
import 'package:mysite/sections/contact/utils/contact_utils.dart';
import 'package:sizer/sizer.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    final langProvider = Provider.of<LanguageProvider>(context);
    final s = AppStrings.of(langProvider.locale.languageCode);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width / 8),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nGet in Touch"),
          Space.y(1.w)!,
          const CustomSectionSubHeading(
            text:
                "If you want to avail my services you can contact me at the links below.",
          ),
          Space.y(2.w)!,
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: Container(
                padding: EdgeInsets.all(size.width * 0.05).copyWith(bottom: 10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 115, 115, 115)
                      .withOpacity(0.08), // glass tint
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: const Color.fromARGB(255, 255, 255, 255)
                        .withOpacity(0.2), // glass edge
                    width: 1.5,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color:
                          const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
                      blurRadius: 20,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                            s.contactHeading,
                              style: TextStyle(
                                height: 1.2,
                                fontSize: 8.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Space.y(1.w)!,
                            Text(
                               s.contactSubHeading,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                            Space.y(2.w)!,
                          ],
                        ),
                        InkWell(
                          onTap: () => openURL(whatsapp),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            decoration: BoxDecoration(
                              gradient: buttonGradi,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              'Get Started',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: textColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.white.withOpacity(0.2),
                      height: 1,
                    ),
                    Space.y(2.w)!,
                    Wrap(
                      alignment: WrapAlignment.center,
                      runSpacing: 50,
                      children: contactUtils
                          .asMap()
                          .entries
                          .map((e) => IconButton(
                                icon: Image.network(
                                  e.value.icon,
                                  color: theme.textColor,
                                ),
                                onPressed: () => openURL(e.value.url),
                                highlightColor: Colors.white54,
                                iconSize: 21,
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
