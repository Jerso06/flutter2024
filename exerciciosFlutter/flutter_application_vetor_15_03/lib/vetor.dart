// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyVetor extends StatefulWidget {
  const MyVetor({super.key});

  @override
  State<MyVetor> createState() => _MyVetorState();
}

class _MyVetorState extends State<MyVetor> {

  List<int> vetor1 = [6,3,51,7,4];
  String textoVetor = "";
  String textoSoma ="";
  String textoMaior ="";
  String textoMenor = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      centerTitle: true,
        title: Text("Vetor Aleatório"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(child: Column(children: [
        Text("Vetor" + textoVetor),
        ElevatedButton(onPressed: () {
          textoVetor = "";
          mostrar();
          setState(() {

          });
        }, child: Text("Mostrar Vetor")
        ),
        SizedBox(height: 30,),
        Text("Soma: " + textoSoma),
        ElevatedButton(onPressed: () {
          somar();
          setState(() {
            
          });
        }, child: Text("Mostrar soma")
        ),
        SizedBox(height: 30,),
        Text("Maior: " + textoMaior),
        ElevatedButton(onPressed: () {
          maior();
          setState(() {
            
          });
        }, child: Text("Mostrar maior")
        ),
        SizedBox(height: 30,),
        Text("Menor: " + textoMenor),
        ElevatedButton(onPressed: () {
          menor();
          setState(() {
            
          });
        }, child: Text("Mostrar menor")
        ),
      ],)),
    );
  }

  void mostrar(){
    for(int i=0; i<vetor1.length;i++){
      textoVetor = textoVetor + " " + vetor1[i].toString();
    }
  }

  void somar(){
    int soma = 0;
    for(int i = 0; i<vetor1.length;i++){
      soma = soma + vetor1[i];
      textoSoma = soma.toString();
    }
  }

  void maior(){
    int oMaior = 0;
    for(int i =0;i<vetor1.length;i++){
      if(vetor1[i]>oMaior){
        oMaior = vetor1[i];
        textoMaior = oMaior.toString();
      }
    }
  }

  void menor(){
    int oMenor = 0;
    for(int i =0;i<vetor1.length;i++){
      if(i == 0){
        oMenor = vetor1[i];
      } else{
          if(vetor1[i]<oMenor){
            oMenor = vetor1[i];
          }
      }
    }
    textoMenor = oMenor.toString();
  }
}