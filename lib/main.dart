import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:airway_flutter/Pages/User_onboard1.dart';
import 'package:airway_flutter/Pages/User_onboard2.dart';
import 'package:airway_flutter/Pages/user_onboardmain.dart';
import 'package:airway_flutter/Pages/User_onboard3.dart';


void main() => runApp(MaterialApp(
  initialRoute: 'user_onboard1',
  routes: {
   // '/': (context) => loading(),
    'user_onboard1':(context) => user_onboard1(),
    'user_onboard2':(context) => user_onboard2(),
    'user_onboard3':(context) => user_onboard3(),
    'user_onboardmain':(context) => user_onboardmain(),


  },
));

    
