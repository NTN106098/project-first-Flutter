import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/pages/page_tree/endow/endow_gift.dart';
import 'package:mobile_app/pages/page_tree/stores/local_store.dart';
import 'package:mobile_app/pages/page_tree/profile/profile_user.dart';

import 'home/main_home_page.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  var myindex = 0;

  var pageAll = [
    HomePage(),
    GiftPlus(),
    StoreLocal(),
    ProfileUser(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        // color: Colors.transparent,
        color: Color.fromARGB(255, 145, 142, 142),
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.white,
        // animationCurve: Curves.fastLinearToSlowEaseIn,
        height: 60,
        items: [
          Icon(
            Icons.home,
            size: 30,
          ),
          Icon(Icons.gif_box, size: 30),
          Icon(Icons.local_activity, size: 30),
          // Icon(Icons.qr_code, size: 20),
          Icon(
            Icons.person,
            size: 20,
          ),
        ],

        onTap: (index) => setState(() {
          myindex = index;
        }),
      ),
      body: pageAll[myindex],
    );
  }
}
