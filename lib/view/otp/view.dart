import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../core/design/app_bar.dart';

class OTPView extends StatelessWidget {
  const OTPView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Enter Verification Code",
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
            child: Text.rich(TextSpan(
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffA1A8B0)),
                children: [
                  TextSpan(text: "Enter code that we have sent to your number"),
                  TextSpan(
                      text: " 08528188***",
                      style: TextStyle(color: Color(0xff101623))),
                ])),
          ),
          SizedBox(
            height: 32,
          ),
          PinCodeTextField(
            appContext: context,
            length: 4,
            backgroundColor: Colors.transparent,
            cursorColor: Color(0xffDD8560),
            enableActiveFill: true,
            pinTheme: PinTheme(
              selectedColor: Colors.white,
              inactiveFillColor:Colors.white,
              activeFillColor: Colors.white,
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(16),
              fieldHeight: 64,
              fieldWidth: 64,
              disabledColor: Colors.red,

              activeColor: Color(0xffDD8560),
              inactiveColor: Color(0xffE5E7EB),
              selectedFillColor: Color(0xffDD8560),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          FilledButton(onPressed: () {}, child: Text("Verify")),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Didn’t receive the code?",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff717784)),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    " Resend",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffDD8560)),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
