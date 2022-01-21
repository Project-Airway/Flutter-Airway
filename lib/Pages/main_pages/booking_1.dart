import 'package:flutter/material.dart';
import 'package:airway_flutter/components/bottom_navbar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class main_booking extends StatefulWidget {
  const main_booking({Key? key, required this.data}) : super(key: key);

  final Map data;

  @override
  _main_bookingState createState() => _main_bookingState();
}

int _class = 0;
int _flag = 0;
String Sclass = 'EC';

class _main_bookingState extends State<main_booking> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromRGBO(33, 33, 33, 1),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg-common-main.png'),
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
                Image.asset('assets/logo2.png'),
                SizedBox(height: 10,),
                Text('Hey\nWhere to next ?',style: TextStyle(
                  fontSize: 36,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w700,
                  color: Colors.white
                ),),

                SizedBox(height: 20,),

                Expanded(
                  child: SizedBox(
                    height: 420,
                    child: SingleChildScrollView(
                      child: booking_form(data: widget.data),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: bottom_bar(),
    );
  }
}

class booking_form extends StatefulWidget {
  booking_form({Key? key, required this.data}) : super(key: key);
  final Map data;
  @override
  State<booking_form> createState() => _booking_formState();
}

Future<http.Response> get_tickets(String source, String dest, String seats, String date, String __class, String user_id) async {
  return http.post(Uri.parse('http://10.0.2.2:3001/flights/${user_id}/fetchFlights'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: json.encode(<String, String>{
      'dest': dest,
      'src': source,
      'date1': date,
      'adults': seats,
      'cabin' : __class,
      'infants': '0',
      'children': '0'
    }),
  );
}

class _booking_formState extends State<booking_form> {
  final _formKey = GlobalKey<FormState>();
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {

    print(widget.data['data']['userId']);

    final sourceEditingController = TextEditingController();
    final destEditingController = TextEditingController();
    final countEditingController = TextEditingController();



    Future<void> _selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate, // Refer step 1
        firstDate: DateTime(2000),
        lastDate: DateTime(2025),
      );
      if (picked != null && picked != selectedDate)
        setState(() {
          selectedDate = picked;
        });
    }

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

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

          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      _class = 3;
                      setState(() {
                        Sclass = 'BC';
                      });
                    },
                    child: Card(

                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('BC',style: TextStyle(color: Colors.white),),

                      ),
                      color: Color.fromRGBO(34, 2, 106, 1),
                    ),
                  ),
                  Text('Business\nClass',style: TextStyle(
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
                      _class = 2;
                      setState(() {
                        Sclass = 'FC';
                      });
                    },
                    child: Card(

                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('FC',style: TextStyle(color: Colors.white)),

                      ),
                      color: Color.fromRGBO(49, 0, 157, 1),
                    ),
                  ),
                  Text('First\nClass',style: TextStyle(
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
                      _class = 1;
                      setState(() {
                        Sclass = 'PE';
                      });
                    },
                    child: Card(

                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('PE',style: TextStyle(color: Colors.white)),

                      ),
                      color: Color.fromRGBO(82, 1, 232, 1),
                    ),
                  ),
                  Text('Premium Eco\nClass',style: TextStyle(
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
                      _class = 0;
                      setState(() {
                        Sclass = 'EC';
                      });
                    },
                    child: Card(

                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('EC',style: TextStyle(color: Colors.white)),

                      ),
                      color: Color.fromRGBO(127, 56, 250, 1),
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

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${Sclass}',style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w700,
                  color: Colors.amber
              ),),],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Selected class',style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w500,
                  color: Colors.white
              ),),],
          ),
          SizedBox(height: 20,),
          Text('Enter your source',style: TextStyle(
            fontFamily: 'poppins',
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontSize: 18,),),

          Container(
            padding:EdgeInsets.only(top:10,right:0,left:0),
            child:Card(
              shape:RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(20),
              ),
              color:Color.fromRGBO(33, 33, 33, 1),
              child: Container(
                padding:EdgeInsets.only(left:20),
                child: TextFormField(
                  controller: sourceEditingController,
                  decoration:InputDecoration(
                    label: Text('eg. Bangalore',style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color.fromRGBO(198, 198, 198, 1)
                    ),),
                    border:InputBorder.none,
                    fillColor:Colors.white,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 10,),

          Text('Enter your destination',style: TextStyle(
            fontFamily: 'poppins',
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontSize: 18,),),

          Container(
            padding:EdgeInsets.only(top:10,right:0,left:0),
            child:Card(
              shape:RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(20),
              ),
              color:Color.fromRGBO(33, 33, 33, 1),
              child: Container(
                padding:EdgeInsets.only(left:20),
                child: TextFormField(
                  controller: destEditingController,
                  decoration:InputDecoration(
                    label: Text('eg. Pune',style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(198, 198, 198, 1),
                      fontSize: 18,),),
                    border:InputBorder.none,
                    fillColor:Colors.white,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 10,),

          Text('Enter the number of passengers',style: TextStyle(
            fontFamily: 'poppins',
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontSize: 18,),),

          Container(
            padding:EdgeInsets.only(top:10,right:0,left:0),
            child:Card(
              shape:RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(20),
              ),
              color:Color.fromRGBO(33, 33, 33, 1),
              child: Container(
                padding:EdgeInsets.only(left:20),
                child: TextFormField(
                  controller: countEditingController,
                  decoration:InputDecoration(
                    label: Text('eg. 3',style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(198, 198, 198, 1),
                      fontSize: 18,),),
                    border:InputBorder.none,
                    fillColor:Colors.white,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 10,),

          Text('Enter date',style: TextStyle(
            fontFamily: 'poppins',
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontSize: 18,),),

          Container(
            padding:EdgeInsets.only(top:10,right:0,left:0),
            child:Card(

              shape:RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(20),
              ),
              color:Color.fromRGBO(33, 33, 33, 1),
              child: Container(
                padding:EdgeInsets.only(left:20, right: 20, top: 5, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${selectedDate.toLocal()}".split(' ')[0],style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(198, 198, 198, 1),
                      fontSize: 18,),),

                    RaisedButton(
                      onPressed: () => _selectDate(context), // Refer step 3
                      child: Text(
                        'Select date',
                        style:
                        TextStyle(color: Color.fromRGBO(198, 198, 198, 1), fontWeight: FontWeight.bold),
                      ),
                      color:Color.fromRGBO(33, 33, 33, 1),
                      elevation: 0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),

          SizedBox(height: 20,),
          Center(
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  onPressed: () async{
                    String src = sourceEditingController.text;
                    String dest = destEditingController.text;
                    String seats = countEditingController.text;
                    String date = selectedDate.toString();
                    String Bclass = '';

                    if(_class == 3){
                      Bclass = 'Business';
                    }
                    else if (_class == 2){
                      Bclass = 'First';
                    }
                    else if (_class == 1){
                      Bclass = 'Premium_Economy';
                    }
                    else if (_class == 0){
                      Bclass = 'Economy';
                    }

                    print(src);
                    print(dest);
                    print(seats);
                    print(date.substring(0,10));
                    print(Bclass);
                    print(widget.data['data']['userId']);

                    http.Response response = await get_tickets(src, dest, seats, date.substring(0,10), Bclass, widget.data['data']['userId']);
                    List ticket_data = json.decode(response.body);

                    Navigator.pushNamed(context, 'results', arguments: {
                      'data': ticket_data,
                      'date': date,
                      'seats': seats,
                      'user_id':widget.data['data']['userId']
                    });
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Color.fromRGBO(249, 237, 105, 1), Color.fromRGBO(183, 142, 96, 1)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 320.0, minHeight: 50.0),
                      alignment: Alignment.center,
                      child: Text(
                        "Find tickets",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(33, 33, 33, 1),
                          fontSize: 18,)
                      ),
                    ),
                  ),
                ),
              ),
          ),

        ],
      ),
    );
  }
}

