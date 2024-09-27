// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';

class MyPessoa extends StatefulWidget {
  String frase = "";
  MyPessoa(this.frase, {super.key});

  @override
  State<MyPessoa> createState() => _MyPessoaState();
}

class _MyPessoaState extends State<MyPessoa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pessoa"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body:Center(child: Column(children: [
        SizedBox(height: 15,),

        Text(widget.frase),

        SizedBox(height: 15,),

        ElevatedButton(onPressed: () {
          Navigator.pop(context);
        }, child: Text("Voltar"))
      ],),) 
    );
  }
}