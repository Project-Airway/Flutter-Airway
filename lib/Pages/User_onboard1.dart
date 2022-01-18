import 'package:airway_flutter/Pages/User_onboard2.dart';
import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';

class user_onboard1 extends StatelessWidget {
  const user_onboard1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/onboard_bg1.png'),
                  fit: BoxFit.fill
              ),


            ),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 30),
                    Image.asset('assets/logo.png'),

                  ],
                ),
                SizedBox(height: 150),

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
                      height: 350,
                      width: 350,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Faster &\nBetter',
                            style: TextStyle(
                              fontSize: 36,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              height: 1.2,
                            ),
                              textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10,),
                          Text('Book flights to your \ndream travel destination\nat the comfort of your\nhome',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w500,
                                color: Colors.white
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ],

                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Color.fromRGBO(240, 205, 133, 1)
                  ),
                  child: Container(
                    width: 100,
                    height: 70,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Image(
                      image: AssetImage('assets/Btn.png'),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const user_onboard2()),
                    );
                  },
                ),


              ],
            ),

          ),
        ),
    );
  }
}
