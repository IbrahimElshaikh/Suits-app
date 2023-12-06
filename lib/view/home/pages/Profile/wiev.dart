import 'package:flutter/material.dart';
import 'package:flutter1/core/logic/helper_methods.dart';
import 'package:flutter1/view/login/view.dart';

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile" ),

      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 5 , horizontal: 14),
     children: [

       Container(
         clipBehavior: Clip.antiAliasWithSaveLayer,
         decoration: BoxDecoration(
           shape: BoxShape.circle
         ),
         height: 100,
         width: 100,
         child: Image.network("https://plus.unsplash.com/premium_photo-1677553954020-68ac75b4e1b4?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bWVucyUyMHN1aXR8ZW58MHx8MHx8fDA%3D"),
       ),
       SizedBox(height: 14,),
       Text("Ibrahim",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
      SizedBox(height: 10,),

       itemPage(image:"user .png" , title:"Your Profile" ,),
       itemPage(image:"menu 1.png" , title:"My Order" ,),
       itemPage(image:"credit-card (1) 1.png" , title:"Payment Methods" ,),
       itemPage(image:"heart (6) 2.png" , title:"Wishlist" ,),
       itemPage(image:"setting 1.png" , title:"Setting" ,),
       itemPage(image:"logout (2) 1.png" , title:"Log Out" ,onTap: () {

         navigateTo(loginView(),keepHistory: false);
       },),


     ],
      ),
    );
  }
}
class itemPage extends StatelessWidget {
  final String image , title;
  final VoidCallback? onTap;
  const itemPage({super.key, required this.image, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:onTap ,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.symmetric(vertical:17 ,horizontal: 19),

        decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          children: [
            Image.asset("assets/icons/$image",height: 20,width: 20,),
            SizedBox(width: 18,),
            Text(title,style: TextStyle(fontSize:15 ,fontWeight: FontWeight.w600),),
          ],
        ),
      ),
    );
  }
}

