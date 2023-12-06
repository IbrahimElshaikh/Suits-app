import 'package:flutter/material.dart';
import 'package:flutter1/core/logic/helper_methods.dart';
import 'package:flutter1/view/otp/view.dart';

import '../../core/design/app_bar.dart';
import '../../core/design/app_input.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: DefaultTabController(
        length: 2,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Forgot Your Password?",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff101623)),
                ),
              ),
              SizedBox(
                height: 11,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Enter your email or your phone number, we will send you confirmation code",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffA1A8B0)),
                ),
              ),
              SizedBox(
                height: 31,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Color(0xffE5E7EB)),
                ),
                child: TabBar(
                  unselectedLabelColor: Color(0xffA1A8B0),
                  labelColor: Color(0xffDD8560),
                  padding: EdgeInsets.all(5),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    color: Color(0xffF9FAFB),
                  ),
                  labelStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  tabs: [
                    Tab(
                      text: "Email",
                    ),
                    Tab(
                      text: "Phone",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                flex: 2,
                child: TabBarView(children: [
                 ListView(
                    children: [
                      AppInput(
                        labelText: "Enter your Email",
                        prefixIcon: "emailRed.png",
                      ),
                      FilledButton(
                          onPressed: () {
                            navigateTo(OTPView());
                          }, child: Text("Reset Password")),
                    ],
                  ),
                  ListView(
                    children: [
                      AppInput(
                        labelText: "Enter your Phone",
                        prefixIcon: "call.png",
                      ),
                      FilledButton(
                          onPressed: () {
                            navigateTo(OTPView());
                          }, child: Text("Reset Password")),
                    ],
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
