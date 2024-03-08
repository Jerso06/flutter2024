// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyLampada extends StatefulWidget {
  const MyLampada({super.key});

  @override
  State<MyLampada> createState() => _MyLampadaState();
}

class _MyLampadaState extends State<MyLampada> {

  Image lampadaAcesa = Image.asset('assets/images/acesa.jpg', width: 200,height: 300,);
  Image lampadaApagada = Image.asset('assets/images/apagada.jpg', width: 200,height: 250,);
  late Image lampadaAtual = lampadaApagada;

  String lampada = "apagada";
  String verbo = "acender";

  void mudaLampada(){
    if (lampadaAtual==lampadaApagada) {
      lampadaAtual=lampadaAcesa;
      lampada = "Acesa";
      verbo="apagar";
    }
    else{
      lampadaAtual=lampadaApagada;
      lampada = "Apagada";
      verbo="acender";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(children: [
        lampadaAtual,
        ElevatedButton(onPressed: (){
          mudaLampada();
          setState(() {

          });
        }, child: Text(verbo)),
        Text(lampada),
      ],),),
    );
  }
}