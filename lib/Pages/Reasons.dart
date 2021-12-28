import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:airway_flutter/components/bottom_navbar.dart';

class Reasons extends StatefulWidget {
  const Reasons({Key? key}) : super(key: key);

  @override
  _ReasonsState createState() => _ReasonsState();
}

class _ReasonsState extends State<Reasons> {
  @override
  bool?  checkedValue1=false;
  bool?  checkedValue2=false;
  bool?  checkedValue3=false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/6.jpeg'),
                  fit:BoxFit.fitHeight,
                ),
              ),
              padding:EdgeInsets.symmetric(horizontal: 15.0,vertical:0.0),
              child: SingleChildScrollView(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                  Image(image: AssetImage('assets/Btn.png')),
              SizedBox(height: 20.0),
                        Text('Transaction\nHistory',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w900,
                  color:Colors.black,
                  letterSpacing: 2.0,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40,),
              Card(
                  elevation: 10,
                  child: Column(
                        children: [
                          Text("Can you tell us why?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "poppins",
                      fontSize: 20,
                     ),
                    ),
                          CheckboxListTile(
                            title: Text("Change of Plans"),
                            value: checkedValue1,
                            onChanged: (newValue) {
                              setState(() {
                                checkedValue1 = newValue;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                          ),
                          CheckboxListTile(
                            title: Text("Booked by Mistake"),
                            value: checkedValue2,
                            onChanged: (newValue) {
                              setState(() {
                                checkedValue2 = newValue;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                          ),
                          CheckboxListTile(
                            title: Text("Other Reasons"),
                            value: checkedValue3,
                            onChanged: (newValue) {
                              setState(() {
                                checkedValue3 = newValue;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                          ),
                          TextField(
                            decoration: InputDecoration(
                              // labelText: "Other Reasons",
                              hintText: "Let us know why",
                              // labelStyle: TextStyle(
                              //   color: Colors.black54,
                              //   fontSize: 16,
                              //   fontWeight: FontWeight.bold,
                              // ),
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                            ], //<Widget>[]
                          ),

              ) ,
                        SizedBox(height: 50,),
                        Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: (){}, child: Text("Submit",
                    style: TextStyle(
                    color: Colors.redAccent,
                      fontSize: 20,
                    ),),),
                  ElevatedButton(onPressed: (){}, child: Text("Cancel",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    ),
                    ),
                    ],
                  ),
              ],
            ),
        ),
      ),
          ),
    ),

      bottomNavigationBar: bottom_bar(),
    );
  }
}
