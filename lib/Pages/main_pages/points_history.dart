import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:airway_flutter/pages/main_pages/info.dart';
import 'package:airway_flutter/pages/main_pages/points_builder.dart';
import 'package:airway_flutter/components/bottom_navbar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Points extends StatefulWidget {
  const Points({Key? key, required this.data}) : super(key: key);
  final Map data;
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
  int total=0;

  Future<List> get_tickets(String user_id) async {
    http.Response response = await http
        .get(Uri.parse('http://10.0.2.2:3001/booking/${user_id}/getTickets'));
    // print(response.body);
    List passData = json.decode(response.body);
    print(passData);
    return passData;
  }
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
    return Scaffold(
      backgroundColor: Color.fromRGBO(33, 33, 33, 1),
        body:
            SafeArea(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/bg-common-main.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                // width: 400+10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 20,),
                    Image.asset('assets/logo2.png'),
                     Container(
                        child: Text(
                          'Points Earned',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: "poppins"
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    SizedBox(height: 30),
                    Container(
                      height: 120,
                      width: 125,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/leaf.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Text("${widget.data['data']['reward_points']}",
                        style: TextStyle(
                            color: Color.fromRGBO(221, 195, 102, 1),
                          fontFamily: "poppins",
                          fontSize: 28
                        ),),
                      ),
                    ),
                    Center(
                      child: Text('Points History',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "poppins",
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox( height: 250,child: points_history( data: widget.data))
                  ],
                ),
              ),
            ),
        // bottomNavigationBar:bottom_bar()
    );
  }
}