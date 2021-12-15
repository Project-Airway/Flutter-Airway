import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:airway_flutter/pages/main_pages/info.dart';



class points_history extends StatefulWidget {
  const points_history({Key? key}) : super(key: key);

  @override
  _points_historyState createState() => _points_historyState();
}

class _points_historyState extends State<points_history> {

  List<Info> previous=[
    Info(points: '70', location: 'Hyderabad'),
    Info(points: '80', location: 'Chennai'),
    Info(points: '-20', location: 'Delhi'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: previous.length,
          itemBuilder: (context,index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(30,10,30,0),
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
                                child: Text(previous[index].points),
                              ),
                            elevation: 2,
                            shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5.0),),
                            color: Color.fromRGBO(255, 255, 255, 0.9),

                          ),
                          Text('Trip to ${previous[index].location}')
                          ,
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Icon(Icons.arrow_forward_ios_rounded),
                            ),
                            elevation: 2,
                            shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5.0),),
                            color: Color.fromRGBO(255, 255, 255, 0.9),

                          ),

                        ],
                      ),
                    ),
                  ),
                elevation: 8,
              ),
            );
          },
        ),
    );
  }
}
