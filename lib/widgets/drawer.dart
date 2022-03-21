import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  final _profilePic = "https://media-exp1.licdn.com/dms/image/C5103AQEpLK7rPe0N6g/profile-displayphoto-shrink_200_200/0/1587102214433?e=1652313600&v=beta&t=5cbihHGpNIBFUV92xMKQN_KhTbCIVp-Bg3NmI55bT5Q";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.green,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: const Text("Tauehdul Islam"),
                accountEmail: const Text("tauhedulislam0001@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(_profilePic),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white,),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.profile_circled, color: Colors.white,),
              title: Text(
                "Profile",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white,),
              title: Text(
                "Email me",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.lock_circle, color: Colors.white,),
              title: Text(
                "Logout",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}