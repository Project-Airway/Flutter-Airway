import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:airway_flutter/components/Transactions_Builder.dart';

class Success extends StatefulWidget {
  const Success({Key? key}) : super(key: key);

  @override
  _TransactionsState createState() => _TransactionsState();
}


class _TransactionsState extends State<Success> {

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
                  child: Text('Ticket\nConfirmed',
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
              SizedBox(height: 80,),
              Text('Your ticket is confirmed\nand you can view it under transactions tab',
                style: TextStyle(
                  height: 1.7,
                  fontSize: 22.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w900,
                  color:Colors.white,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 40,),

              RaisedButton(onPressed: (){
                Navigator.popUntil(context, ModalRoute.withName('bottom_bar'));
              },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Color.fromRGBO(221, 195, 102, 1),width: 4)
                ),

                color: Color.fromRGBO(255, 228, 211, 0),

                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: Text('Cool', style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: Color.fromRGBO(221, 195, 102, 1),
                  ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}