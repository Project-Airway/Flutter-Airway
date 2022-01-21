import 'package:flutter/material.dart';
import 'package:airway_flutter/Pages/User_onboard1.dart';
import 'package:airway_flutter/Pages/User_onboard2.dart';
import 'package:airway_flutter/Pages/onboard_3.dart';
import 'package:airway_flutter/Pages/user_onboardmain.dart';
import 'package:airway_flutter/Pages/User_onboard3.dart';
import 'package:airway_flutter/Pages/main_pages/login.dart';
import 'package:airway_flutter/Pages/Edit_profile.dart';
import 'package:airway_flutter/pages/main_pages/account_page.dart';
import 'package:airway_flutter/pages/main_pages/points_history.dart';
import 'package:airway_flutter/pages/faq/faq.dart';
import 'package:airway_flutter/Pages/main_pages/transaction.dart';
import 'package:airway_flutter/Pages/Reasons.dart';
import 'package:airway_flutter/Pages/main_pages/booking_1.dart';
import 'package:airway_flutter/Pages/main_pages/search_results.dart';
import 'package:airway_flutter/Pages/main_pages/booking_confirm.dart';
import 'package:airway_flutter/Pages/main_pages/success.dart';
import 'package:airway_flutter/Pages/main_pages/edit_acc.dart';
import 'package:airway_flutter/components/bottom_navbar.dart';
import 'package:airway_flutter/components/Transaction_Card.dart';
import 'package:airway_flutter/components/Transactions_Builder.dart';
import 'package:airway_flutter/Pages/main_pages/PP-TC.dart';

void main() => runApp(MaterialApp(
  initialRoute: 'login',

  routes: {
   // '/': (context) => loading(),
    'user_onboard1':(context) => user_onboard1(),
    'user_onboard2':(context) => user_onboard2(),
    // 'user_onboard3':(context) => user_onboard3(),
    'login':(context) => login(),
    'onboard3':(context) => onboard_3(),
    'user_onboardmain':(context) => user_onboardmain(),
    // 'user_account' : (context) => Account(),
    // 'points_history':(context) => Points(),
    'edit_account':(context) => Editprofile(),
    'faq':(context) => FAQ(),
    // 'transactions':(context)=>Transactions(),
    'reasons':(context)=>Reasons(),
    // 'main_booking':(context)=>main_booking(),
    'results':(context)=>results(),
    'booking_confirm':(context)=>confirm_booking(),
    'bottom_bar':(context) => bottom_bar(),
    'edit_acc' : (context) => editInfo(),
    'transact_card':(context)=>TransactionDetails(),
    // 'trans_builder':(context)=>TransBuilder(),
    'success': (context) => Success(),
    'PPTC':(context)=>PPTC(),
  },
));

    
