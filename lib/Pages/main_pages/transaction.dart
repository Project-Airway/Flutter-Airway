import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:airway_flutter/Pages/bottom.dart';
import 'package:expansion_card/expansion_card.dart';
import 'package:airway_flutter/components/Transactions_Builder.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Transactions extends StatefulWidget {
  const Transactions({Key? key, required this.data}) : super(key: key);
  final Map data;

  @override
  _TransactionsState createState() => _TransactionsState();
}


class _TransactionsState extends State<Transactions> {

  @override
  Widget build(BuildContext context) {
       return new Scaffold(
      backgroundColor: Color.fromRGBO(33, 33, 33, 1),
      body:SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg-common-main.png'),
              fit:BoxFit.cover,
            ),
          ),
          width: double.infinity,
          height: double.infinity,
          padding:EdgeInsets.symmetric(horizontal: 15.0,vertical:0.0),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10.0),
                Image(image: AssetImage('assets/logo2.png')),
                SizedBox(height: 20.0),
                Container(
                  child: Center(
                    child: Text('Transaction\nHistory',
                      style: TextStyle(
                        fontSize: 36.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w900,
                        color:Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 30,),

                SingleChildScrollView(
                  child: SizedBox(
                    height: 420,
                    child: TransBuilder(data: widget.data),
                  ),
                )
                ],
            ),
          ),
      ),
    );
  }

}