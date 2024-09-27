// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Aula02 extends StatelessWidget {
  const Aula02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Maluco",), 
        backgroundColor: Colors.yellow,),
      backgroundColor:  Colors.white,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        height: 80,
        child: Text("To Maluco again", 
        style: TextStyle(
          color: Colors.yellow, fontSize: 30),
         textAlign: TextAlign.center,),
         ),
         body:SingleChildScrollView(child: 
         Center(child: Column(children: [
          SizedBox(height: 40,),
          Text("Nelipe Feto"),
          SizedBox(height: 40,),
          Text("Ganoel Momes"),
          SizedBox(height: 40,),
          Text("Coão Jarrilho"),
          SizedBox(height: 400, width: 300, child: Image.network('https://cdn.pixabay.com/photo/2016/03/28/18/07/micky-mouse-1286470_640.jpg'),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("Nabriel Gascimento"),
            SizedBox(width: 15,),
            Text("Lndrew Auigi"),
            SizedBox(width: 15,),
            Text("Hedson Jenrique"),
          ],),
          Text("Mnrique Eachado"),
          
         ],),)
         ),
    );
  }
}