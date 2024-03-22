// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyEntrada extends StatefulWidget {
  const MyEntrada({super.key});

  @override
  State<MyEntrada> createState() => _MyEntradaState();
}

class _MyEntradaState extends State<MyEntrada> {

  TextEditingController controlatxt1 = TextEditingController();
  TextEditingController controlatxt2 = TextEditingController();
  String txtDigitado1 = "";
  String txtDigitado2 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),

      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(children: [
        TextField(
          controller: controlatxt1,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            filled: true,
            fillColor: Colors.white,
            labelText: "coloca ai",
            prefixIcon: Icon(Icons.abc), 
          ),
          onChanged: (value) {
            print(value);
          },
        ),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: () {
          txtDigitado1 = controlatxt1.text;
          txtDigitado2 = controlatxt2.text;
          setState(() {
            
          });
        }, child: Text("Deu bom")
        ),
        Text("Você escreveu no primeiro: " + txtDigitado1),
        Text("Você escreveu no segundo: "+ txtDigitado2),

        SizedBox(height: 30,),

        TextField(
          controller: controlatxt2,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            filled: true,
            fillColor: Colors.white,
            labelText: "coloca ai",
            prefixIcon: Icon(Icons.plus_one), 
          ),
          onChanged: (value) {
            print(value);
          },
        ),
      ],),),
    );
  }
}