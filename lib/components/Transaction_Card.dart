import 'package:flutter/material.dart';
import 'package:airway_flutter/Pages/main_pages/TransInfo.dart';

class TransactionDetails extends StatefulWidget {
  const TransactionDetails({Key? key}) : super(key: key);

  @override
  _TransactionDetailsState createState() => _TransactionDetailsState();
}

class _TransactionDetailsState extends State<TransactionDetails> {

   Map data= {};
   String filler(String status){
     if(status=='Upcoming')
       return 'assets/ticket_fill_green.png';
     if(status=='Completed')
       return 'assets/ticket_fill_yellow.png';
     return 'assets/ticket_fill_red.png';
   }
   
  @override

  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg-common-main2.png'),
                fit: BoxFit.cover,
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
                                  Text('Airway Name',style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white
                                  ),),],),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Flight info',style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white
                                  ),),],),

                              SizedBox(height: 20,),


                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${data['source']}',style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white
                                  ),),

                                  Text('time',style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white
                                  ),),

                                  Text('${data['destination']}',style: TextStyle(
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

                                  Image.asset(filler(data['status'])),

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
                                  Text('${data['date']}',style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white
                                  ),),


                                  Text('${data['time']}',style: TextStyle(
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


                                  Text('Departure time',style: TextStyle(
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
                                  Text('${data['name']}',style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white
                                  ),),


                                  Text('${data['flightid']}',style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white
                                  ),),

                                ],),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Passenger name',style: TextStyle(
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  RaisedButton(onPressed: (){
                                    Navigator.pushNamed(context, 'reasons');
                                  },
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(color: Color.fromRGBO(221, 195, 102, 1),width: 4)
                                    ),

                                    color: Color.fromRGBO(221, 195, 102, 1),

                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                      child: Text('Cancel', style: TextStyle(
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
