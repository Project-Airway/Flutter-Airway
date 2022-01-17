import 'package:flutter/material.dart';
import 'package:airway_flutter/components/bottom_navbar.dart';

class main_booking extends StatefulWidget {
  const main_booking({Key? key, required this.data}) : super(key: key);

  final Map data;

  @override
  _main_bookingState createState() => _main_bookingState();
}

class _main_bookingState extends State<main_booking> {
  @override
  Widget build(BuildContext context) {
    print(widget.data);

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
                Text('Hey Adi,\nWhere to next ?',style: TextStyle(
                  fontSize: 36,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w700,
                  color: Colors.white
                ),),

                SizedBox(height: 20,),

                booking_form(),


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
  booking_form({Key? key}) : super(key: key);

  @override
  State<booking_form> createState() => _booking_formState();
}

class _booking_formState extends State<booking_form> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {



    final sourceEditingController = TextEditingController();
    final destEditingController = TextEditingController();
    DateTime selectedDate = DateTime.now();

    _selectDate(BuildContext context) async {
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


          Center(
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'results');
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
