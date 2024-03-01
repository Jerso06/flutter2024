// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Decoracao extends StatelessWidget {
  const Decoracao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(children: [


        DecoratedBox(decoration: BoxDecoration(
          border: Border.all( color: Colors.purple),
          color: Colors.orange,
          borderRadius: BorderRadius.circular(30),
          
          ),

          child: Padding(
          padding: EdgeInsets.all(50), //EdgeInsets.fromLTRB(?,?,?,?) colocar o valor de cada lado "Left", "Top" ...
          child: Text("Meu Programinha"),
          ),
        ),
        

      ],),),
    );
  }
}