import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter1/core/logic/helper_methods.dart';
import 'package:flutter1/view/after-boarding/view.dart';
class onboardingView extends StatefulWidget {
  const onboardingView({super.key});

  @override
  State<onboardingView> createState() => _onboardingViewState();
}

class _onboardingViewState extends State<onboardingView> {
  int currentpage=1;
  List<String> titles=["Welcome To\n Fashion","Explore & Shop","Hi,Shop Now"];
  List<String> description=["Discover the latest trends and exclusive styles from our top designers",
  "Discover a wide range of fashion categories,browse new arrivals and shop your favourites",
  ""];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SafeArea(
  child:   Container(
    height: double.infinity,
    width: double.infinity,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/on-boarding$currentpage.png"),
        fit: BoxFit.fill
      )
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(currentpage!=3)
          Align(alignment: AlignmentDirectional.topEnd,
            child: OutlinedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:
                  (context) => afterBoardingView(),));
            },
                style:OutlinedButton.styleFrom(
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.black)
                  )

                ) ,
                child: Text("Skip")),
          ),
                Spacer(),
          Text(titles[currentpage-1],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 36),),
          if(currentpage!=3)
          Text(description[currentpage-1]
              ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 14),),
          SizedBox(height: 18,),
          Row(
            children: [
              if(currentpage!=1)

                GestureDetector(
                  onTap: (){
                    currentpage--;
                    setState(() {
                      
                    });
                  },
                  child: Container(
                  height: 50,
                  width: 50,
              padding: EdgeInsetsDirectional.only(start: 10),
                  child: Icon(Icons.arrow_back_ios,color: Color(0xffDD8560),),
                  decoration: BoxDecoration(

                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xff4E6542)),
                  ),
              ),
                ),
              Spacer(),
              CircleAvatar(radius: currentpage==1?7.5: 5,backgroundColor: currentpage==1?Color(0xffDD8560):Color(0xffD9D9D9),),
              SizedBox(width: 10,),
              CircleAvatar(radius:  currentpage==2?7.5: 5,backgroundColor: currentpage==2?Color(0xffDD8560):Color(0xffD9D9D9),),
              SizedBox(width: 10,),
              CircleAvatar(radius:  currentpage==3?7.5: 5,backgroundColor: currentpage==3?Color(0xffDD8560):Color(0xffD9D9D9),),
              Spacer(),
              GestureDetector(
             onTap: (){
               if(currentpage==3){
                 navigateTo(afterBoardingView());
               }
               else{
                 currentpage++;
                 setState(() {

                 });
               }

             },
                child: Container(
                  height: 50,
                  width: 50,
                  padding: EdgeInsetsDirectional.only(start: 3),
                  child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                  decoration: BoxDecoration(

                    shape: BoxShape.circle,
                     color:Color(0xffDD8560),),
                  ),
              ),

            ],
          )
        ],
      ),
    ),
  ),
)
    );
  }
}
