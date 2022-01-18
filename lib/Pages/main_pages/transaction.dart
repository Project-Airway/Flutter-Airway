import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:airway_flutter/Pages/bottom.dart';
import 'package:expansion_card/expansion_card.dart';
import 'package:airway_flutter/components/Transactions_Builder.dart';

class Transactions extends StatefulWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:Center(
          child:SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bg-common-main2.png'),
                  fit:BoxFit.cover,
                ),
              ),
              padding:EdgeInsets.symmetric(horizontal: 15.0,vertical:0.0),
                child:Column(
                  children: [
                    SizedBox(height: 10.0),
                    Image(image: AssetImage('assets/logo2.png')),
                    SizedBox(height: 10.0),
                    Container(
                      child: Center(
                        child: Text('Transaction\nHistory',
                          style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.w900,
                            color:Colors.white,
                            letterSpacing: 2.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    TransBuilder()
                    ],
                ),
              ),
          ),
          ),
    );
  }

}