import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:airway_flutter/pages/main_pages/info.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class points_history extends StatefulWidget {
  const points_history({Key? key, required this.data}) : super(key: key);
  final Map data;

  @override
  _points_historyState createState() => _points_historyState();
}

class _points_historyState extends State<points_history> {

  Future<List<dynamic>>? tickets;

  @override
  void initState() {
    print(widget.data['data']['userId']);
    super.initState();
    // String temp = widget.data['data'];
    // print(temp);
    tickets = get_tickets(widget.data['data']['userId']);
    print(tickets);
  }
  num total=0;
  @override

  Widget build(BuildContext context) {

    Color col(bool status){
      return (!status)?(Color.fromRGBO(266, 226, 226, 1)):Color.fromRGBO(182, 62, 123, 1);
    }
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
                    total+=data?[index]['rewardPointsAdded'];
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(30,0,30,20),
                      child: Card(
                        child: ListTile(
                          onTap: () {},
                          title: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('${data?[index]['rewardPointsAdded']}',
                                        style: TextStyle(
                                          color:col(data?[index]['cancelled']) ,
                                        ),),
                                    ),
                                    elevation: 8,
                                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5.0),),
                                    color: Color.fromRGBO(56, 56, 56, 1)

                                ),
                                Text('Trip to ${data?[index]['destination']}',
                                    style:TextStyle(
                                        color: Colors.white,
                                        fontFamily: "poppins"
                                    ))
                                ,
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Icon(Icons.arrow_forward_ios_rounded,
                                      color: Color.fromRGBO(224, 224, 224, 1),),
                                  ),
                                  elevation: 2,
                                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5.0),),
                                  color: Color.fromRGBO(1, 1, 1, 1),

                                ),
                              ],
                            ),
                          ),
                        ),
                        elevation: 8,
                        color: Color.fromRGBO(30, 30, 30, 1),
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

