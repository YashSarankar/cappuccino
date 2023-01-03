import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.lightGreen,
        child: ListView(
          children: const[
            DrawerHeader(
                // decoration: BoxDecoration(color: Colors.white),
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/user_icon.png'),
                  ),
                  margin: EdgeInsets.zero,
                  accountName: Text('Yash Sarankar',style: TextStyle(color: Colors.white),),
                  accountEmail: Text("yashshaft@gmail.com",style: TextStyle(color: Colors.white),),
                )
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white,),
              title: Text(
                  "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white)
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
              title: Text(
                  "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white)
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.white,),
              title: Text(
                "Email Me",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
