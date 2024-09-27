// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {

  Image imagemContador = Image.asset("assets/images/contador.jpg", height: 200,width: 200,);
  int valor = 0;
  String texto = "Valor do contador: ";

  void aumenta(){
    valor++;
  }

  void diminui(){
    valor--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(children: [
        SizedBox(height: 20, width: 20,),
        imagemContador,
        Text("Contador usando Stateful Widget", style: TextStyle(fontSize: 20),),
        SizedBox(height: 60,),
        
        
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          FloatingActionButton.small(onPressed: (){
            diminui();
            setState(() {
              
            });
          },
          child: Icon(Icons.remove),),
          SizedBox(width: 15,),
          DecoratedBox(decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
          child:Padding(padding:EdgeInsets.all(30), child: Text(valor.toString(),style: TextStyle(fontSize: 20),),),
           ),
           SizedBox(width: 15,),
           FloatingActionButton.small(onPressed: (){
            aumenta();
            setState(() {
              
            });
          },
          child: Icon(Icons.add),),
      ],),
      SizedBox(height: 20,),
      Text(texto + valor.toString(),style: TextStyle(fontSize: 20),),
        ],),));
  }
}