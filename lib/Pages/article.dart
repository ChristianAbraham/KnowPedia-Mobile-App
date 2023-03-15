import 'package:flutter/material.dart';
import '../Components/colors.dart';

class Article extends StatelessWidget {
  const Article({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
              height: 200,
              width: 480,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    "https://picsum.photos/280/130",
                    fit: BoxFit.cover,
                  ))),
          const Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              "Ini Judul Lorem Ipsum Yang Panjang Ya Sapatau Menarik",
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  height: 1.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 2, 8, 0),
                  child: Text("• Science",
                      style: TextStyle(
                          color: warnaOren,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Montserrat")),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 2, 8, 0),
                  child: Text("• By Hana",
                      style: TextStyle(
                          color: warnaOren,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Montserrat")),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 2, 8, 0),
                  child: Text("• 2.5k View",
                      style: TextStyle(
                          color: warnaOren,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Montserrat")),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: SizedBox(
              width: 480,
              child: Text(
                "Artikel panjang yang menjadi isi artikel nantinya  tapi ini cuma contoh saja ya, jadi tidak ada yang menarik di sini, hanya contoh saja.",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
