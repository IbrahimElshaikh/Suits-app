import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SecondView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.grey[200],
     appBar:  AppBar(
       backgroundColor: Colors.transparent,
       elevation: 0,
      leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black,) ,onPressed: (){

      },),
actions: [
     IconButton(icon:Icon(Icons.settings,color: Colors.black,) ,onPressed: (){

   },),

],
       title: Text("                   Social Feed" , style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold )),

     ),
     body: ListView(
       padding: EdgeInsets.all(16),
       children: [
         Container(
           height: 200,
           child: Column(
             children: [
               Row(children: [
                 Image.network("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww"),
                Text("Matthew Brown"),
                 Text("12 MIN"),

               ],),
               Image.network("src"),
               Row(children: [],),
             ],
           ),
           decoration: BoxDecoration(color: Colors.red,
           borderRadius: BorderRadius.circular(12)),

         )
       ],
     ),
   );
  }

}