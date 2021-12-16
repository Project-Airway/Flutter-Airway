import 'package:airway_flutter/Pages/Edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';

class NameFieldValidator{
  static String validator(String value){
    if(value == null || value.isEmpty){
      return 'Name is required';
    }
    return '';
  }
}

class EmailFieldValidator{
  static String validator(String value){
    if(value == null || value.isEmpty){
      return 'Email is required';
    }
    return '';
  }
}

class PhoneFieldValidator{
  static String validator(String value){
    if(value == null || value.isEmpty){
      return 'Phone number is required';
    }
    if(value.length<10){
      return 'Invalid Phone number';
    }
    return '';
  }
}

class user_onboard3 extends StatelessWidget {

  String name = '';
  String email = '';
  String phone_no = '';

  final _formKey = GlobalKey<FormState>();


  Widget _buildNameField(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(40.0,20,40,0),
      child: TextFormField(
        decoration: InputDecoration(labelText: 'Name',
          border: OutlineInputBorder(),
          fillColor: Color.fromRGBO(255, 248, 208, 1),
          filled: true,
          enabledBorder: InputBorder.none,

        ),
        validator: (value){
          if(value == null || value.isEmpty){}
          return 'Name is required';
          // EmailFieldValidator.validator;
        },
        onSaved: (value){
          name = value!;
        },
      ),
    );
  }
  Widget _buildEmailField(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(40.0,20,40,0),
      child: TextFormField(
        decoration: InputDecoration(labelText: 'Email',
          border: OutlineInputBorder(),
          fillColor: Color.fromRGBO(255, 248, 208, 1),
          filled: true,
          enabledBorder: InputBorder.none,

        ),
        validator: (value){
          if(value == null || value.isEmpty){}
          return 'Name is required';
          // EmailFieldValidator.validator;
        },
        onSaved: (value){
          email = value!;
        },
      ),
    );
  }
  Widget _buildPhone_noField(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(40.0,20,40,0),
      child: TextFormField(
        decoration: InputDecoration(labelText: 'Phone no',
          border: OutlineInputBorder(),
          fillColor: Color.fromRGBO(255, 248, 208, 1),
          filled: true,
          enabledBorder: InputBorder.none,

        ),
        validator: (value){
          if(value == null || value.isEmpty){}
          return 'Name is required';

        //  PhoneFieldValidator.validator;
        },
        onSaved: (value){
          phone_no = value!;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: new BoxDecoration(
            color: Color.fromRGBO(245, 209, 0, 1),
          ),
          child: Column(
            children: [
              SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 30),
                  Image.asset('assets/logo.png'),
                  SizedBox(width: 10),
                  // ClipRect(
                  //   child: Image.asset('assets/user_img1.png'),
                  // )
                ],
              ),
              SizedBox(height: 1),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/user_block3.png'),
                            fit: BoxFit.fill
                        )
                    ),
                    height: 600,
                    width: 350,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text('One last\nstep.',
                              style: TextStyle(
                                fontSize: 36,
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,),
                            SizedBox(height: 10,),
                            Text('Fill these essential details\nandyou’re good to go',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Form(child: Column(
                              children: [
                                _buildNameField(),
                                _buildEmailField(),
                                _buildPhone_noField(),
                                SizedBox(height: 20,),
                                Text('By clicking the following button you\naccept the terms and conditions',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 20,),
                                RaisedButton(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(95,10,95,10),
                                      child: Text('Lets go',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),
                                    color: Color.fromRGBO(245, 209, 0, 1),

                                    onPressed: (){},
                                )
                              ],
                            ))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )

            ],
          ),

        ),
      ),
    );
  }
}