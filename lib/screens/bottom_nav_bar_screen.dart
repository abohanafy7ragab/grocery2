import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/screens/account_screen.dart';
import 'package:grocery/screens/cart_screen.dart';
import 'package:grocery/screens/explore_screen.dart';
import 'package:grocery/screens/favorite_screen.dart';
import 'package:grocery/screens/shop_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int index = 0;
  List<Widget> screens = [
    ShopScreen(),
    ExploreScreen(),
    CartScreen(),
    FavoriteScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(child: screens[index]),

          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xff53B175),
            currentIndex: index,
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.store), label: "shop"),
              BottomNavigationBarItem(
                icon: Icon(Icons.manage_search),
                label: "explore",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: "cart",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "favorite",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "account",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
