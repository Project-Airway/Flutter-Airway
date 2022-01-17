import 'package:flutter/material.dart';
import 'package:airway_flutter/Pages/main_pages/TransInfo.dart';

class TransactionDetails extends StatefulWidget {
  const TransactionDetails({Key? key}) : super(key: key);

  @override
  _TransactionDetailsState createState() => _TransactionDetailsState();
}

class _TransactionDetailsState extends State<TransactionDetails> {

   Map data= {};

  @override

  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg-common.jpeg'),
                fit: BoxFit.fitWidth,
              ),
            ),
            width: double.infinity,
            height: double.infinity,
            child: Padding(
                padding: const EdgeInsets.fromLTRB(40,20,20,20),
                child: ListView(
                    shrinkWrap: true,

                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image.asset('assets/logo.png'),
                      SizedBox(height: 50,child: Image.asset('assets/logo.png',alignment: Alignment.topLeft,)),
                      Text('Your Booking',style: TextStyle(
                        fontSize: 36,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w700,
                      ),),

                      Card(
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
                                  ),),],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Airways',style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                  ),),],),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Flight info',style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w500,
                                  ),),],),

                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${data['source']}',style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                  ),),

                                  Text('time',style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w500,
                                  ),),

                                  Text('${data['destination']}',style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                  ),),

                                ],),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Source',style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w500,
                                  ),),

                                  Image.asset('assets/ticket_fill_2.png'),

                                  Text('Dest.',style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w500,
                                  ),),

                                ],),

                              SizedBox(height: 20,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${data['date']}',style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                  ),),


                                  Text('${data['time']}',style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                  ),),

                                ],),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Date',style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w500,
                                  ),),


                                  Text('Departure time',style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w500,
                                  ),),
                                ],),

                              SizedBox(height: 20,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${data['name']}',style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                  ),),


                                  Text('${data['flightid']}',style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                  ),),

                                ],),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Passenger name',style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w500,
                                  ),),


                                  Text('Flight Id',style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w500,
                                  ),),
                                ],),
                              SizedBox(height: 20,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text('${data['coach']}',style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.w700,
                                      ),),
                                      Text('Class',style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.w500,
                                      ),textAlign: TextAlign.center),

                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('${data['cost']}',style: TextStyle(
                                        fontSize: 22,
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.w700,
                                      ),),

                                      Text('Price',style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.w500,
                                      ),textAlign: TextAlign.center),

                                    ],
                                  ),
                                ],
                              ),

                              SizedBox(height: 20,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  RaisedButton(onPressed: (){
                                    Navigator.pushNamed(context,'reasons');
                                  },
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        side: BorderSide(color: Colors.amber,width: 4)
                                    ),

                                    color: Colors.white,

                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                                      child: Text('Cancel', style: TextStyle(
                                        fontFamily: 'montserrat',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 24,
                                        color: Colors.amber,
                                      ),),
                                    ),
                                  ),
                                  RaisedButton(onPressed: (){
                                    Navigator.pop(context);
                                  },
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        side: BorderSide(color: Colors.amber,width: 4)
                                    ),

                                    color: Colors.white,

                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                                      child: Text('Got It', style: TextStyle(
                                        fontFamily: 'montserrat',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 24,
                                        color: Colors.amber,
                                      ),),
                                    ),
                                  )
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
