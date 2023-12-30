import 'package:flutter/material.dart';
import 'package:user_information/screen/user_info_add_screen.dart';
import 'package:user_information/screen/user_list.dart';
import 'package:user_information/widget/Button.dart';
import 'package:user_information/widget/all_screen_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar("Login Screen"),
      body: Stack(
        children: [
          Image.asset("assets/images/login.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              SizedBox(height: 250,),
              Text(
                "Welcome To User Information",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 150,
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: 180,
                      child: ButtonWidget(
                        text: 'Add User',
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => UserAddScreen()));
                        },
                        buttonColor: Colors.blueAccent,
                      )),
                  SizedBox(
                      width: 180,
                      child: ButtonWidget(
                        text: 'User List',
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>UserList()));
                        },
                        buttonColor: Colors.greenAccent,
                      )),
                ],
              )
            ],
          ),
        ],
      )
    );
  }
}
