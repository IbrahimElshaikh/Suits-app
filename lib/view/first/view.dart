import 'package:flutter/material.dart';

class FirstView extends StatelessWidget {
@override
Widget build(BuildContext context){
  return Scaffold(

appBar:  AppBar(title: const Text("                           "
    "Phone Dial" ),),

  body: Column(
    children: [
      SizedBox(height:10,),

     Row(
       mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyBox(text: "1"),
        SizedBox(width: 24,),
        MyBox(text: "2" ,subText:"ABC"),
        SizedBox(width: 24,),

        MyBox(text: "3", subText:"DEF" ),

      ],
     ),
      SizedBox(height: 10,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyBox(text: "4",subText:"GHI"),
          SizedBox(width: 24,),
          MyBox(text: "5" ,subText:"JKL"),
          SizedBox(width: 24,),

          MyBox(text: "6",subText:"MNO"),
        ],
      ),
      SizedBox(height: 10,),

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyBox(text: "7",subText:"PQRS"),
          SizedBox(width: 24,),
          MyBox(text: "8" ,subText:"TUV"),
          SizedBox(width: 24,),

          MyBox(text: "9", subText:"WXYZ"),
        ],
      ),
      SizedBox(height: 10,),

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyBox(text: "*",subText:""),
          SizedBox(width: 24,),
          MyBox(text: "0",subText:"+"),
          SizedBox(width: 24,),

          MyBox(text: "#",subText:""),
        ],
      ),
    ],

  )



  );
}

}
class MyBox extends StatelessWidget{
  final String text;
  final String subText;
  MyBox({required this.text , this.subText=""});
  @override
  Widget build(BuildContext context) {
  return Container(
    height: 80,
    width: 80,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text,
          style: TextStyle(
            color:Colors.white,
            fontSize:35,
          ),
        ),
        if(subText.isNotEmpty)
        Text(subText,
          style: TextStyle(
            color:Colors.white,
            fontSize:16,
          ),
        ),
      ],
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.red
    ),
  );
  }
  
}