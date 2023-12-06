import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/core/logic/helper_methods.dart';
import 'package:flutter1/view/home/view.dart';
import 'package:flutter1/view/onboarding/view.dart';
class splashView extends StatefulWidget {
  const splashView({super.key});

  @override
  State<splashView> createState() => _splashViewState();
}

class _splashViewState extends State<splashView> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 3), () {
      navigateTo(onboardingView());

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffDD8560) ,
      body:Center(
        child: FadeIn(
          duration: Duration(seconds: 3),

          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [

              Image.asset("assets/images/logo.png"),
              SizedBox(width: 15,),
              Text("Suits", style: TextStyle(fontSize: 122,fontFamily: "Waterfall",color: Colors.white),),
            ],
          ),
        ),
      ) ,
    ) ;
  }
}
