import 'package:flutter/material.dart';
import 'package:flutter1/core/logic/helper_methods.dart';
import 'package:flutter1/view/home/view.dart';
import 'package:flutter1/view/login/view.dart';

class afterBoardingView extends StatelessWidget {
  const afterBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(17),
        child: SafeArea(
          child: ListView(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/afterboarding1.png",
                    height: 370,
                    width: 137,
                  ),
                  SizedBox(
                    width: 53,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/afterboarding2.png",
                        height: 214,
                        width: 137,
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Image.asset(
                        "assets/images/afterboarding3.png",
                        height: 133,
                        width: 141,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
              Text.rich(
                TextSpan(
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    children: [
                      TextSpan(text: "The"),
                      TextSpan(
                          text: " Suits App ",
                          style: TextStyle(color: Colors.red)),
                      TextSpan(text: "that\n Makes Your Look Your Best"),
                    ]),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Everything you need in the world\n of fashion, old and new",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Color(0xff727272)),
              ),
              SizedBox(
                height: 20,
              ),
              FilledButton(
                onPressed: () {
                  navigateTo(loginView());
                },
                child: Text("Get started"),
                style: FilledButton.styleFrom(
                    backgroundColor: Color(0xffDD8560),
                    fixedSize: Size.fromHeight(40)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
