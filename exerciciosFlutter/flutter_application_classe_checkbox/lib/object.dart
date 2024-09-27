// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:flutter_application_forms/aluno.dart';

class MyObject extends StatefulWidget {
  const MyObject({super.key});

  @override
  State<MyObject> createState() => _MyObjectState();
}

class _MyObjectState extends State<MyObject> {

  TextEditingController raController = TextEditingController();
  TextEditingController nomeController = TextEditingController();
  List<Aluno> listaAl = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastrando Aluno",style: TextStyle(fontSize: 28,color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(children: [
        TextField(
          controller: raController,
          decoration: InputDecoration(
            labelText: "Digite um RA",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            filled: true,
            fillColor: Colors.white,
          ),
        ),

        SizedBox(height: 15,),

        TextField(
          controller: nomeController,
          decoration: InputDecoration(
            labelText: "Digite um Nome",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            filled: true,
            fillColor: Colors.white,
          )
        ),

        SizedBox(height: 15,),

        ElevatedButton(
          onPressed: () {
            int ra = int.parse(raController.text);
            String nome = nomeController.text;
            Aluno al = new Aluno(ra,nome);
            listaAl.add(al);
            mostrar();
          }, 
          child: Text("Cadastrar"))
      ],)),
    );
  }

  void mostrar(){
    listaAl.forEach((Aluno a) {
      print(a.ra.toString() + " " + a.nome);
    });
  }
}