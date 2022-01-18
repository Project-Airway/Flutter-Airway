import 'package:flutter/material.dart';

class editInfo extends StatefulWidget {
  const editInfo({Key? key}) : super(key: key);

  @override
  _editInfoState createState() => _editInfoState();
}

class _editInfoState extends State<editInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg-common.jpeg'),
            fit: BoxFit.fitWidth,
          ),

        ),
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40,20,20,20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/logo.png'),
              Text('Hey Adi,\nWhere to next ?',style: TextStyle(
                fontSize: 36,
                fontFamily: 'poppins',
                fontWeight: FontWeight.w700,
              ),),

              edit_form(),


            ],
          ),
        ),
      ),
      // bottomNavigationBar: bottom_bar(),
    );
  }
}

class edit_form extends StatefulWidget {
  const edit_form({Key? key}) : super(key: key);

  @override
  _edit_formState createState() => _edit_formState();
}

class _edit_formState extends State<edit_form> {

  final _formKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final email = TextEditingController();
  final phone_no = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            padding:EdgeInsets.only(top:10,right:0,left:0),
            child:Card(
              shape:RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(20),
              ),
              color:Colors.white,
              child: Container(
                padding:EdgeInsets.only(left:20),
                child: TextFormField(
                  decoration:InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:Colors.teal,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color:Colors.orange,
                          width: 2,
                        )),
                    prefixIcon: Icon(
                      Icons.email,
                      color:Colors.black,
                    ),
                    labelText: "Email",
                    helperText: "Email can't be empty",
                    hintText:"Email",
                  ),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}

