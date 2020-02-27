
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'generated/l10n.dart';
import 'logic/repo/auth_repository.dart';
import 'ui/pages/splash/splash.dart';
import 'ui/pages/splash/splash_bloc.dart';

var authRepo = Auth();
Future<void> main() async {
  if(authRepo.getCurrentUser == null) {
    authRepo.signIn();
  }
  runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
         localizationsDelegates: [S.delegate],
         supportedLocales: S.delegate.supportedLocales,
        onGenerateTitle: (BuildContext context) => S.of(context).title,
        theme: new ThemeData(
          primarySwatch: Colors.green,
          scaffoldBackgroundColor: Colors.black,
        ),
        home: MyApp()
        ));

}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return SplashPage(splashBloc: SplashBloc(title: S.of(context).helloWorld));//AppLocalizations.of(context).helloWorld()));
  }
}