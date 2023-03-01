import 'package:flutter/material.dart';
import 'package:knowpedia/Components/searchbar.dart';
import 'package:knowpedia/Pages/aboutus.dart';
import 'package:knowpedia/Pages/login.dart';

const Color warnaUngu = Color.fromARGB(255, 75, 38, 72);
const Color warnaOren = Color.fromARGB(255, 239, 140, 51);

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: warnaUngu, size: 30),
          toolbarHeight: 75,
          title: const Text(
            'Settings',
            style: TextStyle(
                color: warnaUngu,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Column(children: [
          InkWell(
              child: const ListTile(
                leading: Icon(Icons.person, color: warnaUngu),
                title: Text('Account',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        color: warnaUngu)),
                trailing: Icon(Icons.arrow_forward_ios, color: warnaUngu),
              ),
              onTap: () {}),
          InkWell(
              child: const ListTile(
                leading: Icon(Icons.notifications, color: warnaUngu),
                title: Text('Notifications',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        color: warnaUngu)),
                trailing: Icon(Icons.arrow_forward_ios, color: warnaUngu),
              ),
              onTap: () {}),
          InkWell(
            child: ListTile(
              leading: const Icon(Icons.help, color: warnaUngu),
              title: const Text('Help',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      color: warnaUngu)),
              trailing: const Icon(Icons.arrow_forward_ios, color: warnaUngu),
              onTap: () {},
            ),
          ),
          InkWell(
            child: const ListTile(
                leading: Icon(Icons.logout, color: warnaUngu),
                title: Text('Log Out',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        color: warnaUngu)),
                trailing: Icon(Icons.arrow_forward_ios, color: warnaUngu)),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      title: const Text('Log Out'),
                      content: const Text(
                        'Are you sure you want to log out?',
                        style: TextStyle(fontFamily: 'Montserrat'),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Cancel',
                              style: TextStyle(fontFamily: 'Montserrat')),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: const Text('Log Out',
                              style: TextStyle(fontFamily: 'Montserrat')),
                        ),
                      ],
                    );
                  });
            },
          ),
          InkWell(
            child: const ListTile(
                leading: Icon(Icons.info, color: warnaUngu),
                title: Text('About Us',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        color: warnaUngu)),
                trailing: Icon(Icons.arrow_forward_ios, color: warnaUngu)),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AboutUs()));
            },
          ),
        ]));
  }
}
