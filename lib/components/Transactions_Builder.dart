import 'package:flutter/material.dart';
import 'package:airway_flutter/Pages/main_pages/TransInfo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TransBuilder extends StatefulWidget {
  const TransBuilder({Key? key, required this.data}) : super(key: key);
  final Map data;
  @override
  _TransBuilderState createState() => _TransBuilderState();
}

class _TransBuilderState extends State<TransBuilder> {

  String filler(String status) {
    if (status == 'Upcoming') return 'assets/ticket_fill_green.png';
    if (status == 'Completed') return 'assets/ticket_fill_yellow.png';
    return 'assets/ticket_fill_red.png';
  }

  Future<List<dynamic>>? tickets;

  @override
  void initState() {
    super.initState();
    // String temp = widget.data['data'];
    // print(temp);
    tickets = get_tickets(widget.data['data']['userId']);
    print(tickets);
  }


  @override
  Widget build(BuildContext context) {
    return Container(
        child: FutureBuilder<List<dynamic>>(
            future: tickets,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<dynamic>? data = snapshot.data;
                print(tickets);
                return ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: data?.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'transact_card', arguments: data?[index]);
                        },
                        child: Card(
                          color: Color.fromRGBO(38, 38, 38, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          elevation: 10,
                          child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(20, 20, 20, 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '${data?[index]['source']}',
                                            style: TextStyle(
                                                fontFamily: 'montserrat',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 18,
                                                color: Color.fromRGBO(
                                                    251, 251, 251, 1)),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            '${data?[index]['dateOfTravel']}'.substring(0,10),
                                            style: TextStyle(
                                                fontFamily: 'montserrat',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14,
                                                color: Color.fromRGBO(
                                                    251, 251, 251, 1)),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${data?[index]['duration']}',
                                            style: TextStyle(
                                                fontFamily: 'montserrat',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                                color: Color.fromRGBO(
                                                    251, 251, 251, 1)),
                                          ),

                                          SizedBox(
                                            height: 20,
                                          ),

                                          Image.asset('assets/ticket_fill_2.png'),
                                          // Image.asset(filler(alltransactions[index].status)),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            '${data?[index]['destination']}',
                                            style: TextStyle(
                                                fontFamily: 'montserrat',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 18,
                                                color: Color.fromRGBO(
                                                    251, 251, 251, 1)),
                                            textAlign: TextAlign.end,
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            '₹ ${(data?[index]['totalPrice'] * 75).toStringAsFixed(0)}',
                                            style: TextStyle(
                                                fontFamily: 'montserrat',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14,
                                                color: Color.fromRGBO(
                                                    251, 251, 251, 1)),
                                            textAlign: TextAlign.end,
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
                );
              } else {
                return const CircularProgressIndicator();
              }
            }));
  }
}

Future<List> get_tickets(String user_id) async {
  http.Response response = await http
      .get(Uri.parse('http://10.0.2.2:3001/booking/${user_id}/getTickets'));
  // print(response.body);
  List passData = json.decode(response.body);
  print(passData);
  return passData;
}
