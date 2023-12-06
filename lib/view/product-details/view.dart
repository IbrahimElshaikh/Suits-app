import 'package:flutter/material.dart';

import '../../core/design/app_bar.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({super.key});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  List<String> sizes=["S","M","L","XL"];
  List<Color>colors=[Color(0xff4E6542),Color(0xff323232),Color(0xffC11D1D),Color(0xff979696)];
  int count=1;
  int? selectedColorsIndex;
  int? selectedSizeIndex;
  bool favs=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Image.network(
            "https://i.pinimg.com/736x/a9/f9/fd/a9f9fd2de2cdbea1c52b54cbe8cdd2a0.jpg",
            width: double.infinity,
            height: 769,
            fit: BoxFit.fill,
          ),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Container(
              padding: EdgeInsetsDirectional.only(start: 16, end: 16, top: 23),
              height: 370,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Famale Style",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color(0xffA4A4A4)),
                        ),
                        Spacer(),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 17,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "5.0",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffA4A4A4)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      "Classic Blazar",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Divider(
                      height: 30,
                    ),
                    Text(
                      "Product Details",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "cotton sweat shirt with a text point",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff727272)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Quality",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Container(
                          padding: EdgeInsetsDirectional.symmetric(
                              vertical: 4, horizontal: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    if(count>1){
                                      count--;
                                      setState(() {

                                      });
                                    }

                                  },
                                 child: Icon(Icons.remove)),
                              SizedBox(
                                width: 22,
                              ),
                              Text("$count"),
                              SizedBox(
                                width: 22,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    if(count<20){
                                      count++;
                                      setState(() {

                                      });
                                    }

                                  },
                                  child: Icon(Icons.add)),
                            ],
                          ),
                        )
                      ],
                    ),
                    Divider(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text(
                          "Color:",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        ...List.generate(4, (index) =>  GestureDetector(
                          onTap: () {
                            selectedColorsIndex=index;
                            setState(() {

                            });
                          },
                          child: Padding(
                            padding:  EdgeInsetsDirectional.only(start: 5,end: 20),
                            child: DecoratedBox(
                              decoration: BoxDecoration( border:selectedColorsIndex==index? Border.all(width: 2,strokeAlign: BorderSide.strokeAlignOutside):null,
                                shape: BoxShape.circle,
                              ),

                              child: CircleAvatar(radius: 10,
                              backgroundColor: colors[index],),
                            ),
                          ),
                        ),
                         )
                      ],
                    ),
                    SizedBox(height: 17,),
                    Row(
                      children: [
                        Text(
                          "Size:",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        ...List.generate(4, (index) =>  GestureDetector(
                          onTap: () {
                            selectedSizeIndex=index;
                            setState(() {

                            });
                          },
                          child: Padding(
                            padding:  EdgeInsetsDirectional.only(start: 9,end: 20),
                            child:Container(
                              padding: EdgeInsets.all(9),
                              child: Text(sizes[index]),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                border:selectedSizeIndex==index? Border.all():null,
                                borderRadius: BorderRadius.circular(10)
                              ),
                            )
                          ),
                        ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xffF4F5F7),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(25))),
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 4),
        child: SafeArea(
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  favs=!favs;
                  setState(() {

                  });
                },
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).primaryColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(favs?Icons.favorite :Icons.favorite_border,color: Theme.of(context).primaryColor,),
                ),
              ),
              SizedBox(width: 16,),
              Expanded(
                child: ElevatedButton(onPressed: () {

                }, child: Text("Add To Cart")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
