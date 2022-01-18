import 'package:airway_flutter/Pages/User_onboard3.dart';
import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';

class user_onboard2 extends StatelessWidget {
  const user_onboard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/onboard_2bg.png'),
                fit: BoxFit.fill
            ),


          ),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 30),
                  Image.asset('assets/logo.png'),
                  // ClipRect(
                  //   child: Image.asset('assets/user_img1.png'),
                  // )
                ],
              ),
              SizedBox(height: 150),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/user_block2.png'),
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
                            color: Colors.grey[900],
                            height: 1.2,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10,),
                        Text('Lets make travel tension\na thing of the past',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[800],

                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  )
                ],
              ),



              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, 'onboard3');
              },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(245, 209, 0, 1),
                    side: BorderSide(width:1, color:Colors.black12), //border width and color
                    elevation: 5,
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(10)
                    ),
                    padding: EdgeInsets.fromLTRB(80, 15, 80, 15)
                ),

                child: Text('Sign up',
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
                Navigator.pushNamed(context, 'login');
              },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(245, 209, 0, 1),
                      side: BorderSide(width:1, color:Colors.black12), //border width and color
                      elevation: 5,
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(10)
                      ),
                    padding: EdgeInsets.fromLTRB(80, 15, 80, 15)
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

        ),
      ),
    );
  }
}
