import 'package:flutter/material.dart';
import 'package:flutter1/core/logic/helper_methods.dart';
import 'package:flutter1/view/add-address/view.dart';
import 'package:flutter1/view/after-boarding/view.dart';
import 'package:flutter1/view/app_info/view.dart';
import 'package:flutter1/view/edit%20profile/view.dart';
import 'package:flutter1/view/forget%20password/view.dart';
import 'package:flutter1/view/home/Pages/Favs/favs.dart';
import 'package:flutter1/view/home/Pages/Profile/wiev.dart';
import 'package:flutter1/view/home/pages/Home/view.dart';
import 'package:flutter1/view/home/view.dart';
import 'package:flutter1/view/login/view.dart';
import 'package:flutter1/view/maps/view.dart';
import 'package:flutter1/view/onboarding/view.dart';
import 'package:flutter1/view/otp/view.dart';
import 'package:flutter1/view/payment-sucess/view.dart';
import 'package:flutter1/view/product-details/view.dart';
import 'package:flutter1/view/signUp/view.dart';
import 'package:flutter1/view/splash/view.dart';
import 'package:flutter1/view/create_new_password/view.dart';



void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch:getMaterialColor(Color(0XFFDD8560)),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Colors.black
          )
        )
        ,inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Color(0xffF9FAFB),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide(color: Color(0xffF9FAFB))
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide(color: Color(0xffE5E7EB))
          ),
        ),
  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      fixedSize: Size.fromHeight(56),textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w700)
    )
  ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
           elevation: 0,
          titleTextStyle: TextStyle(fontSize:20 ,fontWeight: FontWeight.w600, color: Colors.black, )
        )
      ),
      home:LocationView(),

    )
  );
}

MaterialColor getMaterialColor(Color color) {
  final int red = color.red;
  final int green = color.green;
  final int blue = color.blue;
  final int alpha = color.alpha;

  final Map<int, Color> shades = {
    50: Color.fromARGB(alpha, red, green, blue),
    100: Color.fromARGB(alpha, red, green, blue),
    200: Color.fromARGB(alpha, red, green, blue),
    300: Color.fromARGB(alpha, red, green, blue),
    400: Color.fromARGB(alpha, red, green, blue),
    500: Color.fromARGB(alpha, red, green, blue),
    600: Color.fromARGB(alpha, red, green, blue),
    700: Color.fromARGB(alpha, red, green, blue),
    800: Color.fromARGB(alpha, red, green, blue),
    900: Color.fromARGB(alpha, red, green, blue),
  };

  return MaterialColor(color.value, shades);
}