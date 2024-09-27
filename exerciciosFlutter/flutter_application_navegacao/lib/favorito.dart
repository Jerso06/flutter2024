// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyFavorito extends StatefulWidget {
  List<String> lista = [];
  MyFavorito(this.lista, {super.key});

  @override
  State<MyFavorito> createState() => _MyFavoritoState();
}

class _MyFavoritoState extends State<MyFavorito> {
  String palavrasDaLista = "";
  @override
  Widget build(BuildContext context) {
    mostrar();
    return Scaffold(
      appBar: AppBar(title: Text("Favoritos"), backgroundColor: Colors.indigo,centerTitle: true,),
      body:Center(child: Column(children: [
        SizedBox(height: 15,),

        Text("Página de Favorito"),

        SizedBox(height: 15,),

        Text(palavrasDaLista),

        SizedBox(height: 10,),
        
        ElevatedButton(onPressed: () {
          Navigator.pop(context);
        }, child: Text("Voltar"))
      ],),) 
    );
  }

      void mostrar(){
      for(int i=0; i<widget.lista.length; i ++){
        palavrasDaLista = palavrasDaLista + widget.lista[i] + "\n";
      }
    }
}