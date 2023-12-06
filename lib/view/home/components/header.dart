import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 147,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Text(
                  "New Collection",
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Disscount 50% for the first transaction",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffA1A880)),
                ),
                SizedBox(
                  height: 8,
                ),
                FilledButton(
                  onPressed: () {},
                  child: Text("Shop Now"),
                  style: FilledButton.styleFrom(
                      backgroundColor: Color(0xffDD8560),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 43,
          ),
          Expanded(
              child: Image.network(
                "https://icon-library.com/images/clothing-icon/clothing-icon-13.jpg",
                height: 104,
                width: 110,
                fit: BoxFit.cover,
              )),
        ],
      ),
    );
  }
}



