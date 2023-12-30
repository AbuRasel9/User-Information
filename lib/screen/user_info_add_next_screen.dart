import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:user_information/screen/home_screen.dart';
import 'package:user_information/widget/Button.dart';
import 'package:user_information/widget/all_screen_appbar.dart';
import 'package:user_information/widget/form_feild.dart';
import 'package:user_information/widget/heading_text_style.dart';

class UserInfoAddNextScreen extends StatefulWidget {
  const UserInfoAddNextScreen({super.key});

  @override
  State<UserInfoAddNextScreen> createState() => _UserInfoAddNextScreenState();
}

class _UserInfoAddNextScreenState extends State<UserInfoAddNextScreen> {
  XFile ?photoFile;
  final addressController=TextEditingController();
  final bloodController=TextEditingController();
  final mobileController=TextEditingController();
  final nidController=TextEditingController();
  final _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar("User Info"),

    body: Padding(
      padding: const EdgeInsets.all(30.0),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Add More Information",style: HeadingTextStyle(),),

              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    //user profile picture
                    child: CircleAvatar(
                      radius: 100,
                        child:(photoFile !=null)? ClipOval(child: Image.file(File(photoFile?.path ?? ""),width: double.infinity,height: double.infinity,fit: BoxFit.cover,)):
                       Icon(CupertinoIcons.person),
                      ),

                  ),
                  Positioned(
                    // alignment: Alignment.topLeft,
                    bottom: 30,

                      child: IconButton(onPressed: () async {
                        final imagePicker=ImagePicker();
                        final result=await imagePicker.pickImage(source: ImageSource.camera);
                        if(result !=null){
                          photoFile=result;
                        }
                      }, icon: Icon(Icons.edit)))
                ],
              ),

              SizedBox(height: 15,),
              FormFeild(controller: TextEditingController(), hintText: "Enter Address", errorText: 'Adress',),
              SizedBox(height: 15,),
              FormFeild(controller: TextEditingController(), hintText: "Enter Mobile", errorText: 'Mobile',),
              SizedBox(height: 15,),
              FormFeild(controller: TextEditingController(), hintText: "Enter Blood", errorText: 'Blood Group',),
              SizedBox(height: 15,),
              FormFeild(controller: TextEditingController(), hintText: "Enter NID", errorText: 'NID',),
              SizedBox(height: 25,),


              SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ButtonWidget(text: "Save", onTap: (){
                if(_formKey.currentState!.validate()){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                }
              }, buttonColor: Colors.greenAccent))

            ],
          ),
        ),
      ),
    ),
    );

  }

}
