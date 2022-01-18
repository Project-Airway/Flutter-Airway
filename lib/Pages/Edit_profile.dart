import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:AssetImage('assets/bg-common-main.png'),
            fit:BoxFit.cover,
          ),
        ),

        padding:EdgeInsets.symmetric(horizontal: 30,vertical: 30),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100.0,),
              Text(
                'Edit Account',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w900,
                  color:Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 50,),
              imageProfile(),
              SizedBox(height: 50,),
              nameTextField(),
              SizedBox(height: 30),
              EmailTextField(),
              SizedBox(height: 30),
              phonenoTextField(),
              SizedBox(height:25),
              Row(
                children: [
                  SizedBox(height: 20.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RaisedButton(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(38,5,38,5),
                          child: Text('okay',
                            style: TextStyle(
                              fontSize: 23,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,),
                        ),
                        color:Color.fromRGBO(218, 165, 32, 2),

                        onPressed: () {

                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width:10.0,),
                      RaisedButton(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20,5,20,5),
                          child: Text('Cancel',
                            style: TextStyle(
                              fontSize: 23,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,),
                        ),
                        color:Colors.grey[100],

                        onPressed: () {

                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      )
                    ],
                  ),
                ],
              ),
            ]
        ),
      ),
    );
  }
  Widget imageProfile(){
    return Center(
      child: Stack(
        children: [
          CircleAvatar(
              radius: 60.0,
              backgroundImage:_imageFile==null?
            AssetImage('assets/123.jpg'):
            FileImage(File(_imageFile!.path))as ImageProvider
          ),
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: InkWell(
              onTap: (){
                showModalBottomSheet(
                  context: context,
                  builder:((builder)=>bottomSheet()),
                );
              },
              child:Icon(
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
  Widget bottomSheet(){
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: [
          Text(
            "Choose Profile Photo",
            style:TextStyle(
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
                  onPressed:(){
                    takephoto(ImageSource.camera);
                  } ,
                  icon:Icon(Icons.camera) ,
                  label: Text('camera')
              ),
              FlatButton.icon(
                  onPressed:(){
                    takephoto(ImageSource.gallery);
                  } ,
                  icon:Icon(Icons.image) ,
                  label: Text('Galery')
              ),
            ],
          ),
        ],
      ),
    );
  }
  void takephoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source:source,
    );
    setState(() {
      _imageFile=pickedFile;
    });
  }
  Widget nameTextField()
  {
    return TextFormField(
      decoration:InputDecoration(
        fillColor:Color.fromRGBO(53,57,53,1),
        filled:true,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color:Colors.teal,
          ),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color:Colors.deepPurple,
              width: 2,
            )),
        prefixIcon: Icon(
          Icons.person,
          color:Colors.white70,
        ),
        labelText: "Full Name",
        //helperText: "Name can't be empty",
        hintText:"Name",
        labelStyle: TextStyle(
          color:Colors.white,
        ),
      ),
    );
  }
  Widget EmailTextField()
  {
    return TextFormField(
      decoration:InputDecoration(
        fillColor:Color.fromRGBO(53,57,53,1),
        filled:true,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color:Colors.teal,
          ),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color:Colors.deepPurple,
              width: 2,
            )),
        prefixIcon: Icon(
          Icons.email,
          color:Colors.white70,
        ),
        labelText: "Email",
        //helperText: "Email can't be empty",
        hintText:"Email",
        labelStyle: TextStyle(
          color:Colors.white,
        ),
      ),
    );
  }
  Widget phonenoTextField()
  {
    return TextFormField(
      decoration:InputDecoration(
        fillColor:Color.fromRGBO(53,57,53,1),
        filled:true,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color:Colors.teal,
          ),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color:Colors.deepPurple,
              width: 2,
            )),
        prefixIcon: Icon(
          Icons.phone,
          color:Colors.white70,
        ),
        labelText: "phone no",
       // helperText: "phone no can't be empty",
        hintText:"phone no",
        labelStyle: TextStyle(
          color:Colors.white,
        ),
      ),
    );
  }
}


