import 'package:airway_flutter/Pages/main_pages/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:airway_flutter/Pages/main_pages/booking_1.dart';
import 'package:airway_flutter/Pages/main_pages/account_page.dart';
import 'package:airway_flutter/pages/main_pages/points_history.dart';

class bottom_bar extends StatefulWidget {
  const bottom_bar({Key? key}) : super(key: key);

  @override
  _bottom_barState createState() => _bottom_barState();
}

class _bottom_barState extends State<bottom_bar> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;
    return NavBar(data: data,);
  }
}

class NavBar extends StatefulWidget {
  const NavBar({Key? key, required this.data}) : super(key: key);

  final Map data;

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;

  late List children;

  void initState() {
    super.initState();

    children = [
      main_booking( data: widget.data),
      Points(),
      Transactions(),
      Account()

    ];
  }

  void onTapped (int index) {
    setState(() {
      currentIndex = index;
    });
    // pageController.jumpToPage(index);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
              color: Colors.black,
            ),
            label: 'Home',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pages,
              color: Colors.black,),
            label: 'Option2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit_rounded,
              color: Colors.black,),
            label: 'Option3',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_rounded,
              color: Colors.black,),
            label: 'User Account',
          )

        ],
        onTap: onTapped,
        currentIndex: currentIndex,
      ),
    );
  }
}




