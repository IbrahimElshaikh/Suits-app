import 'package:flutter/material.dart';
import 'package:flutter1/view/home/components/category.dart';

class Item extends StatelessWidget {
  final categoryModel model;


  const Item({Key? key, required this.model, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: 25),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            padding: EdgeInsetsDirectional.all(15),
            child: Image.network(model.image),
            decoration: BoxDecoration(
              // color: Colors.green,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.red)),
            // margin:EdgeInsetsDirectional.only(end: 10),
          ),
          Text(
            model.title,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Color(0xff676767)),
          )
        ],
      ),
    );
  }
}