// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyIndex extends StatefulWidget {
  const MyIndex({super.key});

  @override
  State<MyIndex> createState() => _MyIndexState();
}

class _MyIndexState extends State<MyIndex> {

  String escolha = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(children: [
        SizedBox(height: 30,),
        GestureDetector(
          child: Image.asset("assets/images/kurapika.jpg", width: 250,),
          onTap: () {
            escolha = "Kurapika";
            setState(() {
              
            });
          },
        ),
        SizedBox(height: 60,),
        GestureDetector(
          child: Image.asset("assets/images/chrollo.jpg", width: 250,),
          onTap: () {
            escolha = "Chrollo";
            setState(() {
              
            });
          },
        ),
        Text("A minha escolha foi: " + escolha),
      ]),),
    );
  }
}