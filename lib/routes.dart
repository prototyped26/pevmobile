import 'package:flutter/cupertino.dart';
import 'package:pevmobile/screens/home_page.dart';
import 'package:pevmobile/screens/home_screens/infos_menu_screen.dart';
import 'package:pevmobile/screens/home_screens/menu_screen.dart';
import 'package:pevmobile/screens/splash_screen.dart';
import 'package:pevmobile/views/news_views/news_views.dart';
import 'package:pevmobile/views/news_views/partners_views.dart';

var routes = {
  '/': (BuildContext context) => SplashScreen(),
  '/home-menu': (BuildContext context) => MyHomePage(),
  '/home': (BuildContext context) => HomeScreenMenu(),
  '/home-infos': (BuildContext context) => InfosMenuScreen(),
  '/infos/news': (BuildContext context) => NewsViews(),
  '/infos/partners': (BuildContext context) => PartnersViews(),
};
