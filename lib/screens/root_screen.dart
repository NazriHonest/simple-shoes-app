import 'package:flutter/material.dart';
import 'package:my_playing_ground/constants/dummyData.dart';
import 'package:my_playing_ground/screens/cart_screen.dart';
import 'package:my_playing_ground/screens/favorite_screen.dart';
import 'package:my_playing_ground/screens/home.dart';
import 'package:my_playing_ground/screens/profile_scsreen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int currentIndex = 0;
  int activeItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: const [
          HomePage(),
          FavoriteScreen(),
          CartScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 60,
          color: const Color(0xFF393E46),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(bottomNavItems.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                        activeItem = index;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(bottomNavItems[index]['icon'],
                            color: activeItem == index ? Colors.orange :Colors.white),
                        Text(bottomNavItems[index]['label'],
                            style: TextStyle(color: activeItem == index ? Colors.orange :Colors.white)),
                      ],
                    ),
                  );
                })),
          )),

      // BottomNavigationBar(
      //   onTap: (value) => setState(() {
      //     currentIndex = value;
      //   }),
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: const Color(0xFF393E46),
      //   fixedColor: const Color(0xFFEEEEEE),
      //   elevation: 5,
      //   items: const [
      //     BottomNavigationBarItem(
      //       label: 'Home',
      //       icon: Icon(Icons.home_outlined, color: Color(0xFFEEEEEE)),
      //     ),
      //     BottomNavigationBarItem(
      //       label: 'Favorite',
      //       icon: Icon(Icons.favorite_border, color: Color(0xFFEEEEEE)),
      //     ),
      //     BottomNavigationBarItem(
      //       label: 'Cart',
      //       icon:
      //           Icon(Icons.shopping_cart_outlined, color: Color(0xFFEEEEEE)),
      //     ),
      //     BottomNavigationBarItem(
      //       label: 'User',
      //       icon:
      //           Icon(Icons.person_outline_outlined, color: Color(0xFFEEEEEE)),
      //     ),
      //   ],
      // ),
    );
  }
}

Widget showBottomNavBar() {
  return Container(
      width: double.infinity,
      height: 40,
      color: const Color(0xFF393E46),
      child: Row(
          children: List.generate(bottomNavItems.length, (index) {
        return GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              Icon(bottomNavItems[index]['icon']),
              Text(bottomNavItems[index]['label']),
            ],
          ),
        );
      })));
}
