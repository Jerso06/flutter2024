// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';

class MyFrases extends StatefulWidget {
  const MyFrases({super.key});

  @override
  State<MyFrases> createState() => _MyFrasesState();
}

class _MyFrasesState extends State<MyFrases> {

  String textoFrase = "";
  List<String> frasesDoDia = ["Trabalho duro é inútil para aqueles que não acreditam em si mesmos.", "Lar é onde tem alguém sempre pensando em você.", "Aqueles que não entendem a verdadeira dor nunca vão entender a verdadeira paz.", "Desista de me fazer desistir!"];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(42, 18, 94,1),
      appBar: AppBar(
        title: Text("Frases Inúteis", style: TextStyle(color: Color.fromRGBO(42, 18, 94,1)),),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 69, 0,1),
      ),
      body: Center(child: Column(children: [
        SizedBox(height: 30,),
        Image.network("https://ogimg.infoglobo.com.br/in/24581416-aae-bd5/FT1086A/THEROCK.jpg", height: 200, width: 400,),
        SizedBox(height: 20,),
        Text(textoFrase , style: TextStyle(color: Color.fromRGBO(255, 69, 0,1),),textAlign: TextAlign.center,),
        SizedBox(height: 40,),
        ElevatedButton(onPressed: () {
          mudarFrase();
          setState(() {
            
          });
        }, child: Text("Frase desmotivacional")),
      ]),),
    );
  }

  void mudarFrase(){
    int n = Random().nextInt(4);
    textoFrase = frasesDoDia[n];
  }
}