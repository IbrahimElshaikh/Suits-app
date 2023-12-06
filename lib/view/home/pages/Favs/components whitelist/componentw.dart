

import 'package:flutter/material.dart';
import 'package:flutter1/core/logic/helper_methods.dart';

import '../../../../product-details/view.dart';

class categoryItems extends StatefulWidget {
  const categoryItems({super.key});

  @override
  State<categoryItems> createState() => _categoryItemsState();
}

class _categoryItemsState extends State<categoryItems> {
  List<String> list = ["All", "Blazar", "Shirt", "Pant", "Shoes"];
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        navigateTo(ProductDetailsView());
      },
      child: Column(
          children: [

      SizedBox(
      height: 10,
      ),
      Container(
      height: 29,
      margin: EdgeInsetsDirectional.only(start: 11),
      child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => GestureDetector(
      onTap: () {
      selectedItem = index;
      setState(() {});
      print(selectedItem);
      },

      child: Container(
      height: 29,
      padding: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
      margin: EdgeInsetsDirectional.only(end: 10),
      child: Text(
      list[index],
      style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: selectedItem == index
      ? Colors.white
          : Colors.black),
      ),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: selectedItem == index ? Colors.red : Colors.white),
      ),
      ),
      itemCount: list.length,

      ),
      ),
      ],
      ),
    );
  }
}