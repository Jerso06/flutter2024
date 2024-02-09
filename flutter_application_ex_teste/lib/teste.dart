import 'package:flutter/material.dart';

class Testando extends StatelessWidget {
  const Testando({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Text("Algo apenas"), backgroundColor: Colors.white, centerTitle: true,),
      body: Center(child: Column(children: [
        Text("Algo numero 1"),
        Text("Algo numero 1"),
        Text("Algo numero 1"),
      ],),),
    )
  }
}