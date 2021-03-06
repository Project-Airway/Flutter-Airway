import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:airway_flutter/components/bottom_navbar.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  String name='John Doe';
  String email='JohnDoe@ypp.com';
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: SafeArea(
          child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage('assets/bg-common-main3.png'),
    fit: BoxFit.fitWidth,
               ),
                ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget> [
                SizedBox(height: 15),
                Text('Hello!',
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w600,
                  fontSize:34,
                  color:Colors.white,
                ),
                ),
                // SizedBox(height: 10,),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/download.png'),
                  radius: 70,
                ),
                SizedBox(height:5,),
                Text(
                  '$name',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    color:Colors.white
                  ),
                ),
                Text(
                  '$email',
                  style: TextStyle(
                    fontSize: 20,fontFamily: 'poppins',
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 20),
                Card(
                  shadowColor:Colors.white,
                  elevation:8,
                  color:Colors.black,
                  shape:RoundedRectangleBorder( borderRadius: BorderRadius.circular(15.0),),
                  margin: EdgeInsets.fromLTRB(25, 0, 25,0),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15,10,20,10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          TextButton.icon(onPressed: () {
                            Navigator.pushNamed(context, 'edit_account');
                          }, icon: Icon(Icons.edit,color: Colors.white,
                              size: 25.0,), label: Text('\t\t\t\t\t''Edit Info',
                              style: TextStyle(
                              fontSize: 20,fontFamily: 'poppins',
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),),
                          Card(
                            color: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Icon(Icons.arrow_forward_ios_rounded,
                                color: Colors.white),
                            ),
                            elevation: 2,
                            shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5.0),),


                          ),
                        ],
                      ),
                    ),
                    ),
                SizedBox(height: 10),
                Card(
                  color:Colors.black,
                  shadowColor:Colors.white,
                  elevation:8,
                  shape:RoundedRectangleBorder( borderRadius: BorderRadius.circular(15.0)),
                  margin: EdgeInsets.fromLTRB(25, 0, 25,0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15,10,20,10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        TextButton.icon(onPressed: () {}, icon: Icon(Icons.ac_unit_outlined,color: Colors.white,
                          size: 25.0,), label: Text('\t\t\t\t\t''Travel History ',
                          style: TextStyle(
                            fontSize: 20,fontFamily: 'poppins',
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),),

                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Icon(Icons.arrow_forward_ios_rounded,
                                color:Colors.white),
                          ),
                          elevation: 2,
                          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5.0),),
                          color: Colors.black,

                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  color:Colors.black,
                  shadowColor:Colors.white,
                  elevation:8,
                  shape:RoundedRectangleBorder( borderRadius: BorderRadius.circular(15.0)),
                  margin: EdgeInsets.fromLTRB(25, 0, 25,0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15,10,20,10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        TextButton.icon(onPressed: () {}, icon: Icon(Icons.three_p_sharp,color: Colors.white,
                          size: 25.0,), label: Text('\t\t\t\t\t''Get Help ',
                          style: TextStyle(
                            fontSize: 20,fontFamily: 'poppins',
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Icon(Icons.arrow_forward_ios_rounded,
                            color:Colors.white),
                          ),
                          elevation: 2,
                          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5.0),),
                          color: Colors.black,

                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Center(
                  child: TextButton(
                    child: Text(
                      'Log Out',
                      style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 16+8,fontFamily: 'poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: (){},
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(60,0,20,0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('Privacy  Policy  ',
                      style: TextStyle(
                      color: Colors.white,
                        fontSize: 13,fontFamily: 'poppins',
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                      Icon(Icons.info_outline,
                      color: Colors.white,
                      ),
                      Text('  Terms & Conditions',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,fontFamily: 'poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),

                Center(
                  child: Text('?? Airway 2020',
                  style: TextStyle(
                    fontSize: 14,fontFamily: 'poppins',
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  ),
                ),

              ],
            ),
      ),
        ),
     ),
      // bottomNavigationBar:bottom_bar()
    );
  }
}
