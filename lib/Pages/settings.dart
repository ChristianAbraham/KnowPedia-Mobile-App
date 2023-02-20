import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:knowpedia/Components/searchbar.dart';
import 'package:knowpedia/Pages/aboutUs.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      appBar: AppBar(
        iconTheme: const IconThemeData(color: warnaUngu, size: 30),
        toolbarHeight: 75,
        title: const Text('Settings', 
        style: TextStyle(
          color: warnaUngu, 
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
          fontSize: 25),),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(children: [
        ListTile(
          leading: Icon(Icons.person, color: warnaUngu),
          title: Text('Account', style: TextStyle(fontFamily: 'Montserrat', fontSize: 20, color: warnaUngu)),
          trailing: Icon(Icons.arrow_forward_ios, color: warnaUngu),
          ),
        ListTile(
          leading: Icon(Icons.notifications, color: warnaUngu),
          title: Text('Notifications', style: TextStyle(fontFamily: 'Montserrat', fontSize: 20, color: warnaUngu)),
          trailing: Icon(Icons.arrow_forward_ios, color: warnaUngu),
          ),
        ListTile(
          leading: Icon(Icons.help, color: warnaUngu),
          title: Text('Help', style: TextStyle(fontFamily: 'Montserrat', fontSize: 20, color: warnaUngu)),
          trailing: Icon(Icons.arrow_forward_ios, color: warnaUngu),
          ),
        ListTile(
          leading: Icon(Icons.logout, color: warnaUngu),
          title: Text('Log Out', style: TextStyle(fontFamily: 'Montserrat', fontSize: 20, color: warnaUngu)),
          trailing: Icon(Icons.arrow_forward_ios, color: warnaUngu),
          ),
        ListTile(
          leading: Icon(Icons.info, color: warnaUngu),
          title: Text('About Us', style: TextStyle(fontFamily: 'Montserrat', fontSize: 20, color: warnaUngu)),
          trailing: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutUs()));
            },
            child: Icon(Icons.arrow_forward_ios, color: warnaUngu)),
          ),
        ]
      )
    );
  }
}