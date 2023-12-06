import 'package:flutter/material.dart';
import 'package:flutter1/core/logic/helper_methods.dart';
import 'package:flutter1/view/forget%20password/view.dart';
import 'package:flutter1/view/home/view.dart';
import 'package:flutter1/view/signUp/view.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/design/app_input.dart';

class loginView extends StatelessWidget {
  const loginView({super.key});

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

          },
        ),
        centerTitle: true,
        title: Text("Login"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 26),
        children: [
          Center(
              child: Text(
            "Hi Welcome back, you’ve been missed",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          )),
            SizedBox(height: 25,),
            AppInput(labelText:"Enter your email" ,
                prefixIcon:"email.png",
            isPassword: false,),


       AppInput(labelText: "Enter your password",
         prefixIcon: "password .png",
       isPassword: true,),
          Align(alignment: AlignmentDirectional.centerEnd,
            child: TextButton(onPressed:(){
              navigateTo(ForgetPassword());
            },
              child: Text("Forgot Password?")),
          ),
          SizedBox(height: 17,),
          FilledButton(onPressed: (){
            navigateTo(HomeView(),keepHistory: false);
          }, child: Text("Login")),
          SizedBox(height: 17,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don’t have an account?",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff717784)),
              ),
              TextButton(
                  onPressed: () {
                    navigateTo(regesiterView());
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffDD8560)),
                  ))
            ],
          ),
          SizedBox(height: 17,),
          Row(
            children: [
              Expanded(child: Divider()),
              SizedBox(width: 10,),
              Text("OR"),
              SizedBox(width: 10,),
              Expanded(child: Divider()),
            ],
          ),
         SizedBox(height: 32,),
         Padding(
           padding: const EdgeInsets.only(bottom: 16),
           child: InkWell(
              onTap: (){
                
              },
              child: Container(
                padding: EdgeInsets.all(18),
                
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:BorderRadius.circular(32),
                  border: Border.all(color: Color(0xffE5E7EB))
                ),
                child: Row(
                  children: [
                    Image.asset("assets/icons/google.png",height: 20,width: 20,
                    fit: BoxFit.scaleDown,),
                    SizedBox(width: 52,),
                    Text("Sign in with google",style: TextStyle(fontSize:16 ,fontWeight:FontWeight.w600 ),),
                  ],
                ),
              ),
            ),
         ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: InkWell(
              onTap: (){

              },
              child: Container(
                padding: EdgeInsets.all(18),

                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(32),
                    border: Border.all(color: Color(0xffE5E7EB))
                ),
                child: Row(
                  children: [
                    Image.asset("assets/icons/apple.png",height: 20,width: 20,
                      fit: BoxFit.scaleDown,),
                    SizedBox(width: 52,),
                    Text("Sign in with Apple",style: TextStyle(fontSize:16 ,fontWeight:FontWeight.w600 ),),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: InkWell(
              onTap: (){

              },
              child: Container(
                padding: EdgeInsets.all(18),

                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(32),
                    border: Border.all(color: Color(0xffE5E7EB))
                ),
                child: Row(
                  children: [
                    Image.asset("assets/icons/facebook.png",height: 20,width: 20,
                      fit: BoxFit.scaleDown,),
                    SizedBox(width: 52,),
                    Text("Sign in with Facebook",style: TextStyle(fontSize:16 ,fontWeight:FontWeight.w600 ),),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
