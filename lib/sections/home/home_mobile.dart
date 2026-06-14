import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mysite/core/url_launch.dart';
import 'package:mysite/links&texts/gif.dart';

import 'package:mysite/links&texts/links.dart';
import 'package:mysite/core/app_strings.dart';
import 'package:mysite/core/providers/language_provider.dart';
import 'package:provider/provider.dart';

import 'package:mysite/core/text_space_config/configs.dart';
import 'package:mysite/core/responsivness/responsive_size.dart';
import 'package:mysite/core/animations/entrance_fader.dart';
import 'package:mysite/sections/home/animations/zoom_animation.dart';
import 'package:mysite/sections/home/widgets/typer_animated_texts.dart';
import 'package:mysite/core/widgets/color_chage_btn.dart';
import 'package:sizer/sizer.dart';
import 'package:universal_html/html.dart' as html;

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final langProvider = Provider.of<LanguageProvider>(context);
    final s = AppStrings.of(langProvider.locale.languageCode);
    return Padding(
      padding: EdgeInsets.only(left: 10.w, top: 10.h, right: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                s.hellotag,
                style: AppText.h3!.copyWith(fontSize: isFontSize(context, 16)),
              ),
              // Space.x!,
              Image.asset(StaticImage.hi, height: 10.sp),
            ],
          ),
          // Space.y(1.w)!,
          Text(
            s.yourname,
            style: TextStyle(
              fontSize: isFontSize(context, 28),
              fontWeight: FontWeight.w600,
            ),
          ),
          Space.y(1.w)!,
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "A ",
                style: TextStyle(
                  fontSize: isFontSize(context, 18),
                  fontWeight: FontWeight.w400,
                ),
              ),
              AnimatedTextKit(
                animatedTexts: mobiletexts(s),
                repeatForever: true,
                isRepeatingAnimation: true,
              ),
            ],
          ),

          Space.y(2.w)!,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ColorChageButton(
                text: 'download cv',
                onTap: () {
                  openURL(resume);
                },
              ),
              const EntranceFader(
                offset: Offset(0, 0),
                delay: Duration(seconds: 1),
                duration: Duration(milliseconds: 800),
                child: ZoomAnimations(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
