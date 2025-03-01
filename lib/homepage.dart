import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splash/SettingsSection.dart';
import 'package:splash/main.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark
  ));
  runApp(const homepage());
}

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage(
                        'assets/images/gp.jpeg'),
                  ),
                  const SizedBox(height: 20),
                  itemProfile('Name', 'Paul Adufe', CupertinoIcons.person),
                  const SizedBox(height: 10),
                  itemProfile('Phone', '0801234567890', CupertinoIcons.phone),
                  const SizedBox(height: 10),
                  itemProfile(
                      'Address', '2, XYZ Street, Oklahoma', CupertinoIcons.location),
                  const SizedBox(height: 10),
                  itemProfile('Mail', 'XYZ@gmail.com', CupertinoIcons.mail),
                  SizedBox(height: 20),
                  ElevatedButton(child: Text('Edit Profile'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SettingsSection()),
                      );
                    },
                  )
                ]
            )
        ));
  }


  itemProfile(String title, String subtitle, IconData IconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Colors.deepOrange.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10
            )
          ]
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(IconData),
        tileColor: Colors.white,
      ),
    );
  }
}