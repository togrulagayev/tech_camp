import 'package:flutter/material.dart';
import 'package:tech_camp/screens/cabinet_page/cabinet_screen.dart';
import 'package:tech_camp/screens/home_page/home_screen.dart';
import 'package:tech_camp/screens/login_page/login_screen.dart';
import 'package:tech_camp/screens/payment_page/payment_screen.dart';
import 'package:tech_camp/screens/profile_page/my_profile_screen.dart';
import 'package:tech_camp/screens/splash_page/splash_screen.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  MyProfileScreen.routeName: (context) => const MyProfileScreen(),
  CabinetScreen.routeName: (context) => const CabinetScreen(),
  PaymentScreen.routeName: (context) => const PaymentScreen(),
};
