import 'package:airway_flutter/Pages/User_onboard2.dart';
import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';

class user_onboardmain extends StatefulWidget {
  const user_onboardmain({Key? key}) : super(key: key);

  @override
  _user_onboardmainState createState() => _user_onboardmainState();
}

class _user_onboardmainState extends State<user_onboardmain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: <Color>[Colors.white, Color.fromRGBO(245, 209, 0, 1), Colors.red],
        itemCount: 2, // null = infinity
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (int index, double value) {
          return Center(
            child: Container(
              child: user_onboard2(),
            ),
          );
        },
      ),
    );
  }
}
