import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:airway_flutter/pages/main_pages/info.dart';
import 'package:airway_flutter/pages/main_pages/points_builder.dart';
import 'package:airway_flutter/components/bottom_navbar.dart';


class Points extends StatefulWidget {
  const Points({Key? key}) : super(key: key);

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<Points> {
  var x=0;
  List<Info> previous=[
    Info(points: '70', location: 'Hyderabad'),
    Info(points: '80', location: 'Chennai'),
    Info(points: '-20', location: 'Delhi'),
  ];

  Widget printlast(prev){
    return Card(
      margin: EdgeInsets.fromLTRB(100, 20, 0, 0),
      child: Row(
        children: <Widget>[
          Text(
            prev.amount,
            style: TextStyle(
              fontSize: 16,
              color:Colors.blue,
            ),
          ),
          SizedBox(width: 20),
          Text(
            'points earned from last trip to' ,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 10),
          Text(
            prev.place,
            style: TextStyle(
              fontSize: 16,
              color:Colors.blue,
            ),
          ),
          ElevatedButton(onPressed:(){},
            child: Icon( Icons.arrow_forward_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body:
        Center(
          child: SafeArea(
            child:Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/points_bg.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              // width: 400+10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: 20,),
                  Center(
                    child: Container(

                      child: Text(
                        'Points\nEarned',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 4.0,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Center(
                    child: Container(
                      child:Card(
                        child:
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40,20,40,20),
                          child: Text(
                            '$x\nTotal Points\nEarned',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        elevation: 20,
                        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0),),
                        color: Color.fromRGBO(255, 255, 255, 0.9),
                      ),
                    ),
                  ),
                  SizedBox(height: 45),
                  Center(
                    child: Text('Points history',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  points_history()

                ],
              ),

            ),

          ),

        ),



        // bottomNavigationBar:bottom_bar()
    );
  }
}