import 'package:flutter/material.dart';

class Article extends StatelessWidget {
  const Article({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white, size: 30),
        
      ),
      body: Column(children: [
        SizedBox(
          height: 180,
          width: 480,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network("https://picsum.photos/280/130", 
            fit: BoxFit.cover,)
          )
        ),
        const Padding(
          padding: EdgeInsets.all(15),
          child: Text("Ini Judul Lorem Ipsum Yang Panjang Ya Sapatau Menarik",
          style: TextStyle(fontFamily: 'Montserrat', 
          fontSize: 25, 
          fontWeight: FontWeight.w700,
          height: 1.5),
          ),
        ),
        
      ]),
    );
  }
}