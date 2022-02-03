import 'package:flutter/material.dart';
import 'package:airway_flutter/Pages/bottom.dart';
import 'package:expansion_card/expansion_card.dart';

void main() => runApp(MaterialApp(home: FAQ()));

class FAQ extends StatefulWidget {
  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(33, 33, 33, 1),
      body: Center(
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg-common-main2.png'),
                fit: BoxFit.cover,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 90.0),
                  Text(
                    "FAQ's",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      letterSpacing: 2.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  expansion(
                      'https://images.prismic.io/blackdiamond-web/119d93bb-f233-40fa-a8f6-176f0ff95524_F20_Pledge-Diamond_2880x1620.jpg?auto=compress,format&rect=77,135,2473,1391&w=2880&h=1620',
                      'What is the duration to access the lounge?',
                      'Passengers may enter the lounge only three hours prior to departure time and are permitted to spend three hours on a single transaction.'),
                  SizedBox(
                    height: 15,
                  ),
                  expansion(
                      'https://images.prismic.io/blackdiamond-web/119d93bb-f233-40fa-a8f6-176f0ff95524_F20_Pledge-Diamond_2880x1620.jpg?auto=compress,format&rect=77,135,2473,1391&w=2880&h=1620',
                      'Why was I not refunded my full amount when I cancelled my ticket?',
                      'The cancellation policy of the company states that cancellation of tickets has to occur at least 24 hours before the departure otherwise amount of money is deducted.'),
                  SizedBox(
                    height: 15,
                  ),
                  expansion(
                      'https://images.prismic.io/blackdiamond-web/119d93bb-f233-40fa-a8f6-176f0ff95524_F20_Pledge-Diamond_2880x1620.jpg?auto=compress,format&rect=77,135,2473,1391&w=2880&h=1620',
                      'When can I redeem the points I have accumulated?',
                      'Users can redeem the accumulated points during the checkout and can avail discounts!.'),
                  SizedBox(
                    height: 15,
                  ),
                  expansion(
                      'https://images.prismic.io/blackdiamond-web/119d93bb-f233-40fa-a8f6-176f0ff95524_F20_Pledge-Diamond_2880x1620.jpg?auto=compress,format&rect=77,135,2473,1391&w=2880&h=1620',
                      'Are other services like meal coupons , taxi services etc. provided by the company?',
                      'We do not provide any other services except that of booking of flights but stay tuned there is a lot yet to come;) '),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Have something else on mind ?\nContact us on',
                    style: TextStyle(
                      fontSize: 19.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      letterSpacing: 2.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'air.way.dsce@gmail.com',
                    style: TextStyle(
                      fontSize: 19.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                      letterSpacing: 2.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      // bottomNavigationBar: bottom_bar(),
    );
  }

  Container expansion(String img, String ques, String ans) {
    return Container(
      // margin: EdgeInsets.symmetric(vertical: 20),
      child: ExpansionCard(
        // backgroundColor: Colors.grey,
        background: Image.network(img),
        borderRadius: 20,
        title: Container(
          child: Padding(
            padding: EdgeInsets.only(left: 0.0),
            child: Text(
              ques,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        children: [
          SizedBox(
            height: 15.0,
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 20.0),
              child: Text(
                ans,
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.white70,
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
