import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pevmobile/helpers/theme.dart';
import 'package:pevmobile/routes.dart';

void main() {
  runApp(PEV());
}

class PEV extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness:
          Brightness.light, //status bar brightness//status barIcon Brightness
    ));
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: routes,
    );
  }
}
