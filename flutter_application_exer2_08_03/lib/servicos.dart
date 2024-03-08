// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyServico extends StatefulWidget {
  const MyServico({super.key});

  @override
  State<MyServico> createState() => _MyServicoState();
}

class _MyServicoState extends State<MyServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter BLE", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),

      body: Center(child: Column(children: [
        SizedBox(height: 15,),
        Text("Available devices"),
        
        Row( mainAxisAlignment:MainAxisAlignment.spaceBetween, children: [
          Text('GoPro 1855\nCD:4E.9E.C2.58.43'),
        ],)
      ],),),
    );
  }
}