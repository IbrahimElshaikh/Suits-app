import 'package:flutter/material.dart';
import 'package:flutter1/core/logic/helper_methods.dart';

import '../../../product-details/view.dart';
import '../../components/category.dart';
import '../../components/flashsale.dart';
import '../../components/header.dart';

class HomeComp extends StatefulWidget {
  const HomeComp({super.key});

  @override
  State<HomeComp> createState() => _HomeCompState();
}

class _HomeCompState extends State<HomeComp> {

  List<String>images=["https://st3.depositphotos.com/13194036/18766/i/450/depositphotos_187664008-stock-photo-cropped-shot-handsome-businessman-stylish.jpg",
    "https://plus.unsplash.com/premium_photo-1677553954020-68ac75b4e1b4?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bWVucyUyMHN1aXR8ZW58MHx8MHx8fDA%3D",
    "https://images.pexels.com/photos/2235071/pexels-photo-2235071.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F5F7),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.notifications_none,
              color: Color(0xffDD8560),
            ),
          ),
          SizedBox(
            width: 16,
          )
        ],
        title: Text(
          "Hello Ibrahim",
          style: TextStyle(color: Color(0xff000000)),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(17),
        children: [
          Header(),
          SizedBox(
            height: 29,
          ),
          Category(),
          SizedBox(
            height: 18,
          ),
          flashsale(),

          GridView.builder(padding: EdgeInsets.all(16),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,

            ),
            itemCount: images.length,

            itemBuilder: (context, index) => GestureDetector(
              onTap: () {

                navigateTo(ProductDetailsView());
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(images[index],
                  height: 140,
                  fit: BoxFit.cover,
                  width:150,


                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}