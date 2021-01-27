import 'package:flutter/cupertino.dart';
import 'package:pevmobile/screens/home_page.dart';
import 'package:pevmobile/screens/home_screens/infos_menu_screen.dart';
import 'package:pevmobile/screens/home_screens/menu_screen.dart';
import 'package:pevmobile/screens/splash_screen.dart';
import 'package:pevmobile/views/auth_views/login_view.dart';
import 'package:pevmobile/views/auth_views/profile_view.dart';
import 'package:pevmobile/views/auth_views/signup_view.dart';
import 'package:pevmobile/views/bottom_bar_view.dart';
import 'package:pevmobile/views/news_views/details_views/news_view_details.dart';
import 'package:pevmobile/views/news_views/details_views/partner_view_details.dart';
import 'package:pevmobile/views/news_views/details_views/vaccin_view_details.dart';
import 'package:pevmobile/views/news_views/news_views.dart';
import 'package:pevmobile/views/news_views/partners_views.dart';
import 'package:pevmobile/views/news_views/vaccins_views.dart';

var routes = {
  '/': (BuildContext context) => SplashScreen(),
  '/home-menu': (BuildContext context) => MyHomePage(),
  '/home': (BuildContext context) => HomeScreenMenu(),
  '/home-infos': (BuildContext context) => InfosMenuScreen(),
  '/home-vaccins': (BuildContext context) => BottomBarView(),
  '/infos/news': (BuildContext context) => NewsViews(),
  '/infos/news-details': (BuildContext context) => NewsViewDetails(),
  '/infos/partners': (BuildContext context) => PartnersViews(),
  '/infos/partners-details': (BuildContext context) => PartnerViewDetails(),
  '/infos/vaccins': (BuildContext context) => VaccinsViews(),
  '/infos/vaccins-details': (BuildContext context) => VaccinViewDetails(),
  '/vaccins/users-login': (BuildContext context) => LoginView(),
  '/vaccins/users-signup': (BuildContext context) => SignupView(),
  '/vaccins/users-profile': (BuildContext context) => ProfileView(),
};
