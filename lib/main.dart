import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tech_camp/model/routes.dart';
import 'package:tech_camp/screens/splash_page/splash_screen.dart';

import 'model/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TechCamp',
        theme: ThemeData.light().copyWith(
            scaffoldBackgroundColor: Colors.black38,
            primaryColor: Colors.purple,
            appBarTheme: const AppBarTheme(
              color: kPrimaryColor,
              elevation: 0.0,
            ),
            inputDecorationTheme: const InputDecorationTheme(
              labelStyle: TextStyle(
                fontFamily: 'IstokWeb',
                fontSize: 18.0,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kTextLightColor,
                  width: 1.0,
                ),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kTextLightColor,
                ),
              ),
              disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kTextLightColor,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kPrimaryColor,
                ),
              ),
              focusedErrorBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kErrorBorderColor,
                  width: 1.2,
                ),
              ),
            )),
        initialRoute: SplashScreen.routeName,
        routes: routes,
      );
    });
  }
}
