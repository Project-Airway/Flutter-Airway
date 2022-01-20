import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class onboard_3 extends StatefulWidget {
  const onboard_3({Key? key}) : super(key: key);

  @override
  _onboard_3State createState() => _onboard_3State();
}

class _onboard_3State extends State<onboard_3> {

  Future<http.Response> signUp(String name, String email, String mobile_no, String password) async {
    return http.post(Uri.parse('http://10.0.2.2:3001/users/signup'),
        headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        },
      body: json.encode(<String, String>{
        'name': name,
        'email': email,
        'mobile_no': mobile_no,
        'password': password
      }),
    );

  }



  @override
  Widget build(BuildContext context) {

    final nameCont = TextEditingController();
    final emailCont = TextEditingController();
    final phoneNoCont = TextEditingController();
    final passwordCont = TextEditingController();

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
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // SizedBox(width: 0),
                  Image.asset('assets/logo.png'),
                  // SizedBox(width: 10),

                  ElevatedButton(onPressed: (){
                    Navigator.pushReplacementNamed(context, 'login');
                  },
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(249, 237, 105, 1),
                        side: BorderSide(width:1, color:Colors.black12), //border width and color
                        elevation: 1,
                        shape: RoundedRectangleBorder( //to set border radius to button
                            borderRadius: BorderRadius.circular(10)
                        ),
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10)
                    ),

                    child: Text('Login',
                      style: TextStyle(color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w600,
                      ),

                    ),
                  ),


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
                    height: 550,
                    width: 350,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text('One last step.',
                              style: TextStyle(
                                fontSize: 36,
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,),
                            // SizedBox(height: 10,),
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
                                // _buildNameField(),
                                // _buildEmailField(),
                                // _buildPhone_noField(),
                                SizedBox(height: 0,),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(40.0,10,40,0),
                                child: TextFormField(
                                  controller: nameCont,
                                  decoration: InputDecoration(labelText: 'Name',
                                    border: OutlineInputBorder(),
                                    fillColor: Color.fromRGBO(255, 248, 208, 1),
                                    filled: true,
                                    enabledBorder: InputBorder.none,

                                  ),
                                ),
                              ),


                              Padding(
                                padding: const EdgeInsets.fromLTRB(40.0,10,40,0),
                                child: TextFormField(
                                  controller: emailCont,
                                  decoration: InputDecoration(labelText: 'Email',
                                    border: OutlineInputBorder(),
                                    fillColor: Color.fromRGBO(255, 248, 208, 1),
                                    filled: true,
                                    enabledBorder: InputBorder.none,

                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(40.0,10,40,0),
                                child: TextFormField(
                                  controller: phoneNoCont,
                                  decoration: InputDecoration(labelText: 'Phone no',
                                    border: OutlineInputBorder(),
                                    fillColor: Color.fromRGBO(255, 248, 208, 1),
                                    filled: true,
                                    enabledBorder: InputBorder.none,

                                  ),

                                ),
                              ),

                                Padding(
                                  padding: const EdgeInsets.fromLTRB(40.0,10,40,0),
                                  child: TextFormField(
                                    controller: passwordCont,
                                    decoration: InputDecoration(labelText: 'Password',
                                      border: OutlineInputBorder(),
                                      fillColor: Color.fromRGBO(255, 248, 208, 1),
                                      filled: true,
                                      enabledBorder: InputBorder.none,

                                    ),

                                  ),
                                ),
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

                                  onPressed: () async {

                                    String NameF = nameCont.text;
                                    String emailF = emailCont.text;
                                    String phoneNoF = phoneNoCont.text;
                                    String passwordF = passwordCont.text;

                                    http.Response response = await signUp(NameF, emailF, phoneNoF, passwordF);

                                    Map data = json.decode(response.body);
                                    String currentUser_id = data['_id'];
                                    print(data);

                                    // if(data['message'] != null){
                                    //   print('failure, wrong password');
                                    // }
                                    // else {
                                    //   print('Valid Password');
                                      Navigator.pushReplacementNamed(context, 'bottom_bar', arguments: {
                                        "data" : data
                                      });
                                    // }


                                  },
                                ),



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
