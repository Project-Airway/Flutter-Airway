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

    Color col(String points){
      int x=int.parse(points);
      return (x>=0)?(Color.fromRGBO(266, 226, 226, 1)):Color.fromRGBO(182, 62, 123, 1);
    }
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: previous.length,
        itemBuilder: (context,index) {
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
                          child: Text(previous[index].points,
                          style: TextStyle(
                            color:col(previous[index].points) ,
                          ),),
                        ),
                        elevation: 8,
                        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5.0),),
                        color: Color.fromRGBO(56, 56, 56, 1)

                      ),
                      Text('Trip to ${previous[index].location}',
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
      ),
    );
  }
}
