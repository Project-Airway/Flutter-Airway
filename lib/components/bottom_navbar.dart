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
      Transactions(data: widget.data),
      Account(data: widget.data)

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
        unselectedItemColor: Color.fromRGBO(189, 189, 189, 1),
        selectedItemColor: Color.fromRGBO(246, 194, 57, 1),
        selectedIconTheme: IconThemeData(
          color: Color.fromRGBO(246, 194, 57, 1),
        ),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(20, 20, 20, 1),
            icon: Icon(Icons.home,
            ),
            label: 'Home',

          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(20, 20, 20, 1),
            icon: Icon(Icons.pages,),
            label: 'Points',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(20, 20, 20, 1),
            icon: Icon(Icons.ac_unit_rounded,),
            label: 'History',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(20, 20, 20, 1),
            icon: Icon(Icons.account_box_rounded,),
            label: 'Account',
          )

        ],
        onTap: onTapped,
        currentIndex: currentIndex,
      ),
    );
  }
}




