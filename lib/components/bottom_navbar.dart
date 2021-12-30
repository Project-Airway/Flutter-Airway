import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottom_bar extends StatefulWidget {
  const bottom_bar({Key? key}) : super(key: key);

  @override
  _bottom_barState createState() => _bottom_barState();
}

class _bottom_barState extends State<bottom_bar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
              color: Colors.black,),
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
      ),
    );
  }
}



