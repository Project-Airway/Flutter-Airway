import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class confirm_booking extends StatefulWidget {
  const confirm_booking({Key? key}) : super(key: key);

  @override
  State<confirm_booking> createState() => _confirm_bookingState();
}

class _confirm_bookingState extends State<confirm_booking> {

  double mul = 1.00;
  String date = '';
  Map tickets = {};
  Map details = {};
  String seats = '';
  String user_id = '';

  Future<http.Response> book_ticket(Map data, String seats, String user_id, String date) async {
    print(data['id']);
    return http.post(Uri.parse('http://10.0.2.2:3001/booking/${user_id}/book'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(<String, String>{
        'id': data['id'],
        'src': data['src'],
        'dest': data['dest'],
        'date1': date,
        'numberOfSeats': seats,
        'depTime': data['depTime'],
        'arrTime': data['arrTime'],
        'duration': data['duration'],
        'airlineCodes': data['airlineCodes'],
        'airlineName': data['airlineName'],
        'totalPriceUsd': data['totalPriceUsd'].toString()
      }),
    );
  }


  @override
  Widget build(BuildContext context) {

    tickets = tickets.isNotEmpty ? tickets : ModalRoute.of(context)?.settings.arguments as Map;
    details = tickets['data'];
    date = tickets['date'];
    seats = tickets['seats'];
    user_id = tickets['user_id'];


    print(tickets);
    print(date);

    return Scaffold(
        body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/bg-common-main3.png'),
    fit: BoxFit.fitWidth,
    ),

    ),
    width: double.infinity,
    height: double.infinity,
    child: Padding(
    padding: const EdgeInsets.fromLTRB(30,20,20,20),
    child: ListView(
        shrinkWrap: true,

    // crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    // Image.asset('assets/logo.png'),
      SizedBox(height: 50,child: Image.asset('assets/logo2.png',alignment: Alignment.topLeft,)),

      SizedBox(height: 50,),

      Card(
        color: Color.fromRGBO(20, 20, 20, 1),
        elevation: 10
      ,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Column(

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Flight Information',style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                  ),),],
              ),
              SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${details['airlineName']}',style: TextStyle(
                fontSize: 18,
                fontFamily: 'poppins',
                fontWeight: FontWeight.w700,
                  color: Colors.white
              ),),],),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Flight info',style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w500,
                      color: Colors.white
                  ),),],),

              SizedBox(height: 20,),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${details['src']}',style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w700,
                      color: Colors.white
                  ),),

                  Text('    ${details['duration']}',style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w500,
                      color: Colors.white
                  ),),

                  Text('${details['dest']}',style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w700,
                      color: Colors.white
                  ),),

                ],),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Source',style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w500,
                      color: Colors.white
                  ),),

                  Image.asset('assets/ticket_fill_2.png'),

                  Text('Dest.',style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w500,
                      color: Colors.white
                  ),),

                ],),

              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${details['depTime']}',style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w700,
                      color: Colors.white
                  ),),


                  Text('${seats}',style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w700,
                      color: Colors.white
                  ),),

                ],),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Departure time',style: TextStyle(
                fontSize: 14,
                fontFamily: 'poppins',
                fontWeight: FontWeight.w500,
                  color: Colors.white
              ),),


              Text('No. of seats',style: TextStyle(
                fontSize: 14,
                fontFamily: 'poppins',
                fontWeight: FontWeight.w500,
                  color: Colors.white
              ),),
            ],),

              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${date}'.substring(0,10),style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w700,
                      color: Colors.white
                  ),),


                  Text('${details['id']}'.substring(8,13),style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w700,
                      color: Colors.white
                  ),),

                ],),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Date',style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w500,
                      color: Colors.white
                  ),),


                  Text('Flight Id',style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w500,
                      color: Colors.white
                  ),),
                ],),

              SizedBox(height: 20,),

              Column(
                children: [
                  Text('₹ ${(details['totalPriceUsd']* 75).toStringAsFixed(0)}',style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w700,
                      color: Colors.white
                  ),),

                  Text('Price',style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w500,
                      color: Colors.white
                  ),textAlign: TextAlign.center),

                ],
              ),

                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RaisedButton(onPressed: () async{
                      print(details);
                      http.Response response = await book_ticket(details, seats, user_id, date);
                      Map ticket_data = json.decode(response.body);

                      Navigator.pushReplacementNamed(context, 'success');

                    },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Color.fromRGBO(221, 195, 102, 1),width: 4)
                      ),

                      color: Color.fromRGBO(221, 195, 102, 1),

                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Text('Book', style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Color.fromRGBO(20, 20, 20, 1),
                        ),),
                      ),
                    ),




                    RaisedButton(onPressed: (){
                      Navigator.pop(context);
                    },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Color.fromRGBO(221, 195, 102, 1),width: 4)
                      ),

                      color: Color.fromRGBO(255, 228, 211, 0),

                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Text('Back', style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Color.fromRGBO(221, 195, 102, 1),
                        ),),
                      ),
                    ),
                  ],
                )
            ],
          ),
        ),
      )


        ])))
    );
  }
}
