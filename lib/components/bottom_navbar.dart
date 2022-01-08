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

  int currentIndex = 0;
  final List children = [
    main_booking(),
    Points(),
    Transactions(),
    Account()

  ];

  void onTapped (int index) {
    setState(() {
      currentIndex = index;
    });
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



