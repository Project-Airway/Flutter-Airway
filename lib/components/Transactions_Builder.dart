import 'package:flutter/material.dart';
import 'package:airway_flutter/Pages/main_pages/TransInfo.dart';


class TransBuilder extends StatefulWidget {
  const TransBuilder({Key? key}) : super(key: key);

  @override
  _TransBuilderState createState() => _TransBuilderState();
}

class _TransBuilderState extends State<TransBuilder> {
  List<TransInfo> alltransactions=[
    TransInfo(source:'Bengaluru',destination: 'Mumbai',time: '7:30 AM', date: '20-01-2021', cost: '6500',flightid:'1DC34A',status: 'Upcoming',coach: 'First CLass',name: 'Aditya K'),
    TransInfo(source:'Mumbai',destination: 'Bengaluru',time: '9:00 PM', date: '22-01-2022', cost: '5600',flightid:'1CO45B',status: 'Upcoming',coach: 'Business CLass',name: 'Aditya K'),
    TransInfo(source:'Bengaluru',destination: 'Delhi',time: '10:45 AM', date: '11-02-2022', cost: '6500',flightid:'1LD56C',status: 'Upcoming',coach: 'First CLass',name: 'Aditya K'),
    TransInfo(source:'Bengaluru',destination: 'Mumbai',time: '7:30 AM', date: '10-01-2022', cost: '3000',flightid:'1DA32D',status: 'Completed',coach: 'Economy CLass',name: 'Aditya K'),
    TransInfo(source:'Bengaluru',destination: 'Mumbai',time: '7:30 AM', date: '22-12-2021', cost: '5600',flightid:'1DC32A',status: 'Completed',coach: 'Business CLass',name: 'Aditya K'),
    TransInfo(source:'Bengaluru',destination: 'Mumbai',time: '7:30 AM', date: '25-12-2021', cost: '6500',flightid:'1LD21E',status: 'Cancelled',coach: 'First CLass',name: 'Aditya K'),
  ];
  String filler(String status){
    if(status=='Upcoming')
      return 'assets/ticket_fill_green.png';
    if(status=='Completed')
      return 'assets/ticket_fill_yellow.png';
    return 'assets/ticket_fill_red.png';
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: alltransactions.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.fromLTRB(0,10,10,10),
            child: GestureDetector(
              onTap: (){
                String source=alltransactions[index].source;
                String destination=alltransactions[index].destination;
                String date=alltransactions[index].date;
                String time=alltransactions[index].time;
                String name=alltransactions[index].name;
                String flightid=alltransactions[index].flightid;
                String coach=alltransactions[index].coach;
                String cost=alltransactions[index].cost;
                String status=alltransactions[index].status;
                Navigator.pushNamed(context, 'transact_card',arguments:
                {
                  'source': source,
                  'destination':destination,
                  'date':date,
                  'time':time,
                  'name':name,
                  'flightid':flightid,
                  'cost':cost,
                  'coach':coach,
                  'status':status
                }
                );
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
                                Text('${alltransactions[index].source}',
                                  style: TextStyle(
                                      fontFamily: 'montserrat',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Color.fromRGBO(251, 251, 251, 1)
                                  ),),

                                SizedBox(height: 20,),

                                Text('${alltransactions[index].date}',
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
                                Text('${alltransactions[index].time}',
                                  style: TextStyle(
                                      fontFamily: 'montserrat',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Color.fromRGBO(251, 251, 251, 1)
                                  ),),

                                SizedBox(height: 20,),

                                // Image.asset('assets/ticket_fill_2.png'),
                                Image.asset(filler(alltransactions[index].status)),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('${alltransactions[index].destination}',
                                  style: TextStyle(
                                      fontFamily: 'montserrat',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Color.fromRGBO(251, 251, 251, 1)
                                  ), textAlign: TextAlign.end,),

                                SizedBox(height: 20,),

                                Text('${alltransactions[index].cost}',
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
    );
  }
}
