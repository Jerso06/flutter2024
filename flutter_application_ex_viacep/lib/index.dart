// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyCep extends StatefulWidget {
  const MyCep({super.key});

  @override
  State<MyCep> createState() => _MyCepState();
}

class _MyCepState extends State<MyCep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Viacep",style: TextStyle(color: Colors.white,fontSize: 45,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.green[600],
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Center(child: Column(children: [
          SizedBox(height: 15,),
          TextFormField(
            
          ),
        ],),),
      ),
    );
  }
}