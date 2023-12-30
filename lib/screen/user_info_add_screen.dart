import 'package:flutter/material.dart';
import 'package:user_information/screen/user_info_add_next_screen.dart';
import 'package:user_information/widget/Button.dart';
import 'package:user_information/widget/form_feild.dart';
import 'package:user_information/widget/heading_text_style.dart';

class UserAddScreen extends StatefulWidget {
  const UserAddScreen({super.key});

  @override
  State<UserAddScreen> createState() => _UserAddScreenState();
}

class _UserAddScreenState extends State<UserAddScreen> {
  final _formKey=GlobalKey<FormState>();
  final nameController=TextEditingController();
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text("User List"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Add User Information", style: HeadingTextStyle(),),
                SizedBox(height: 15,),
                FormFeild(controller: nameController, hintText: 'Enter Name ', errorText: 'Name',),
                SizedBox(height: 15,),
                FormFeild(controller: emailController, hintText: 'Enter Email ', errorText: 'Email',),
                SizedBox(height: 15,),
                FormFeild(controller: passwordController, hintText: 'Enter Password ', errorText: 'Password',),
                SizedBox(height: 25,),
                SizedBox(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: ButtonWidget(text: "Next", onTap: () {
                      if(_formKey.currentState!.validate()){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => UserInfoAddNextScreen()));
        
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

