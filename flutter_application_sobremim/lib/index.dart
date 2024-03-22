// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MeusDados extends StatelessWidget {
  const MeusDados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sobre mim", style: TextStyle(color: Colors.white) ),
        backgroundColor: Color.fromARGB(255, 133, 35, 179),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 232, 104, 255),

      body: SingleChildScrollView(child: Center(child:Column(children: [
        SizedBox(height: 10),
        CircleAvatar(
          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPgEkB5qy53QmVz-4vwc8l67EJ7lBSAlXZmA&usqp=CAU"),
          radius: 90,
        ),
        SizedBox(height: 10,),
        Text("Spike Spiegel", style: TextStyle(fontSize: 28),),
        SizedBox(height: 20,),

        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          IconButton(
            iconSize: 30,
            icon: const Icon(Icons.favorite,),
            color: Colors.yellow,
            onPressed: () {},),
            SizedBox(width: 10,),
            IconButton(
            iconSize: 30,
            icon: const Icon(Icons.favorite,),
            color: Colors.orange,
            onPressed: () {},),
            SizedBox(width: 10,),
            IconButton(
            iconSize: 30,
            icon: const Icon(Icons.favorite,),
            color: Colors.red,
            onPressed: () {},),
            SizedBox(height: 100,)
        ],),
        
        DecoratedBox(decoration: BoxDecoration(
          color: Colors.grey,
          ),
          
          child: Padding(
          padding: EdgeInsets.fromLTRB(10,10,10,900), 
          child: Text("Meu Pênis tem 33cm", style: TextStyle(color: Colors.black),),        
          ),
        ),
      ],)),
    ));
  }
}