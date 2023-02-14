import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

const Color warnaUngu = Color.fromARGB(255, 75, 38, 72);
const Color warnaOren = Color.fromARGB(255, 239, 140, 51);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 95,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 3),
                      child: Text("Hello!", 
                      style: TextStyle(color: warnaUngu, 
                      fontSize: 19,
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
                    backgroundImage: NetworkImage("https://picsum.photos/130/130"),
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
              Flexible(child: 
              ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    const Padding(
                padding: EdgeInsets.only(bottom: 20, top: 10),
                child: Text("Main Article", style: TextStyle(color: warnaUngu,fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "Montserrat")),
              ),
              SizedBox(height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  MainArticle(),
                  MainArticle(),
                  MainArticle(),
                  MainArticle(),
                ],
              ),
            ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10, top: 20),
                  child: Text("Daily Insight", style: TextStyle(color: warnaUngu,fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "Montserrat")),
                ),
                    DailyInsight(),
                    DailyInsight(),
                    DailyInsight(),
                    DailyInsight(),
                    DailyInsight(),
                    
                  ],

                ))
              
            ],),
        ),
        bottomNavigationBar: GNav(
          iconSize: 20,
          gap: 4, 
          backgroundColor: warnaUngu,
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: warnaOren,
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 25),
          onTabChange: (index) {
            print(index);
          },
          
          tabs: const [
          
          GButton(icon: Icons.home, text: "Home"),
          GButton(icon: Icons.favorite, text: "Like"),
          GButton(icon: Icons.add_box_rounded, text: "Write"),
          GButton(icon: Icons.explore, text: "Explore"),
          GButton(icon: Icons.person, text: "Profile"),
        ])
    );
  }
}


class DailyInsight extends StatelessWidget {
  const DailyInsight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 5),
      child: Container(
        width: 480,
        height: 100,
        color: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: const Image(image: NetworkImage("https://picsum.photos/90/100"), 
              width: 90, 
              height: 100, 
              fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0,bottom: 1),
                    child: Container(
                      width: 250,
                      child: const Text("Ini Judul Artikel Yang Eye Catchy Tes Judul Panjang",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis, 
                        style: TextStyle(color: warnaUngu, 
                        fontSize: 14, 
                        fontWeight: FontWeight.w700, 
                        height: 1.5,
                        fontFamily: "Montserrat")
                        ),
                    ),
                  ),
                  Container(
                    width: 240,
                    child: const Text("Ini subtitle artikel yang menarik tapi ndatau kalian bakal tertarik atau tidak ya memang agak panjang ya",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis
                    ,style: TextStyle(color: warnaUngu,
                    height: 1.5,
                    fontSize: 9,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Montserrat"),
                    ),
                  
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 50,
                          height: 13,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: warnaUngu
                          ),
                          child: const Center(
                            child: Text("Science", 
                            style: TextStyle(
                              color: Colors.white, 
                              fontSize: 10, 
                              fontWeight: FontWeight.w700, 
                              fontFamily: "Montserrat"),
                              )
                            ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text("• By Hana", style: TextStyle(color: warnaOren, fontSize: 10, fontWeight: FontWeight.w500, fontFamily: "Montserrat")
                          ),
                        ),
                        
                      ],
                    ),
                  )
                ],
            
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MainArticle extends StatelessWidget {
  const MainArticle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 35),
      child: Container(
        width: 280,
        height: 160,
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: const Image(image: NetworkImage("https://picsum.photos/280/130"), 
                width: 280, 
                height: 130, 
                fit: BoxFit.cover,
             ),
            ),  
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
              child: Text("Lorem Ipsum Judul Waw", style: TextStyle(color: warnaUngu, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: "Montserrat")),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 2, 8, 0),
                  child: Text("• Science", style: TextStyle(color: warnaOren, fontSize: 10, fontWeight: FontWeight.w500, fontFamily: "Montserrat")),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 2, 8, 0),
                  child: Text("• By Hana", style: TextStyle(color: warnaOren, fontSize: 10, fontWeight: FontWeight.w500, fontFamily: "Montserrat")),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 2, 8, 0),
                  child: Text("• 2.5k View", style: TextStyle(color: warnaOren, fontSize: 10, fontWeight: FontWeight.w500, fontFamily: "Montserrat")),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}