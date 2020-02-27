// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

class S {
  S(this.localeName);
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final String name = locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return S(localeName);
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  final String localeName;

  String get title {
    return Intl.message(
      'Xstar97 Portfolio',
      name: 'title',
      desc: 'Name of the site',
      args: [],
    );
  }

  String get helloWorld {
    return Intl.message(
      'Hello World',
      name: 'helloWorld',
      desc: 'the first app greeting',
      args: [],
    );
  }

  String get aboutMe {
    return Intl.message(
      'About Me',
      name: 'aboutMe',
      desc: 'info of me',
      args: [],
    );
  }

  String get aboutMeDescription {
    return Intl.message(
      'Hi, I\'m Xstar97!\n\nI live and breathe code and love reading books and watching anime!\nplease checkout of my projects on here or the code on github :)',
      name: 'aboutMeDescription',
      desc: '',
      args: [],
    );
  }

  String get headerItemGithub {
    return Intl.message(
      'Github',
      name: 'headerItemGithub',
      desc: '',
      args: [],
    );
  }

  String get headerItemLinkedIn {
    return Intl.message(
      'LinkedIn',
      name: 'headerItemLinkedIn',
      desc: '',
      args: [],
    );
  }

  String get skillsTitle {
    return Intl.message(
      'Skills',
      name: 'skillsTitle',
      desc: 'skills',
      args: [],
    );
  }

  String get projectsTitle {
    return Intl.message(
      'Projects',
      name: 'projectsTitle',
      desc: 'list of work',
      args: [],
    );
  }

  String get launchApp {
    return Intl.message(
      'Launch',
      name: 'launchApp',
      desc: '',
      args: [],
    );
  }

  String greetingMessage(dynamic name) {
    return Intl.message(
      'Hello $name!',
      name: 'greetingMessage',
      desc: 'Greet the user as they first open the website',
      args: [name],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale('en', ''), Locale('es', ''),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (Locale supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}