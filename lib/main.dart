import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:isalmi_app/hadeth/hadeth_deatils.dart';
import 'package:isalmi_app/home_screen.dart';
import 'package:isalmi_app/my_theme.dart';
import 'package:isalmi_app/provaider/AppConfingProfaider.dart';
import 'package:isalmi_app/soura_detalis/soura_detalis.dart';
import 'package:isalmi_app/utils/language/languages.dart';
import 'package:isalmi_app/utils/language/localizations_delegate.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create:(Context)=>AppProvaiderConfing(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var pro =Provider.of<AppProvaiderConfing>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        // TODO: uncomment the line below after codegen
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale(EnumLanguage.ENGLISH.localeValue()),
        // English, no country code
        Locale(EnumLanguage.ARABIC.localeValue()),
        // Arabic, no country code
        // ... other locales the app supports
      ],
        title: 'islami',
        home: Scaffold(),
      routes: {
          homeScreen.ROUTE_NAME :(context)=>homeScreen(),
        souraDetalisScreen.ROUTE_NAME :(context)=>souraDetalisScreen(),
        hadethDeatils.route_name : (context)=>hadethDeatils()
      },
      initialRoute: homeScreen.ROUTE_NAME,
      theme: myThme.lightTheme,
      darkTheme: myThme.DarkTheme,
      themeMode: pro.themeApp,
    );
  }
}

