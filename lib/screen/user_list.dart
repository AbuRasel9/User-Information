import 'package:flutter/material.dart';
import 'package:user_information/screen/user_info_add_screen.dart';
import 'package:user_information/widget/all_screen_appbar.dart';
import 'package:user_information/widget/background_image.dart';
class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  buildAppBar("All User Information"),

      body: BackgroundImage(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: ListView.builder(
            itemCount: 15,
            itemBuilder: (context,inded){
              return Card(
                margin: EdgeInsets.only(bottom: 10,),
                child: ExpansionTile(
                  trailing: SizedBox(),


                  leading: CircleAvatar(
                    child: Icon(Icons.person),


                  ),
                  title: Text("Name"),
                  subtitle: Text("Email"),

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>UserAddScreen()));
                        }, child: Text("Edit")),
                        TextButton(onPressed: (){}, child: Text("delete")),
                      ],
                    )
                  ],
                ),
              );


            }),
        ),)
    );

  }
}
