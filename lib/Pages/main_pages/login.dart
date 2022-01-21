import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);


  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  int _flag =0;

  Future<http.Response> login(String email, String password) async {
    return http.post(Uri.parse('http://10.0.2.2:3001/users/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(<String, String>{
        'email': email,
        'password': password
      }),
    );
  }



  @override
  Widget build(BuildContext context) {

    final emailCont = TextEditingController();
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
                    Navigator.pushReplacementNamed(context, 'onboard3');
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

                    child: Text('Sign up',
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
                    height: 500,
                    width: 350,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text('Login',
                              style: TextStyle(
                                fontSize: 36,
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,),
                            SizedBox(height: 10,),
                            Text('Fill these essential details\nto login to your account',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),

                            SizedBox(height: 10,),

                            if (_flag == 1) ...[
                              Container(
                                child: Text('Wrong email or password',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.redAccent
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],

                            Form(child: Column(
                              children: [
                                // _buildNameField(),
                                // _buildEmailField(),
                                // _buildPhone_noField(),
                                SizedBox(height: 20,),


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
                                    obscureText: true,
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

                                SizedBox(height: 20,),
                                RaisedButton(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(95,10,95,10),
                                    child: Text('Login',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.center,),
                                  ),
                                  color: Color.fromRGBO(245, 209, 0, 1),

                                  onPressed: () async {

                                    String emailF = emailCont.text;
                                    String passwordF = passwordCont.text;

                                    http.Response response = await login(emailF, passwordF);

                                    Map data = json.decode(response.body);
                                    print(data);

                                    if(data.containsKey('message')){
                                      print('failure, wrong password');

                                      setState(() {
                                        _flag = 1;
                                      });

                                    }
                                    else {
                                      print('Valid Password');
                                      Navigator.pushReplacementNamed(context, 'bottom_bar', arguments: {
                                        "data" : data
                                      });
                                    }

                                  },
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
