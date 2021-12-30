import 'package:flutter/material.dart';

class onboard_3 extends StatefulWidget {
  const onboard_3({Key? key}) : super(key: key);

  @override
  _onboard_3State createState() => _onboard_3State();
}

class _onboard_3State extends State<onboard_3> {
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
                                // _buildNameField(),
                                // _buildEmailField(),
                                // _buildPhone_noField(),
                                SizedBox(height: 0,),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(40.0,20,40,0),
                                child: TextFormField(
                                  decoration: InputDecoration(labelText: 'Name',
                                    border: OutlineInputBorder(),
                                    fillColor: Color.fromRGBO(255, 248, 208, 1),
                                    filled: true,
                                    enabledBorder: InputBorder.none,

                                  ),
                                ),
                              ),


                              Padding(
                                padding: const EdgeInsets.fromLTRB(40.0,20,40,0),
                                child: TextFormField(
                                  decoration: InputDecoration(labelText: 'Email',
                                    border: OutlineInputBorder(),
                                    fillColor: Color.fromRGBO(255, 248, 208, 1),
                                    filled: true,
                                    enabledBorder: InputBorder.none,

                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(40.0,20,40,0),
                                child: TextFormField(
                                  decoration: InputDecoration(labelText: 'Phone no',
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
