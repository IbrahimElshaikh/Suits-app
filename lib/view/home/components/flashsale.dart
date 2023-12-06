

import 'package:flutter/material.dart';

class flashsale extends StatefulWidget {
  const flashsale({super.key});

  @override
  State<flashsale> createState() => _flashsaleState();
}

class _flashsaleState extends State<flashsale> {
  List<String> flashSale = ["All", "Newest", "Popular", "Men", "Women"];
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [

        Text(
        "Flash Sale",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
    ),
    SizedBox(
    height: 10,
    ),
    Container(
    height: 29,
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
    flashSale[index],
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
    itemCount: flashSale.length,

    ),
    ),
    ],
    );
  }
}