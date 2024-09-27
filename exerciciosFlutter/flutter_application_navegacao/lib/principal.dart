// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_navegacao/favorito.dart';
import 'package:flutter_application_navegacao/pessoa.dart';

class MyPrincipal extends StatefulWidget {
  const MyPrincipal({super.key});

  @override
  State<MyPrincipal> createState() => _MyPrincipalState();
}

class _MyPrincipalState extends State<MyPrincipal> {
  List<String> frases = ["O amor é lindo", "Ai zé da manga", "Isso é gambaoumangaga"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo navegação", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => MyPessoa("Ninguém ta puro"))));
          }, icon: Icon(Icons.person)),

          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => MyFavorito(frases))));
          }, icon: Icon(Icons.favorite)),
        ],
      ),

      body: Center(child: Column(children: [

        SizedBox(height: 10,),

        ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, '/pessoa');
        }, child: Text("Pessoa")),

        SizedBox(height: 20,),

        ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, '/favorito');  
        }, child: Text("Favorito")),
      ],),),
    );
  }
}