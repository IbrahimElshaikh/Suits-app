import 'package:flutter/cupertino.dart';

import 'item.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {

  List<categoryModel> list = [
    categoryModel(
        id: 0,
        image:
            "https://cdn2.iconfinder.com/data/icons/glyphie-1/40/pants_cloth_trousers_clothing-1024.png",
        title: "pant"),
    categoryModel(
        id: 1,
        image:
            "https://avatars.mds.yandex.net/i?id=5227914e378d8105d002addcc7c8be0448d6d289-11378374-images-thumbs&n=13",
        title:"shirt"),
    categoryModel(
        id: 2,
        image:
            "https://avatars.mds.yandex.net/i?id=2a99bc15e350290e5ce444e274aafab8f42916c2-10812288-images-thumbs&n=13",
        title: "Men \nShoes"),
    categoryModel(
        id: 3,
        image:
            "https://avatars.mds.yandex.net/i?id=eace4374801278e250c01cd536fcfa912dbb92f6-5195024-images-thumbs&n=13",
        title: "Women \nShoes"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Categary",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            Spacer(),
            Text(
              "See All",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff4E6542)),
            ),
          ],
        ),
        SizedBox(
          height: 18,
        ),
        Container(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Item(
             model:list[index],

            ),
            itemCount: list.length,
          ),
        ),
      ],
    );
  }
}

class categoryModel {
  int id;
  String image, title;

  categoryModel({required this.id, required this.image, required this.title});
}
