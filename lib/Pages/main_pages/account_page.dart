import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                fontSize:34,
                fontWeight: FontWeight.bold,
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
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '$email',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 40),
                Card(
                  margin: EdgeInsets.fromLTRB(25, 0, 25,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FlatButton.icon(onPressed: (){}, icon: Icon(Icons.two_k,
                        color: Colors.grey[600],
                        ),
                            label:Text('S',
                            style:TextStyle(
                                color:Colors.white,
                            ),
                  )
                        ),
                        Text(' Edit Info',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                        ),
                        // SizedBox(width: 118+25,),
                        // ElevatedButton(onPressed: (){},
                        //     child: Icon( Icons.arrow_forward_ios_rounded,),
                        // ),
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
                SizedBox(height: 10),
                Card(
                  margin: EdgeInsets.fromLTRB(25, 0, 25,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton.icon(onPressed: (){}, icon: Icon(Icons.ac_unit_outlined,
                        color: Colors.grey[600],
                      ),
                          label:Text('T',
                            style:TextStyle(
                              color:Colors.white,
                            ),
                          ),
                      ),
                      Text('Transaction History',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                      // SizedBox(width: 25-3+25,),
                      // ElevatedButton(onPressed: (){},
                      //   child: Icon(Icons.arrow_forward_ios_rounded,),
                      // ),
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
                SizedBox(height: 10),
                Card(
                  margin: EdgeInsets.fromLTRB(25, 0, 25,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton.icon(onPressed: (){}, icon: Icon(Icons.three_p_sharp,
                        color: Colors.grey[600],
                      ),
                        label:Text('G',
                          style:TextStyle(
                            color:Colors.white,
                          ),
                        ),
                      ),
                      Text('Get Help',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                      // SizedBox(width: 120+25),
                      //
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
                SizedBox(height: 10,),
                Center(
                  child: TextButton(
                    child: Text(
                      'Log Out',
                      style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 16+8,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onPressed: (){},
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Privacy  Policy  ',
                    style: TextStyle(
                    color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Icon(Icons.access_time_filled_rounded,
                    color: Colors.grey[1000],
                    ),
                    Text('  Terms & Conditions',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Text('© Airway 2020',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                  ),
                ),
              ],
            ),
      ),
        ),
    ),
      bottomNavigationBar:BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
              color: Colors.black,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pages,
              color: Colors.black,),
            label: 'Option2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit_rounded,
              color: Colors.black,),
            label: 'Option3',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_rounded,
              color: Colors.black,),
            label: 'User Account',
          ),
        ],
      ),
    );
  }
}
