import 'package:flutter/material.dart';
import 'package:airway_flutter/Pages/User_onboard1.dart';
import 'package:airway_flutter/Pages/User_onboard2.dart';
import 'package:airway_flutter/Pages/user_onboardmain.dart';
import 'package:airway_flutter/Pages/User_onboard3.dart';
import 'package:airway_flutter/Pages/Edit_profile.dart';
import 'package:airway_flutter/pages/main_pages/account_page.dart';
import 'package:airway_flutter/pages/main_pages/points_history.dart';
import 'package:airway_flutter/pages/faq/faq.dart';
import 'package:airway_flutter/Pages/main_pages/transaction.dart';
import 'package:airway_flutter/Pages/Reasons.dart';
import 'package:airway_flutter/Pages/main_pages/booking_1.dart';
import 'package:airway_flutter/Pages/main_pages/search_results.dart';
import 'package:airway_flutter/Pages/main_pages/booking_confirm.dart';


void main() => runApp(MaterialApp(
  initialRoute: 'main_booking',
  routes: {
   // '/': (context) => loading(),
    'user_onboard1':(context) => user_onboard1(),
    'user_onboard2':(context) => user_onboard2(),
    'user_onboard3':(context) => user_onboard3(),
    'user_onboardmain':(context) => user_onboardmain(),
    'user_account' : (context) => Account(),
    'points_history':(context) => Points(),
    'edit_account':(context) => Editprofile(),
    'faq':(context) => FAQ(),
    'transactions':(context)=>Transactions(),
    'reasons':(context)=>Reasons(),
    'main_booking':(context)=>main_booking(),
    'results':(context)=>results(),
    'booking_confirm':(context)=>confirm_booking(),
  },
));

    
