import 'package:intl/intl.dart' as intl;
import 'package:flutter/material.dart';

import 'language_ar.dart';
import 'language_en.dart';
import 'languages.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<Languages> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => [
        EnumLanguage.ENGLISH.localeValue(),
        EnumLanguage.ARABIC.localeValue()
      ].contains(locale.languageCode);

  @override
  Future<Languages> load(Locale locale) {
    return _locale(locale);
  }

  static Future<Languages> _locale(Locale locale) async {
    switch (locale.languageCode.toLowerCase()) {
      case 'ar':
        return LanguageAr();
      default:
        return LanguageEn();
    }
  }

  static Languages instance(Locale? locale) {
    print('text language : ${locale?.languageCode}');
    switch (locale?.languageCode ?? '') {
      case 'ar':
        return LanguageAr();
      default:
        return LanguageEn();
    }
  }

  @override
  bool shouldReload(LocalizationsDelegate<Languages> old) => false;

  static bool isDirectionRTL(BuildContext context) {
    return intl.Bidi.isRtlLanguage(
        Localizations.localeOf(context).languageCode);
  }
}
