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
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bg-common-main.png'),
                  fit:BoxFit.fill,

                ),
              ),
              padding:EdgeInsets.symmetric(horizontal: 15.0,vertical:0.0),
              child: SingleChildScrollView(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                  Image(image: AssetImage('assets/logo2.png')),
              SizedBox(height: 20.0),
                        Center(
                          child: Text('Cancelling?',
                style: TextStyle(
                  fontSize: 40.0,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w900,
                  color:Colors.white,
                  letterSpacing: 2.0,
                ),
                textAlign: TextAlign.center,
              ),
                        ),
              SizedBox(height: 40,),
              Container(
                      margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                  color: Colors.black54,
                  child: Column(
                        children: [
                          Text("Can you tell us why?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "poppins",
                      color: Colors.white,
                      fontSize: 20,
                     ),
                    ),
                          CheckboxListTile(
                            title: Text("Change of Plans",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'poppins',
                            ),),
                            value: checkedValue1,
                            onChanged: (newValue) {
                              setState(() {
                                checkedValue1 = newValue;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                          ),
                          CheckboxListTile(
                            title: Text("Booked by Mistake",
                            style: TextStyle(
                              fontFamily: 'poppins',
                              color: Colors.white,
                            ),),
                            value: checkedValue2,
                            onChanged: (newValue) {
                              setState(() {
                                checkedValue2 = newValue;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                          ),
                          CheckboxListTile(
                            title: Text("Other Reasons",
                            style: TextStyle(
                              fontFamily: 'poppins',
                              color: Colors.white,
                            ),),
                            value: checkedValue3,
                            onChanged: (newValue) {
                              setState(() {
                                checkedValue3 = newValue;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                          ),
                          Card(
                            margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                            elevation: 20,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextField(
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
                            ),
                          ),
                            ], //<Widget>[]
                          ),

              ) ,
                        SizedBox(height: 50,),
                        Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(onPressed: (){
                      Navigator.pop(context);
                    },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.pinkAccent ,width: 4)
                      ),

                      color: Colors.pink,

                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Text('Submit', style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Color.fromRGBO(221, 195, 102, 1),
                        ),),
                      ),
                    ),
                    RaisedButton(onPressed: (){
                      Navigator.pop(context);
                    },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.pinkAccent,width: 4)
                      ),

                      color:Colors.pink,

                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Text('Back', style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Color.fromRGBO(221, 195, 102, 1),
                        ),),
                      ),
                    ),
                    ],
                  ),
              ],
            ),
        ),
      ),
          ),
      // bottomNavigationBar: bottom_bar(),
    );
  }
}
