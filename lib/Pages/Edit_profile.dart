import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
void main()=>runApp(MaterialApp(
    home:Editprofile()
));
class Editprofile extends StatefulWidget {

  @override
  _EditprofileState createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  PickedFile? _imageFile;
  final ImagePicker _picker = ImagePicker();
  Map data={};


  Future<http.Response> edit_userInfo(String user_id, String name, String mobile_no) async {
    return http.patch(Uri.parse('http://10.0.2.2:3001/users/${user_id}'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(<String, String>{
        'name': name,
        'mobile_no': mobile_no,
      }),
    );

  }

  Future<http.Response> change_password(String user_id, String password) async {
    return http.patch(Uri.parse('http://10.0.2.2:3001/users/${user_id}/PassUp'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(<String, String>{
        'password': password,
      }),
    );

  }

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;
    data = data['data'];
    print(data['userId']);

    final Cname = TextEditingController();
    final Cpassword = TextEditingController();
    final CphoneNo = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg-common-main.png'),
              fit: BoxFit.cover,
            ),
          ),

          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50.0,),
                Text(
                  'Edit Account',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 40.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 20,),
                imageProfile(),
                SizedBox(height: 50,),
                TextFormField(
                  controller: Cname,
                  decoration: InputDecoration(
                    fillColor: Color.fromRGBO(53, 57, 53, 1),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.teal,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.deepPurple,
                          width: 2,
                        )),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.white70,
                    ),
                    labelText: "Full Name",
                    //helperText: "Name can't be empty",
                    hintText: "Name",
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  controller: Cpassword,
                  decoration: InputDecoration(
                    fillColor: Color.fromRGBO(53, 57, 53, 1),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.teal,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.deepPurple,
                          width: 2,
                        )),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.white70,
                    ),
                    labelText: "Password",
                    //helperText: "Email can't be empty",
                    hintText: "Password",
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  controller: CphoneNo,
                  decoration: InputDecoration(
                    fillColor: Color.fromRGBO(53, 57, 53, 1),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.teal,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.deepPurple,
                          width: 2,
                        )),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.white70,
                    ),
                    labelText: "Phone no",
                    // helperText: "phone no can't be empty",
                    hintText: "Phone no",
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RaisedButton(onPressed: () async{
                      String name = Cname.text;
                      String password = Cpassword.text;
                      String phoneNo = CphoneNo.text;

                      if(name == '' || name == null ){
                        name = data['name'];
                      }
                      if(phoneNo == '' || phoneNo == null){
                        print('entered if');
                        phoneNo = data['phone'].toString();
                      }

                      print(password);

                      if(password != '') {
                        print('entered if password');
                        http.Response response = await change_password(data['userId'],password);
                        Map passData = json.decode(response.body);
                        print(passData);
                      }

                      http.Response response = await edit_userInfo(data['userId'],name, phoneNo);
                      Map resData = json.decode(response.body);
                      print(resData);

                    },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                              color: Color.fromRGBO(221, 195, 102, 1), width: 4)
                      ),

                      color: Color.fromRGBO(221, 195, 102, 1),

                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Text('Okay', style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Color.fromRGBO(20, 20, 20, 1),
                        ),),
                      ),
                    ),


                    RaisedButton(onPressed: () {
                      Navigator.pop(context);
                    },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                              color: Color.fromRGBO(221, 195, 102, 1), width: 4)
                      ),

                      color: Color.fromRGBO(255, 228, 211, 0),

                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Text('Back', style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Color.fromRGBO(221, 195, 102, 1),
                        ),),
                      ),
                    ),
                  ],
                ),
              ]
          )
      ),
    );
  }

  Widget imageProfile() {
    return Center(
      child: Stack(
        children: [
          CircleAvatar(
              radius: 60.0,
              backgroundImage: _imageFile == null ?
              AssetImage('assets/123.jpg') :
              FileImage(File(_imageFile!.path)) as ImageProvider
          ),
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: ((builder) => bottomSheet()),
                );
              },
              child: Icon(
                Icons.add_a_photo,
                color: Colors.teal,
                size: 28.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery
          .of(context)
          .size
          .width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: [
          Text(
            "Choose Profile Photo",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton.icon(
                  onPressed: () {
                    takephoto(ImageSource.camera);
                  },
                  icon: Icon(Icons.camera),
                  label: Text('camera')
              ),
              FlatButton.icon(
                  onPressed: () {
                    takephoto(ImageSource.gallery);
                  },
                  icon: Icon(Icons.image),
                  label: Text('Gallery')
              ),
            ],
          ),
        ],
      ),
    );
  }

  void takephoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile;
    });
  }
}