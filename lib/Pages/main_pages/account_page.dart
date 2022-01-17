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
          image: AssetImage('assets/Account_1.png'),
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
                ),
                ),
                SizedBox(height: 20,),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/download.png'),
                  radius: 70,
                ),
                Text(
                  '$name',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
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
                SizedBox(height: 40),
                Card(
                  margin: EdgeInsets.fromLTRB(25, 0, 25,0),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15,0,20,0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          TextButton.icon(onPressed: () {
                            Navigator.pushNamed(context, 'edit_account');
                          }, icon: Icon(Icons.edit,color: Colors.grey[600],
                              size: 25.0,), label: Text('\t\t\t\t\t''Edit Info',
                              style: TextStyle(
                              fontSize: 20,fontFamily: 'poppins',
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[800],
                            ),
                          ),),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Icon(Icons.arrow_forward_ios_rounded),
                            ),
                            elevation: 2,
                            shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5.0),),
                            color: Color.fromRGBO(255, 255, 255, 0.9),

                          ),
                        ],
                      ),
                    ),
                    ),
                SizedBox(height: 10),
                Card(
                  margin: EdgeInsets.fromLTRB(25, 0, 25,0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15,0,20,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        TextButton.icon(onPressed: () {}, icon: Icon(Icons.ac_unit_outlined,color: Colors.grey[600],
                          size: 25.0,), label: Text('\t\t\t\t\t''Travel History ',
                          style: TextStyle(
                            fontSize: 20,fontFamily: 'poppins',
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[800],
                          ),
                        ),),

                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Icon(Icons.arrow_forward_ios_rounded),
                          ),
                          elevation: 2,
                          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5.0),),
                          color: Color.fromRGBO(255, 255, 255, 0.9),

                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  margin: EdgeInsets.fromLTRB(25, 0, 25,0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15,0,20,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        TextButton.icon(onPressed: () {}, icon: Icon(Icons.three_p_sharp,color: Colors.grey[600],
                          size: 25.0,), label: Text('\t\t\t\t\t''Get Help ',
                          style: TextStyle(
                            fontSize: 20,fontFamily: 'poppins',
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[800],
                          ),
                        ),),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Icon(Icons.arrow_forward_ios_rounded),
                          ),
                          elevation: 2,
                          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5.0),),
                          color: Color.fromRGBO(255, 255, 255, 0.9),

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
                      color: Colors.black,
                        fontSize: 13,fontFamily: 'poppins',
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                      Icon(Icons.info_outline,
                      color: Colors.grey[1000],
                      ),
                      Text('  Terms & Conditions',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,fontFamily: 'poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),

                Center(
                  child: Text('© Airway 2020',
                  style: TextStyle(
                    fontSize: 14,fontFamily: 'poppins',
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600],
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
