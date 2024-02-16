// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Ex02tania extends StatelessWidget {
  const Ex02tania({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 1", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: Center(child: Column(children: [
        SizedBox(height: 20,),
        Text("Eu", style: TextStyle(backgroundColor: Colors.blue,fontSize: 20),),
        SizedBox(height: 20,),
        Text("amo", style: TextStyle(backgroundColor: Colors.red, fontSize: 20),),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("a", style: TextStyle(backgroundColor: Colors.yellow,fontSize: 20),),
            SizedBox(width: 40,),
            Text("aula", style: TextStyle(backgroundColor: Colors.red,fontSize: 20),),
            SizedBox(width: 40,),
            Text("da", style: TextStyle(backgroundColor: Colors.yellow,fontSize: 20),),
            SizedBox(width: 40,),
          ],),
          SizedBox(height: 20,),
          Text("Tânia", style: TextStyle(backgroundColor: Colors.purple,fontSize: 20),),
          SizedBox(height: 30,),
          Image.network("https://media.istockphoto.com/id/1586911323/pt/foto/close-up-of-african-woman-hands-holding-red-heart-in-solidarity.jpg?s=2048x2048&w=is&k=20&c=nreX86TYFpWohb0Wcz3TFanrphs5hFaNDJbN8va67_Y=", width: 300, height: 300,)

      ],)),
    );
  }
}