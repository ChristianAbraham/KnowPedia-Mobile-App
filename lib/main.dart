import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 120,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Text("Hello!", 
                      style: TextStyle(color: Colors.black, 
                      fontSize: 20,
                      fontFamily: "Montserrat", 
                      fontWeight: FontWeight.w700)),
                    ),
                    Text("Chris", style: TextStyle(color: Colors.orange, 
                      fontSize: 32,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700)),
                    
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(""),
                  ),
                ),
              ],
            ),
          )

          
          ),
        body: 
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 20, top: 10),
                child: Text("Main Article", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "Montserrat")),
              ),
              SizedBox(height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      width: 280,
                      height: 160,
                      color: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      width: 280,
                      height: 160,
                      color: Colors.orange,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      width: 280,
                      height: 160,
                      color: Colors.yellow,
                    ),
                  ),
                  
                ],
              ),
            ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10, top: 20),
                child: Text("Daily Insight", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "Montserrat")),
              ),
              Flexible(child: 
              ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        width: 480,
                        height: 160,
                        color: Colors.green,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        width: 480,
                        height: 160,
                        color: Colors.blue,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        width: 480,
                        height: 160,
                        color: Colors.yellow,
                      ),
                    ),
                  ],

                ))
              
            ],),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.purple,
          
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search' ,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded),
              label: 'Profile',
            ),
          ],
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey
        ),
      )
    );
  }
}