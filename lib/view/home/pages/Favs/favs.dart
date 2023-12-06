import 'package:flutter/material.dart';
import 'package:flutter1/core/logic/helper_methods.dart';
import 'package:flutter1/view/home/pages/Favs/components%20whitelist/componentw.dart';
import 'package:flutter1/view/product-details/view.dart';

class FavsPage extends StatefulWidget {
  const FavsPage({super.key});

  @override
  State<FavsPage> createState() => _FavsPageState();
}

class _FavsPageState extends State<FavsPage> {
  List<ModelProduct> list = [
    ModelProduct(
        id: 0,
        image:
           "https://i.pinimg.com/736x/be/85/1c/be851c2a9ee62ce27b2384a12678aa90--man-fashion-instagram.jpg",
        titlt: "Classic blazer",
        rate: 4.5,
        price: 150,
        isFav:true),
    ModelProduct(
        id: 1,
        image:
            "https://i.pinimg.com/originals/8e/f7/cf/8ef7cf4a35e6e01e4b73204b49bdfb78.jpg",
        titlt: "Classic blazer",
        rate: 4.6,
        price: 180,
        isFav: false),
    ModelProduct(
        id: 2,
        image:
           "https://i.pinimg.com/originals/96/57/e1/9657e1e3c6cec0ef009a51c8e6d46b1b.jpg",
        titlt: "Classic blazer",
        rate: 4.8,
        price: 200,
        isFav: true),
    ModelProduct(
        id: 3,
        image:"https://www.styleforum.net/content/type/61/id/668646/width/350/height/700",
        titlt: "Classic blazer",
        rate: 4.9,
        price: 250,
        isFav: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Wishlist"),
      ),
      body: Column(
        children: [
          categoryItems(),
          SizedBox(height: 10),
          Expanded(
              child: GridView.builder(
            padding: EdgeInsets.symmetric(vertical: 32, horizontal: 19),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 19,
                crossAxisSpacing: 19,
                childAspectRatio: 151 / 147),
            itemCount:list.length,
            itemBuilder: (context, index) => ItemFavs(
             model:list[index],
            ),
          ))
        ],
      ),
    );
  }
}

class ItemFavs extends StatefulWidget {
  final ModelProduct model;

  const ItemFavs({super.key, required this.model});

  @override
  State<ItemFavs> createState() => _ItemFavsState();
}

class _ItemFavsState extends State<ItemFavs> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateTo(ProductDetailsView());
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Stack(
            fit: StackFit.expand,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                   widget.model.image,
                    fit: BoxFit.cover,
                  )),
              GestureDetector(
                onTap: () {
                  widget.model.isFav=!widget.model.isFav;
                  setState(() {

                  });
                },
                child: Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(top: 9, end: 15),
                    child: CircleAvatar(
                      child: Icon(widget.model.isFav? Icons.favorite:Icons.favorite_border),
                      backgroundColor: Colors.white.withOpacity(.5),
                    ),
                  ),
                ),
              )
            ],
          )),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              children: [
                Text(widget.model.titlt,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    )),
                Spacer(),
                Icon(
                  Icons.star,
                  size: 15,
                  color: Colors.yellow,
                ),
                Text(
                 widget.model.rate.toString(),
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff979696)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              "\$${widget.model.price}",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffAB94A6)),
            ),
          )
        ],
      ),
    );
  }
}

class ModelProduct {
  int id;
  String image, titlt;
  double rate, price;
  bool isFav;

  ModelProduct(
      {required this.id,
      required this.image,
      required this.titlt,
      required this.rate,
      required this.price,
      required this.isFav});
}
