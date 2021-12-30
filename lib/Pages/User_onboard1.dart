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
            decoration: new BoxDecoration(
              color: Color.fromRGBO(245, 209, 0, 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 30),
                    Image.asset('assets/logo.png'),
                    //SizedBox(width: 10),
                    Image.asset('assets/user_img1.png',cacheHeight: 300,cacheWidth: 250,),
                    // ClipRect(
                    //   child: Image.asset('assets/user_img1.png'),
                    // )
                  ],
                ),
                //SizedBox(height: 70),

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
                      height: 250,
                      width: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Faster & Better',
                            style: TextStyle(
                              fontSize: 36,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w600,
                            ),
                              textAlign: TextAlign.center,
                          ),
                          // SizedBox(height: 10,),
                          Text('Book flights to your \nDream travel destination\nfrom the comfort of your\nHome',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w500,
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
                      primary: Color.fromRGBO(249, 237, 105, 1)
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
