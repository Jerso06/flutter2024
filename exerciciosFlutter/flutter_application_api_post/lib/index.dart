// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_api_post/aluno.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyIndex extends StatefulWidget {
  const MyIndex({super.key});

  @override
  State<MyIndex> createState() => _MyIndexState();
}

class _MyIndexState extends State<MyIndex> {

  TextEditingController controllerRa = TextEditingController();
  TextEditingController controllerNome = TextEditingController();

  Aluno al = Aluno();

  Future<void> salvarAluno() async{
    var url = Uri.parse("http://localhost:8080/apiAluno/inserir");
    await http.post(
      url,
      headers: {'Content-Type':'application/json; charset=UTF-8'},
      body: jsonEncode(
        {
          "ra": al.ra,
          "nome": al.nome,
        }
      )
    );
    setState(() {
      
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro Via API", style: TextStyle(fontSize: 22,color: Colors.white, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(children: [
          TextFormField(
            controller: controllerRa,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50),borderSide: BorderSide(color: Colors.pinkAccent)),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50),borderSide: BorderSide(color: Colors.pinkAccent)),
              filled: true,
              fillColor: Colors.white,
              labelText: "RA",
              labelStyle: TextStyle(color: Colors.pinkAccent, ),
            ),
          ),
          SizedBox(height: 15,),
          TextFormField(
            controller: controllerNome,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50),borderSide: BorderSide(color: Colors.pinkAccent)),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50),borderSide: BorderSide(color: Colors.pinkAccent)),
              filled: true,
              fillColor: Colors.white,
              labelText: "Nome",
              labelStyle: TextStyle(color: Colors.pinkAccent, ),
            ),
          ),
          SizedBox(height: 10,),
          SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.pinkAccent,
              textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
            ),
              onPressed: () {
                al.ra = int.parse(controllerRa.text);
                al.nome = controllerNome.text;
                salvarAluno();
              },
              child: Text("Cadastrar")),
          ),
      ],),),
    );
  }
}