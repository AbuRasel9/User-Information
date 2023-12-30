import 'package:flutter/material.dart';
import 'package:user_information/widget/Button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Welcome To User Information",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        SizedBox(height: 350,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            SizedBox(
                width: 180,
                child: ButtonWidget(text: 'Add', onTap: () {  }, buttonColor: Colors.blueAccent,)),
            SizedBox(
                width: 180,

                child: ButtonWidget(text: 'User List', onTap: () {  }, buttonColor: Colors.greenAccent,)),
          ],
        )
    ],
    ),
      ),
    );
  }
}

