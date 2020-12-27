import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DemoLocalizations {
  DemoLocalizations(this.locale);

  final Locale locale;

  static DemoLocalizations of(BuildContext context) {
    return Localizations.of<DemoLocalizations>(context, DemoLocalizations);
  }

   Map<String, String> _localizedValues;
   Future load() async{
     String jsonStringValues= await rootBundle.loadString('language/${locale.languageCode}.json');

     Map<String,dynamic>mappedJson=json.decode(jsonStringValues);
     _localizedValues=mappedJson.map((key, value) => MapEntry(key, value.toString()));
   }

   String getTranslatevalues(String key){
     return _localizedValues[key];
   }
   static const LocalizationsDelegate<DemoLocalizations>delegate=DemoLocalizationsDelegate();
}

class DemoLocalizationsDelegate extends LocalizationsDelegate<DemoLocalizations> {
  const DemoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'es'].contains(locale.languageCode);

  @override
  Future<DemoLocalizations> load(Locale locale)async {
   DemoLocalizations localization=DemoLocalizations(locale);
   await localization.load();
   return localization;
  }

  @override
  bool shouldReload(DemoLocalizationsDelegate old) => false;
}
