import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:airway_flutter/Pages/bottom.dart';
import 'package:expansion_card/expansion_card.dart';

class Transactions extends StatefulWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  var date = "30th March";
  var rept = "07:30 AM";
  var dept = "08:00 AM";
  var name = "John Doe";
  var pnr = "1DS19IS007";
  var coach = "BSC";
  var cost = "3045 Rs";
  var flightname = "SpiceJet Airways";
  var src = "BLR";
  var dest = "CHN";
  var source = "Bengaluru";
  var destination = "Chennai";
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:SafeArea(
          child:Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/6.jpeg'),
                fit:BoxFit.cover,
              ),
            ),
            padding:EdgeInsets.symmetric(horizontal: 15.0,vertical:0.0),
            child: SingleChildScrollView(
              child:Column(
                children: [
                  Image(image: AssetImage('assets/Btn.png')),
                  SizedBox(height: 10.0),
                  Text('Transaction\nHistory',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.w900,
                      color:Colors.black,
                      letterSpacing: 2.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        color:Colors.grey,
                        child: TextButton(onPressed: (){},child: Text(
                          'Previous',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ),
                      ),
                      Container(
                        color:Colors.grey,
                        child: TextButton(onPressed: (){},child: Text(
                          'Upcoming',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 20,),
                  expansion('https://media.istockphoto.com/photos/white-paper-background-picture-id1040425512?b=1&k=20&m=1040425512&s=170667a&w=0&h=mo6rWtHjzwQCJuwcBjRBzPuSzvZ-iDWqpAHDDrXETOg=','Trip from $source to $destination on \n$date','$flightname\n$src\t\t\t\t\t\t\t\t\t$dest\n$date\t\t\t\t\t\t$rept\n$name\t\t\t\t\t\t\t$pnr\n$coach\t\t\t\t\t\t\t$cost Rs'),
                  SizedBox(height: 20,),
                  expansion('https://media.istockphoto.com/photos/white-paper-background-picture-id1040425512?b=1&k=20&m=1040425512&s=170667a&w=0&h=mo6rWtHjzwQCJuwcBjRBzPuSzvZ-iDWqpAHDDrXETOg=','Trip from Bengaluru to Mumbai','Air India\nBLR\t\t\t\t\t\t\t\t\tMUM\n26th October\t\t\t\t\t\t11:30\nJohn Doe\t\t\t\t\t\t\t1DS20CS020\nFC\t\t\t\t\t\t\t5000 Rs'),
                  SizedBox(height: 20,),
                  expansion('https://media.istockphoto.com/photos/white-paper-background-picture-id1040425512?b=1&k=20&m=1040425512&s=170667a&w=0&h=mo6rWtHjzwQCJuwcBjRBzPuSzvZ-iDWqpAHDDrXETOg=','Trip from $source to $destination on \n$date','$flightname\n$src\t\t\t\t\t\t\t\t\t$dest\n$date\t\t\t\t\t\t$rept\n$name\t\t\t\t\t\t\t$pnr\n$coach\t\t\t\t\t\t\t$cost'),
                  SizedBox(height: 20,),
                  expansion('https://media.istockphoto.com/photos/white-paper-background-picture-id1040425512?b=1&k=20&m=1040425512&s=170667a&w=0&h=mo6rWtHjzwQCJuwcBjRBzPuSzvZ-iDWqpAHDDrXETOg=','Trip from $source to $destination on \n$date','$flightname\n$src\t\t\t\t\t\t\t\t\t$dest\n$date\t\t\t\t\t\t$rept\n$name\t\t\t\t\t\t\t$pnr\n$coach\t\t\t\t\t\t\t$cost '),
                  SizedBox(height: 10,),
                  ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: bottom_bar(),
    );
  }
  Container expansion(String img,String ques,String ans) {
    return Container(
      //margin: EdgeInsets.symmetric(horizontal: 20),
      child: ExpansionCard(
        //backgroundColor: Colors.white70,
        background: Image.network(img),
        borderRadius: 20,
        title: Container(
          child:Padding(
            padding: EdgeInsets.only(left: 0.0),
            child: Text(ques,
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        children: [
          SizedBox(height: 20.0,),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: 10.0,right: 10.0),
              child:Text(ans,
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}