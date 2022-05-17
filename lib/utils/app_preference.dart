
import 'dart:convert';

import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'language/languages.dart';


class AppPreference {
  static const String _KEY_LOCALE = 'KEY_LOCALE';
  static const String _KEY_THEME = 'KEY_THEME';
  static const String _KEY_LOGIN_DATA = 'KEY_LOGIN_DATA';
  static const String _KEY_SYSTEM_DATA = 'KEY_SYSTEM_DATA';
  static const String _KEY_ADDRESSES_DATA = 'KEY_ADDRESSES_DATA';
  static const String _KEY_CURRENT_ORDER = 'KEY_CURRENT_ORDER';
  static const String _KEY_ORDERING_CONFIG = 'KEY_ORDERING_CONFIG';


  static final AppPreference instance = AppPreference._internal();
   Box? _box;

  factory AppPreference() {
    return instance;
  }

  AppPreference._internal(){
   _setup();
  }

  _setup()async{
    _box =  await Hive.openBox('hlayel_box');
  }
  clear() async {

    return (await _getBox())?.clear();
  }

  Future<EnumLanguage> getLocale() async {
    return EnumToString.fromString(
            EnumLanguage.values, (await _getBox())?.get(_KEY_LOCALE) ?? '') ??
        EnumLanguage.ARABIC;
  }

  setLocale(EnumLanguage language) async {
    (await _getBox())?.put(_KEY_LOCALE, EnumToString.convertToString(language));
  }





  Future <Box?> _getBox()async{
    if(_box == null) await _setup();
    return _box;
  }



}
