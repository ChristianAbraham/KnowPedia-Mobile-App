import 'package:flutter/material.dart';

const Color warnaUngu = Color.fromARGB(255, 75, 38, 72);
const Color warnaOren = Color.fromARGB(255, 239, 140, 51);

Padding searchBar(){
  return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        height: 40,
        color: Colors.transparent,
        child: const TextField(
          decoration: InputDecoration(
            hintText: "Search",
            hintStyle: TextStyle(
                color: warnaUngu,
                fontFamily: "Montserrat",
                fontSize: 11.5),
            prefixIcon: Icon(
              Icons.search,
              color: warnaUngu,
              size: 18,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              borderSide: BorderSide(color: warnaUngu),
            ),
          ),
        ),
      ),
    );
}
