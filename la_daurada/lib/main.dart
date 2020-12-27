import 'package:flutter/material.dart';
import 'package:la_daurada/UI/Localization/demo_localization.dart';
import 'package:la_daurada/UI/WelComePage/welcome.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static void setLocale(BuildContext context,Locale locale){
    _MyAppState state=context.findAncestorStateOfType<_MyAppState>();
    state.setLocale(locale);
  }
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale;
  void setLocale(Locale locale){
    setState(() {
      _locale=locale;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: [
        Locale('en', 'US'),
        Locale('es', 'ES'),
      ],
      locale: _locale,
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        DemoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: (deviceLocal,supportedLocales){
        for(var local in supportedLocales){
          if(local.languageCode==deviceLocal.languageCode && local.countryCode==deviceLocal.countryCode){
            return deviceLocal;
          }
        }
        return supportedLocales.first;
      },
      home: WelcomePage(),
    );
  }
}
