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
  MaterialColor color(String status){
    if(status=='Upcoming')
      return Colors.green;
    if(status=='Completed')
      return Colors.amber;
    return Colors.red;
  }
  @override
  Widget build(BuildContext context) {

    return  Container(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: alltransactions.length,
          itemBuilder: (context,index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(20,10,20,0),
              child: Card(
                child: ListTile(
                  onTap: () {
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
                  title: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${alltransactions[index].date}'),
                        Text('${alltransactions[index].source} to ${alltransactions[index].destination}',
                        style: TextStyle(
                          color:color(alltransactions[index].status) ,
                        ),),
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
