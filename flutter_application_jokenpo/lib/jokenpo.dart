// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyJokenpo extends StatefulWidget {
  const MyJokenpo({super.key});

  @override
  State<MyJokenpo> createState() => _MyJokenpoState();
}

class _MyJokenpoState extends State<MyJokenpo> {
  @override
  Widget build(BuildContext ontext) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vem x1"),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),

      body: Center(child: Column(children: [
        SizedBox(height: 20,),
        Text("Escolha da máquina", style: TextStyle(fontSize: 20),),
        SizedBox(height: 15,),
        Image.asset("assets/images/papel.jpg", width: 200,),
        SizedBox(height: 20,),
        Text("Escolha!"),
        SizedBox(height: 10,),

        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Image.asset("assets/images/pedra.jpg", width: 100,),
          Image.asset("assets/images/papel.jpg", width: 100,),
          Image.asset("assets/images/tesoura.png", width: 100,),
        ],)
      ],)),
    );
  }
}