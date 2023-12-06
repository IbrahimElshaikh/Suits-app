import 'package:flutter/material.dart';
import 'package:flutter1/core/design/app_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: myAppBar(text: "Payment",),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icons/sucesspayment.jpg",height: 130,width: 130,),
            SizedBox(height: 34,),
            Text("Payment Successful!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
            SizedBox(height: 15,),
            Text("Thank you for your purchase.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Color(0xff858585)),)
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding:  EdgeInsets.symmetric(horizontal: 24,vertical: 8),
        color: Colors.white,
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FilledButton(onPressed: () {

              }, child:Text("View Order")),
              SizedBox(height: 10,),
              TextButton(onPressed: () {

              }, child: Text("View E-Receipt"))
            ],
          ),
        ),
      ),


    );
  }
}
