import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:mysite/core/app_strings.dart';
import 'package:mysite/core/text_space_config/configs.dart';

List<TyperAnimatedText> desktoptexts(AppStrings s) => [
      TyperAnimatedText(s.animationtxt1,
          speed: const Duration(milliseconds: 50),
          textStyle: AppText.h2!.copyWith(fontSize: 32)),
      TyperAnimatedText(s.animationtxt2,
          speed: const Duration(milliseconds: 50),
          textStyle: AppText.h2!.copyWith(fontSize: 32)),
      TyperAnimatedText(s.animationtxt3,
          speed: const Duration(milliseconds: 50),
          textStyle: AppText.h2!.copyWith(fontSize: 32)),
    ];

List<TyperAnimatedText> tabtexts(AppStrings s) => [
      TyperAnimatedText(s.animationtxt1,
          speed: const Duration(milliseconds: 50),
          textStyle: AppText.h2!.copyWith(fontSize: 20)),
      TyperAnimatedText(s.animationtxt2,
          speed: const Duration(milliseconds: 50),
          textStyle: AppText.h2!.copyWith(fontSize: 20)),
      TyperAnimatedText(s.animationtxt3,
          speed: const Duration(milliseconds: 50),
          textStyle: AppText.h2!.copyWith(fontSize: 20)),
    ];

List<TyperAnimatedText> mobiletexts(AppStrings s) => [
      TyperAnimatedText(s.animationtxt1,
          speed: const Duration(milliseconds: 50),
          textStyle: AppText.h2!.copyWith(fontSize: 16)),
      TyperAnimatedText(s.animationtxt2,
          speed: const Duration(milliseconds: 50),
          textStyle: AppText.h2!.copyWith(fontSize: 16)),
      TyperAnimatedText(s.animationtxt3,
          speed: const Duration(milliseconds: 50),
          textStyle: AppText.h2!.copyWith(fontSize: 16)),
    ];
