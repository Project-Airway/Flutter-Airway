import 'package:flutter/material.dart';

class results extends StatefulWidget {
  const results({Key? key}) : super(key: key);

  @override
  _resultsState createState() => _resultsState();
}

class _resultsState extends State<results> {

  List details = [
    [
      'Bangalore',
      'Chennai',
      '30 March',
      '08:00',
      'Jet Airways'
    ],
    [
      'Bangalore',
      'Chennai',
      '30 March',
      '08:30',
      'Peasant Airways'
    ],
    [
      'Bangalore',
      'Chennai',
      '31 March',
      '05:30',
      'Rich AF Airways'
    ],
  ];

  @override
  Widget build(BuildContext context) {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/logo.png'),
              Text('Search results',style: TextStyle(
                fontSize: 36,
                fontFamily: 'poppins',
                fontWeight: FontWeight.w700,
              ),),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: details.length,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(20,10,20,10),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushReplacementNamed(context, '');
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          elevation: 10,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(40,20,40,20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('${details[index][0]}',
                                    style: TextStyle(
                                        fontFamily: 'montserrat',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 22,
                                        color: Color.fromRGBO(25, 6, 25, 1)
                                    ),),

                                  Text('Source',
                                    style: TextStyle(
                                        fontFamily: 'montserrat',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Color.fromRGBO(25, 6, 25, 1)
                                    ),),

                                  SizedBox(height: 20,),

                                  Text('${details[index][1]}',
                                    style: TextStyle(
                                        fontFamily: 'montserrat',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 22,
                                        color: Color.fromRGBO(25, 6, 25, 1)
                                    ),),

                                  Text('Destination',
                                    style: TextStyle(
                                        fontFamily: 'montserrat',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Color.fromRGBO(25, 6, 25, 1)
                                    ),),

                                  SizedBox(height: 20,),

                                  Text('${details[index][2]}',
                                    style: TextStyle(
                                        fontFamily: 'montserrat',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 22,
                                        color: Color.fromRGBO(25, 6, 25, 1)
                                    ),),

                                  Text('Date',
                                    style: TextStyle(
                                        fontFamily: 'montserrat',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Color.fromRGBO(25, 6, 25, 1)
                                    ),),

                                  SizedBox(height: 20,),

                                  Text('${details[index][3]}',
                                    style: TextStyle(
                                        fontFamily: 'montserrat',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 22,
                                        color: Color.fromRGBO(25, 6, 25, 1)
                                    ),),

                                  Text('Travel Dur.',
                                    style: TextStyle(
                                        fontFamily: 'montserrat',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Color.fromRGBO(25, 6, 25, 1)
                                    ),),

                                  SizedBox(height: 20,),

                                  Text('${details[index][4]}',
                                    style: TextStyle(
                                        fontFamily: 'montserrat',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 22,
                                        color: Color.fromRGBO(25, 6, 25, 1)
                                    ),),
                                  Text('By',
                                    style: TextStyle(
                                        fontFamily: 'montserrat',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Color.fromRGBO(25, 6, 25, 1)
                                    ),),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}