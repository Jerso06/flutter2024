// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';

class MyJokenpo extends StatefulWidget {
  const MyJokenpo({super.key});

  @override
  State<MyJokenpo> createState() => _MyJokenpoState();
}

class _MyJokenpoState extends State<MyJokenpo> {
  int seletor = 0, info = 0;
  List<String> caminhos = ["assets/images/pedra.jpg","assets/images/papel.jpg","assets/images/tesoura.png"];
  String mensagem = "", result = "";

  void resultado(){
    switch(info){
      case 0:
        if(info==seletor){
          result="Empate";
        }else if(seletor == 1){
          result="Derrota";
        }else{
          result="Vitória";
        }
        break;

        case 1:
        if(info==seletor){
          result="Empate";
        }else if(seletor == 2){
          result="Derrota";
        }else{
          result="Vitória";
        }
        break;

        case 2:
        if(info==seletor){
          result="Empate";
        }else if(seletor == 0){
          result="Derrota";
        }else{
          result="Vitória";
        }
    }
  }


  @override
  Widget build(BuildContext ontext) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vem x1"),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),

      body: Center(child: Column(children: [
        SizedBox(height: 20,),
        Text("Escolha da máquina", style: TextStyle(fontSize: 20),),
        SizedBox(height: 15,),
        Image.asset(caminhos[seletor], width: 200,),
    
        SizedBox(height: 20,),
        Text("Escolha!"),
        SizedBox(height: 10,),

        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [

            GestureDetector(
                onTap: () {
                  seletor = Random().nextInt(3);
                  info = 0;
                  mensagem = "Você escolheu Pedra.";
                  resultado();
                  setState(() {
                  
                  });
                },
                  child: Image.asset("assets/images/pedra.jpg", width: 100,),
              ),

            GestureDetector(
                onTap: () {
                  seletor = Random().nextInt(3);
                  info = 1;
                  mensagem = "Você escolheu Papel.";
                  resultado();
                  setState(() {
                  
                  });
                },
                  child: Image.asset("assets/images/papel.jpg", width: 100,),
            ),

            GestureDetector(
                onTap: () {
                  seletor = Random().nextInt(3);
                  info = 2;
                  mensagem = "Você escolheu Tesoura.";
                  resultado();
                  setState(() {
                  
                  });
                },
                  child: Image.asset("assets/images/tesoura.png", width: 100,),
            )  
        ],),

        Text(mensagem),
        SizedBox(height: 20,),
        Text("Resultado:" + result),
      ],)),
    );
  }
}