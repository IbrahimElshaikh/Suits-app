import 'package:flutter/material.dart';
import 'package:flutter1/core/logic/helper_methods.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/design/app_input.dart';

class regesiterView extends StatefulWidget {
  const regesiterView({super.key});

  @override
  State<regesiterView> createState() => _regesiterViewState();
}

class _regesiterViewState extends State<regesiterView> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/back.svg",
            height: 24,
            width: 24,
            fit: BoxFit.scaleDown,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text("SignUp"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 26),
        children: [
          AppInput(
            labelText: "Enter your name",
            prefixIcon: "user .png",
          ),
          AppInput(
            labelText: "Enter your email",
            prefixIcon: "email.png",
          ),
          AppInput(
            labelText: "Enter your password",
            prefixIcon: "password .png",
            isPassword: true,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Transform.scale(
                scale: 1.25,
                child: Checkbox(
                  value: isSelected,
                  visualDensity: VisualDensity.compact,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  onChanged: (value) {
                    isSelected = value!;

                    setState(() {});
                  },
                ),
              ),
              Expanded(
                child: Text.rich(TextSpan(
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        height: 1.82),
                    children: [
                      TextSpan(text: "I agree to the medidoc"),
                      TextSpan(
                          text: " Terms of Service",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor)),
                      TextSpan(text: " and "),
                      TextSpan(
                          text: " Privacy Policy",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor)),
                    ])),
              )
            ],
          ),
          SizedBox(
            height: 42,
          ),
          FilledButton(onPressed: () {}, child: Text("SignUp")),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "have an account?",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff717784)),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Sign In",
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
