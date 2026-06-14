import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  Locale _locale = const Locale('en');

  Locale get locale => _locale;

  bool get isFrench => _locale.languageCode == 'fr';

  void toggleLanguage() {
    _locale =
        _locale.languageCode == 'en' ? const Locale('fr') : const Locale('en');
    notifyListeners();
  }

  void setLanguage(String code) {
    _locale = Locale(code);
    notifyListeners();
  }
}
