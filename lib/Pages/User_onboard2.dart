import 'package:airway_flutter/Pages/User_onboard3.dart';
import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';

class user_onboard2 extends StatelessWidget {
  const user_onboard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              SizedBox(height: 70),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/user_block1.png'),
                            fit: BoxFit.fill
                        )
                    ),
                    height: 300,
                    width: 350,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Hassle Free\nTravel',
                          style: TextStyle(
                            fontSize: 36,
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10,),
                        Text('Lets make travel tension\na thing of the past',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  )
                ],
              ),



              // TextButton.icon(onPressed: (){},
              //     style: TextButton.styleFrom(
              //       padding: const EdgeInsets.fromLTRB(75, 15, 75, 15),
              //       backgroundColor: Color.fromRGBO(249, 237, 105, 1),
              //       primary: Colors.black
              //     ),
              //     icon: Image(image: AssetImage('assets/Vector.png')),
              //     label: Text('Sign in with Google'),
              //
              // )

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(249, 237, 105, 1), //background color of button
                      side: BorderSide(width:1, color:Colors.black12), //border width and color
                      elevation: 1, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.fromLTRB(75, 15, 75, 15) //content padding inside button
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => user_onboard3()),
                    );
                  },
                 child: Text('Login with Google',
                    style: TextStyle(color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w600,
                 ),

                ),
              ),
              SizedBox(height: 10),
              Text('Or'),

              SizedBox(height: 10),
              ElevatedButton(onPressed: (){

              },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(249, 237, 105, 1),
                      side: BorderSide(width:1, color:Colors.black12), //border width and color
                      elevation: 1,
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(10)
                      ),
                    padding: EdgeInsets.fromLTRB(80, 15, 80, 15)
                  ),

                  child: Text('Sign in as guest',
                    style: TextStyle(color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w600,
                    ),

                  ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
