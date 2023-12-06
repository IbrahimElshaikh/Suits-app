import 'package:flutter/material.dart';
import 'package:flutter1/view/home/Pages/Cart/cart.dart';
import 'package:flutter1/view/home/Pages/Favs/favs.dart';
import 'package:flutter1/view/home/Pages/Home/view.dart';
import 'package:flutter1/view/home/Pages/Profile/wiev.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentPage = 0;
  List<Widget> pages = [
    HomeComp(),
    CartPage(),
    FavsPage(),
    profilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          print(value);
          currentPage = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
      ),
    );
  }
}
