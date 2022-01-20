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
      body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bg-common-main.png'),
                  fit:BoxFit.fill,

                ),
              ),
              padding:EdgeInsets.symmetric(horizontal: 15.0,vertical:0.0),
              child: SingleChildScrollView(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30,),
                  Image(image: AssetImage('assets/logo2.png'),),
              SizedBox(height: 40.0),
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
              SizedBox(height: 100,),
              Container(
                      margin: EdgeInsets.fromLTRB(25, 20, 25, 20),
                  color: Color.fromRGBO(20, 20, 20, 1),
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
                                fontFamily: 'poppins',
                                color: Colors.white,
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
                            color: Color.fromRGBO(13, 13, 13, 1),
                            margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                            elevation: 20,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextField(
                                style: TextStyle(color:Color.fromRGBO(208, 208, 208, 1) ),
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
                        SizedBox(height: 20,),
                        Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(onPressed: (){
                      Navigator.pop(context);
                    },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color:Color.fromRGBO(174, 32, 62, 1),width: 4)
                      ),

                      color: Color.fromRGBO(174, 32, 62, 1),

                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Text('Submit', style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Color.fromRGBO(255, 255, 225, 1),
                        ),),
                      ),
                    ),
                    RaisedButton(onPressed: (){
                      Navigator.pop(context);
                    },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Color.fromRGBO(174, 32, 62, 1),width: 4)
                      ),

                      color: Color.fromRGBO(174, 32, 62, 1),

                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Text('Back', style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Color.fromRGBO(255, 255, 225, 1),
                        ),),
                      ),
                    ),
                    ],
                  ),
                        SizedBox(height: 30,)
              ],
            ),
        ),
      ),
      // bottomNavigationBar: bottom_bar(),
    );
  }
}
