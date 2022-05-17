import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'app_preference.dart';
import 'language/languages.dart';





class PrefSettingsModel extends ChangeNotifier {

  static Locale? currentLocale;




  applyLocale(EnumLanguage language, {bool notify = true}) {
    AppPreference.instance.setLocale(language);
    currentLocale = Locale(language.localeValue(), language.countryValue());
    return notify ? notifyListeners() : null;
  }

  getCurrentLocale({bool notify  = true}) async {
    EnumLanguage lang = await AppPreference.instance.getLocale();
    print('pref lang : ${lang.localeValue()}');
    currentLocale = Locale(lang.localeValue() , lang.countryValue());
    return notify ? notifyListeners() : null;
  }

  Future getDefaultSettings({bool notify = true}) async {
    print('getting default settings');
    await getCurrentLocale(notify: false);
    // await getCurrentTheme(notify: false);
    return notify ? notifyListeners() : null;
  }

  static int getApiLangId(){
    if(currentLocale?.languageCode == 'ar') return 2;
    return 1;
  }
}
