import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:airway_flutter/components/Transactions_Builder.dart';

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
                SizedBox(height: 10.0),
                Container(
                  child: Center(
                    child: Text('Transaction\nHistory',
                      style: TextStyle(
                        fontSize: 32.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w900,
                        color:Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 20,),

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