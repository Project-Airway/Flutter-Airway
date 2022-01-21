import 'package:flutter/material.dart';
import 'package:expansion_card/expansion_card.dart';

class PPTC extends StatefulWidget {
  const PPTC({Key? key}) : super(key: key);

  @override
  _PPTCState createState() => _PPTCState();
}

class _PPTCState extends State<PPTC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(33, 33, 33, 1),
      body:Center(
        child:SafeArea(
          child:Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg-common-main2.png'),
                fit:BoxFit.cover,
              ),
            ),
            padding:EdgeInsets.symmetric(horizontal: 15.0,vertical:0.0),
            child: SingleChildScrollView(
              child:Column(
                children: [
                  SizedBox(height: 45.0),
                  Center(
                    child: Text("Privacy Policy \nand\nTerms and Conditions",
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.w900,
                        color:Colors.white,
                        letterSpacing: 2.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Privacy Policy\nUpdated at 2022-01-22",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                      color:Colors.white,
                      letterSpacing: 2.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20,),
                  Text('Airway ("we," "our," or "us") is committed to protecting your privacy. This Privacy Policy explains how your personal information is collected, used, and disclosed by Airway.This Privacy Policy applies to our application named Airway, and its associated subdomains (collectively, our "Service"). By accessing or using our Service, you signify that you have read, understood, and agree to our collection, storage, use, and disclosure of your personal information as described in this Privacy Policy and our Terms of Service.',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                      color:Colors.white,
                      letterSpacing: 2.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 50,),
                  expansion('https://images.prismic.io/blackdiamond-web/119d93bb-f233-40fa-a8f6-176f0ff95524_F20_Pledge-Diamond_2880x1620.jpg?auto=compress,format&rect=77,135,2473,1391&w=2880&h=1620','What Information Do We Collect?','We collect information from you when you visit our service, register, place an order, subscribe to our newsletter, respond to a survey or fill out a form\n- Name / Username\n- Phone Numbers\n-Email Addresses\n-Password'),
                  SizedBox(height: 15,),
                  expansion('https://images.prismic.io/blackdiamond-web/119d93bb-f233-40fa-a8f6-176f0ff95524_F20_Pledge-Diamond_2880x1620.jpg?auto=compress,format&rect=77,135,2473,1391&w=2880&h=1620','How Do We Use The Information We Collect?\nAny of the information we collect from you may be used in one of the following ways:','\n•To personalize your experience (your information helps us to better respond to your individual needs)\nTo improve our service (we continually strive to improve our service offerings based on the information and feedback we receive from you)\n• To improve customer service (your information helps us to more effectively respond to your customer service requests and support needs)\n•To process transactions\n• To administer a contest, promotion, survey or other site feature\n• To send periodic emails'),
                  SizedBox(height: 15,),
                  expansion('https://images.prismic.io/blackdiamond-web/119d93bb-f233-40fa-a8f6-176f0ff95524_F20_Pledge-Diamond_2880x1620.jpg?auto=compress,format&rect=77,135,2473,1391&w=2880&h=1620','Do we share the information we collect with third parties?','We may share the information that we collect, both personal and non-personal, with third parties such as advertisers, contest sponsors promotional and marketing partners, and others who provide our content or whose products or services we think may interest you We may also share it with our current and future affiliated companies and business partners, and if we are involved in a + Add to a\nWe may engage trusted third party service providers to perform functions and provide services to us, such as hosting and maintaining our servers and our service, database storage and management, e-mail management, storag to credit card processing, customer service and fulfilling orders products and services you may purchase through our saven We will likely share your personal information, and possibly some non-personal information, with these third parties to enable them to perform these services for us and for you\nWe may share portions of our log file data, including IP addresses, for analytics purposes with third parties such as web analytics partners, application developers, and ad networks If your IP address is shared, it may be used to estimate general location and other technographics such as connection speed, whether you have visited the service in a shared location, and type of device used to visit the service. They may aggregate information about our advertising and what you see on the service and then provide auditing. research and reporting for us and our advertisers.\nWe may also disclose personal and non-personal information about you to government or law enforcement officials or private parties awe, in our sole discretion, believe necessary or appropriate in order to respond to claims, legal process (including subpoenas), to protect our rights and interests or those of a third party the safety of the public or any person, to prevent or stop any legal, unethical or legally actionable activity, or to otherwise comply with applicable court orders, laws, rules and regulations.'),
                  SizedBox(height: 15,),
                  expansion('https://images.prismic.io/blackdiamond-web/119d93bb-f233-40fa-a8f6-176f0ff95524_F20_Pledge-Diamond_2880x1620.jpg?auto=compress,format&rect=77,135,2473,1391&w=2880&h=1620', 'How Do We Protect Your Information?','We implement a variety of security measures to maintain the safety of your personal information when you place an order or enter, submit, or access your personal information. We offer the use of a secure server. All supplied sensitive/credit information is transmitted via Secure Socket Layer (SSL) technology and then encrypted into our Payment gateway providers database only to be accessible by those authorized with special access rights to such systems, and are required to keep the information confidential After a transaction, your private information (credit cards, social security numbers, financials, etc) is never kept on file. We cannot however, ensure or warrant the absolute security of any information you transmit to us or guarantee that your information on the Service may not be accessed, disclosed, allered, or destroyed by a breach of any of our physical, technical or managerial safeguards'),
                  SizedBox(height: 15,),
                  expansion('https://images.prismic.io/blackdiamond-web/119d93bb-f233-40fa-a8f6-176f0ff95524_F20_Pledge-Diamond_2880x1620.jpg?auto=compress,format&rect=77,135,2473,1391&w=2880&h=1620','Governing Law','The laws of India, excluding its conflicts of law rules, shall govern this Agreement and your use of our service. Your use of our service may also be subject to other local, state, national, or international laws'),
                  SizedBox(height: 15,),
                  expansion('https://images.prismic.io/blackdiamond-web/119d93bb-f233-40fa-a8f6-176f0ff95524_F20_Pledge-Diamond_2880x1620.jpg?auto=compress,format&rect=77,135,2473,1391&w=2880&h=1620','Your Consent',"By using our service, registering an account, or making a purchase, you consent to this Privacy Policy\nLinks to Other Websites\nThis Privacy Policy applies only to the Services The Services may contain links to other websites not operated or controlled by us. We are not responsible for the content, accuracy or opinions expressed in such websites, and such wabates are not investigated, monitored or checked for accuracy or completeness by us. Please remember that when you use a link ge from the Services to another website, our Privacy Policy is no longer in effect. Your browsing and interaction on any other website, including those that have a link on our platform, is subject to that website's own rules and policies. Such third parties may use their own cookies or other methods to collect information about you."),
                  SizedBox(height: 15,),
                  expansion('https://images.prismic.io/blackdiamond-web/119d93bb-f233-40fa-a8f6-176f0ff95524_F20_Pledge-Diamond_2880x1620.jpg?auto=compress,format&rect=77,135,2473,1391&w=2880&h=1620','Changes To Our Privacy Policy','If we decide to change our privacy policy, we will post those changes on this page, and/or update the Privacy Policy modification date below.'),
                  SizedBox(height: 30,),
                  expansion('https://images.prismic.io/blackdiamond-web/119d93bb-f233-40fa-a8f6-176f0ff95524_F20_Pledge-Diamond_2880x1620.jpg?auto=compress,format&rect=77,135,2473,1391&w=2880&h=1620','You acknowledge and agree that',' we shall not be responsible for any Third-Party Services, including their accuracy, completeness, timeliness, validity, copyright compliance, legality, decency, quality or any other aspect thereof. We do not assume and shall not have any liability or responsibility to you or any other person or entity for any Third-Party Service Third-Party Services and links thereto are provided solely as a convenience to you and you access and use them entirely at your own risk and subject to such third parties terms and conditions.' ),
                  SizedBox(height: 10,),
                  expansion('https://images.prismic.io/blackdiamond-web/119d93bb-f233-40fa-a8f6-176f0ff95524_F20_Pledge-Diamond_2880x1620.jpg?auto=compress,format&rect=77,135,2473,1391&w=2880&h=1620','Contact Us',"Don't hesitate to contact us if you have any questions.\nVia Email: air.way.dsce@gmail.com"),
                  SizedBox(height: 10,),
                  Center(
                    child: TextButton(
                      onPressed:(){
                        Navigator.pop(context);
                      },
                      child: Text('Got It',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
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
  Container expansion(String img,String ques,String ans) {
    return Container(
      // margin: EdgeInsets.symmetric(vertical: 20),
      child: ExpansionCard(
        // backgroundColor: Colors.grey,
        background: Image.network(img),
        borderRadius: 20,
        title: Container(
          child:Padding(
            padding: EdgeInsets.only(left: 0.0),
            child: Text(ques,
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
          SizedBox(height: 15.0,),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: 10.0,right: 10.0,bottom: 20.0),
              child:Text(ans,
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

