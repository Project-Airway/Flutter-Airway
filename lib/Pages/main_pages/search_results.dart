import 'package:flutter/material.dart';

class results extends StatefulWidget {
  const results({Key? key}) : super(key: key);

  @override
  _resultsState createState() => _resultsState();
}

class _resultsState extends State<results> {
  Map tickets = {};
  List  details = [];
  String date = '';
  String seats = '';
  String user_id = '';

  @override
  Widget build(BuildContext context) {
    tickets = tickets.isNotEmpty ? tickets : ModalRoute.of(context)?.settings.arguments as Map;
    details = tickets['data'];
    date = tickets['date'];
    seats = tickets['seats'];
    user_id = tickets['user_id'];

    print(tickets);
    return Scaffold(
      backgroundColor: Color.fromRGBO(33, 33, 33, 1),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg-common-main2.png'),
              fit: BoxFit.fitWidth,
            ),

          ),
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30,20,20,20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/logo2.png'),
                SizedBox(height: 10,),
                Text('Search results',style: TextStyle(
                  fontSize: 36,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                ),),

                SizedBox(height: 50,),

                if(details.isEmpty)...[
                  Center(
                    child: Text("Flight details could not be\nfound for the details\nyou've entered",style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w700,
                        color: Colors.white
                    ),textAlign: TextAlign.center,
                    ),
                  ),
                ],

                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: details.length,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0,10,10,10),
                        child: GestureDetector(
                          onTap: (){
                            print(seats);
                            Navigator.pushNamed(context, 'booking_confirm', arguments: {
                              'data': details[index],
                              'date': date,
                              'seats':seats,
                              'user_id': user_id
                            });
                          },
                          child: Card(
                            color: Color.fromRGBO(38, 38, 38, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            elevation: 10,
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(20,20,20,20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Row(

                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('${details[index]['src']}',
                                              style: TextStyle(
                                                  fontFamily: 'montserrat',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 18,
                                                  color: Color.fromRGBO(251, 251, 251, 1)
                                              ),),

                                            SizedBox(height: 20,),

                                            Text('₹ ${(details[index]['totalPriceUsd']* 75).toStringAsFixed(0)}',
                                              style: TextStyle(
                                                  fontFamily: 'montserrat',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(251, 251, 251, 1)
                                              ),),

                                          ],
                                        ),

                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.start,

                                          children: [
                                            Text('${details[index]['duration']}',
                                              style: TextStyle(
                                                  fontFamily: 'montserrat',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16,
                                                  color: Color.fromRGBO(251, 251, 251, 1)
                                              ),),

                                            SizedBox(height: 20,),

                                            Image.asset('assets/ticket_fill_2.png'),

                                          ],
                                        ),

                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Text('${details[index]['dest']}',
                                              style: TextStyle(
                                                  fontFamily: 'montserrat',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 18,
                                                  color: Color.fromRGBO(251, 251, 251, 1)
                                              ), textAlign: TextAlign.end,),

                                            SizedBox(height: 20,),

                                            Text('${details[index]['airlineName']}',
                                              style: TextStyle(
                                                  fontFamily: 'montserrat',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(251, 251, 251, 1)
                                              ),textAlign: TextAlign.end,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
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
                SizedBox(height: 20,),
                Center(
                  child: RaisedButton(onPressed: (){
                    Navigator.pop(context);
                  },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Color.fromRGBO(221, 195, 102, 1),width: 4)
                    ),

                    color: Color.fromRGBO(255, 228, 211, 0),

                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                      child: Text('Back', style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Color.fromRGBO(221, 195, 102, 1),
                      ),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}