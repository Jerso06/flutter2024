// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class  MeuDog extends StatelessWidget {
  const  MeuDog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 42, 230, 255),
      appBar: AppBar(title: Text("Meu dog😎👍🌜"),
      backgroundColor: Colors.cyan,
      centerTitle: true,
      ),
      body: Center(child: Column(children: [
        Text("Carlos🥦",style: TextStyle(fontSize: 30, color: Colors.white, backgroundColor: Colors.black,fontStyle: FontStyle.italic )),
        Text("Manoel🐀",style: TextStyle(fontSize: 30, color: Colors.white, backgroundColor: Colors.orange,fontWeight: FontWeight.bold)),
        Text("Luis😎",style: TextStyle(fontSize: 30, color: Colors.white, backgroundColor: Colors.purple,fontFamily: "Noto Sans")),
      ]),),
    );
  }
}