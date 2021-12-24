import 'package:flutter/material.dart';
import 'package:airway_flutter/pages/faq/bottom.dart';
import 'package:expansion_card/expansion_card.dart';
void main()=>runApp(MaterialApp(
    home:FAQ()
));
class FAQ extends StatefulWidget {
  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:SafeArea(
          child:Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/6.jpeg'),
                fit:BoxFit.cover,
              ),
            ),
            padding:EdgeInsets.symmetric(horizontal: 15.0,vertical:0.0),
            child: SingleChildScrollView(
              child:Column(
                children: [
                  SizedBox(height: 25.0),
                  Text('Frequently Asked\nQuestions',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.w900,
                      color:Colors.black,
                      letterSpacing: 2.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20,),
                  expansion('https://media.istockphoto.com/photos/white-paper-background-picture-id1040425512?b=1&k=20&m=1040425512&s=170667a&w=0&h=mo6rWtHjzwQCJuwcBjRBzPuSzvZ-iDWqpAHDDrXETOg=','What is the duration to access the lounge?','Passengers may enter the lounge only three hours prior to departure time and are permitted to spend three hours on a single transaction.'),
                  SizedBox(height: 20,),
                  expansion('https://media.istockphoto.com/photos/white-paper-background-picture-id1040425512?b=1&k=20&m=1040425512&s=170667a&w=0&h=mo6rWtHjzwQCJuwcBjRBzPuSzvZ-iDWqpAHDDrXETOg=','What is the duration to access the lounge?','Passengers may enter the lounge only three hours prior to departure time and are permitted to spend three hours on a single transaction.'),
                  SizedBox(height: 20,),
                  expansion('https://media.istockphoto.com/photos/white-paper-background-picture-id1040425512?b=1&k=20&m=1040425512&s=170667a&w=0&h=mo6rWtHjzwQCJuwcBjRBzPuSzvZ-iDWqpAHDDrXETOg=','What is the duration to access the lounge?','Passengers may enter the lounge only three hours prior to departure time and are permitted to spend three hours on a single transaction.'),
                  SizedBox(height: 20,),
                  expansion('https://media.istockphoto.com/photos/white-paper-background-picture-id1040425512?b=1&k=20&m=1040425512&s=170667a&w=0&h=mo6rWtHjzwQCJuwcBjRBzPuSzvZ-iDWqpAHDDrXETOg=','What is the duration to access the lounge?','Passengers may enter the lounge only three hours prior to departure time and are permitted to spend three hours on a single transaction.'),
                  SizedBox(height: 10,),
                  Text('Have something else on mind ?\ncontust us on',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color:Colors.black,
                      letterSpacing: 2.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10,),
                  Text('Support@airway.com',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color:Colors.blue,
                      letterSpacing: 2.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: bottom_bar(),
    );
  }
  Container expansion(String img,String ques,String ans) {
    return Container(
      //margin: EdgeInsets.symmetric(horizontal: 20),
      child: ExpansionCard(
        //backgroundColor: Colors.white70,
        background: Image.network(img),
        borderRadius: 20,
        title: Container(
          child:Padding(
            padding: EdgeInsets.only(left: 0.0),
            child: Text(ques,
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        children: [
          SizedBox(height: 20.0,),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: 10.0,right: 10.0),
              child:Text(ans,
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
