import 'package:flutter/material.dart';
import 'package:flutter1/core/logic/helper_methods.dart';
import 'package:flutter1/view/login/view.dart';
import '../../core/design/app_bar.dart';
import '../../core/design/app_input.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            "Create New Password",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xff101623)),
          ),
          SizedBox(
            height: 11,
          ),
          Text(
            "Create your new password to login",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xffA1A8B0)),
          ),
          SizedBox(
            height: 31,
          ),
          AppInput(
            labelText: "Enter your new password",
            prefixIcon: "password .png",
            isPassword: true,
          ),
          AppInput(
            labelText: "Cofirm your new password",
            prefixIcon: "password .png",
            isPassword: true,
          ),
          FilledButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => SimpleDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 58, horizontal: 4),
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Color(0xffF5F8FF),
                        child: Image.asset("assets/icons/Check.png"),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Center(
                        child: Text(
                          "Success",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Center(
                        child: Text(
                          "Your account has been successfully registered",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffA1A8B0)),
                        ),
                      ),
                      SizedBox(
                        height: 21,
                      ),
                      Center(
                          child: SizedBox(
                        width: 100,
                      )),
                      FilledButton(
                          onPressed: () {
                            navigateTo(loginView(),keepHistory: false);
                          },
                          child: Text("Login")),
                    ],
                  ),
                );
              },
              child: Text("Create Password")),
        ],
      ),
    );
  }
}
