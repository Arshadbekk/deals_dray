import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:deals_dray/features/home/home_page.dart';
import 'package:deals_dray/features/home/test.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List pages=[
    HomePage(),
    TestPage(),
    TestPage(),
    TestPage(),
    TestPage(),

  ];
  int visit=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[visit],
      bottomNavigationBar: BottomBarDefault(

          items: [
            TabItem(icon: Icons.home_outlined, title: "Home"),
            TabItem(icon: Icons.category_outlined, title: "Categories"),
            TabItem(icon: Icons.shop, title: "Deals"),
            TabItem(icon: Icons.shopping_cart_outlined, title: "Cart"),
            TabItem(icon: Icons.person, title: "Profile"),
          ],
          backgroundColor: Colors.white,
          color: Colors.grey,
          colorSelected: Colors.red,
        indexSelected: visit,
        onTap: (index) {
          visit=index;
          setState(() {

          });
          print(visit);
        },
      ),
    );
  }
}
