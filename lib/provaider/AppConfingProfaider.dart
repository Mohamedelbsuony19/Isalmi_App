import 'package:flutter/material.dart';

class AppProvaiderConfing extends ChangeNotifier{
  ThemeMode themeApp=ThemeMode.light;
  void changeTheme(ThemeMode newTheme){
    if(themeApp==newTheme){
      return ;
    }else{ themeApp=newTheme ; }
    notifyListeners();
  }
  bool isDarkMode(){
    return themeApp==ThemeMode.dark;
  }

}