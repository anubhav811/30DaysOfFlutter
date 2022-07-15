import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final imgUrl = "https://avatars.githubusercontent.com/u/71807967?v=4";
    return Drawer(
      child : Container(

        color: Colors.deepPurple,
        child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Anubhav Chachra"),
                accountEmail: Text("chachraaanubhav@gmail.com"),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://avatars.githubusercontent.com/u/71807967?v=4"))),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home,
            color: Colors.white,),
            title: Text("Home",
              style: TextStyle(
              color: Colors.white,)),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled,
              color: Colors.white,),
            title: Text("Profile",
                style: TextStyle(
                  color: Colors.white,)),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail,
              color: Colors.white,),
            title: Text("Email me",
                style: TextStyle(
                  color: Colors.white,)),
          )
        ],
      )
      ),
    );
  }
}
