// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BemVindo extends StatelessWidget {
  const BemVindo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bem Vindo!", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
        child: 
        Column(children: [
          SizedBox(height: 20),
          Image.network('https://media.istockphoto.com/id/1201248613/pt/vetorial/religious-family-home-education-illustration.jpg?s=2048x2048&w=is&k=20&c=b_VkJvKu8zhGaVzQlxu_WxjWPPUMxn6EdxxCqLwEcgY=', height: 300, width: 440,),
          SizedBox(height: 10),
          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.", style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
          SizedBox(height: 20),
          Text("Lorem ipsum dolor sit amet.", style: TextStyle(fontSize: 16), textAlign: TextAlign.center,),
          SizedBox(height: 60,),

          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(width: 15, height: 60,),
            Image.network('https://cdn.pixabay.com/photo/2012/04/18/19/01/check-37583_1280.png', height: 30, width: 30,),
            SizedBox(width: 5,),
            Text("Não sei o que escrever", style: TextStyle(fontSize: 20)),
          ],),

          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(width: 15, height: 60,),
            Image.network('https://cdn.pixabay.com/photo/2012/04/18/19/01/check-37583_1280.png', height: 30, width: 30,),
            SizedBox(width: 5,),
            Text("Ta perdendo seu tempo", style: TextStyle(fontSize: 20)),
          ],),

          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(width: 15, height: 60,),
            Image.network('https://cdn.pixabay.com/photo/2012/04/18/19/01/check-37583_1280.png', height: 30, width: 30,),
            SizedBox(width: 5,),
            Text("Ta lendo isso ainda?", style: TextStyle(fontSize: 20)),
          ],)

        ],
        ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.red,
          height: 60,
          child: Text("Venha estudar conosco!", style: TextStyle(color: Colors.white, fontSize: 22), textAlign: TextAlign.center,),
        ),
    );
  }
}