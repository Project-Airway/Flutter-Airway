import 'package:flutter/material.dart';

class confirm_booking extends StatelessWidget {
  const confirm_booking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List details = [
    [
      'Bangalore',
      'Chennai',
      '30 March',
      '08:00',
      'Jet Airways',
      'Aditya K',
      'ISPC2018',
      1800,
    ],];

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
              Text('${details[0][4]}',style: TextStyle(
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
                  Text('${details[0][0]}',style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w700,
                      color: Colors.white
                  ),),

                  Text('${details[0][3]} hr',style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w500,
                      color: Colors.white
                  ),),

                  Text('${details[0][1]}',style: TextStyle(
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
                  Text('${details[0][2]}',style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w700,
                      color: Colors.white
                  ),),


                  Text('07:30 AM',style: TextStyle(
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
                  Text('${details[0][5]}',style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w700,
                      color: Colors.white
                  ),),


                  Text('${details[0][6]}',style: TextStyle(
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Select class',style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w700,
                      color: Colors.white
                  ),),],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){

                        },
                        child: Card(

                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text('A'),

                          ),
                          color: Colors.deepPurple,
                        ),
                      ),
                      Text('First\nClass',style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w500,
                          color: Colors.white
                      ),textAlign: TextAlign.center),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){

                        },
                        child: Card(

                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text('B'),

                          ),
                          color: Colors.pinkAccent,
                        ),
                      ),
                      Text('Business\nClass',style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w500,
                          color: Colors.white
                      ),textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){

                        },
                        child: Card(

                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text('C'),

                          ),
                          color: Colors.green,
                        ),
                      ),
                      Text('Economy\nClass',style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w500,
                          color: Colors.white
                      ),textAlign: TextAlign.center),
                    ],
                  ),

                ],
              ),
              SizedBox(height: 20,),

              Column(
                children: [
                  Text('${details[0][7]*3}',style: TextStyle(
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
                    RaisedButton(onPressed: (){
                      Navigator.pop(context);
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
