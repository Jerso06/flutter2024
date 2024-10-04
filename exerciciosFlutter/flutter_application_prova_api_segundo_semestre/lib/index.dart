// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:flutter_application_prova_api_segundo_semestre/animal.dart';
import 'package:flutter_application_prova_api_segundo_semestre/repository.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyAnimal extends StatefulWidget {
  const MyAnimal({super.key});

  @override
  State<MyAnimal> createState() => _MyAnimalState();
}

class _MyAnimalState extends State<MyAnimal> {
  Animal an = Animal();
  AnimalRepository anRepo = AnimalRepository();

  Future<void> requisicao() async{
   var url = Uri.parse('http://localhost:8080/apiProva/todos');
    http.Response response = await http.get(url);
    if(response.statusCode==200){
      List listaAn = jsonDecode(response.body) as List;
      anRepo.listaAn = listaAn.map(
        (listaAl) => Animal.fromJson(listaAl)).toList();
        setState(() {
          
        });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.pets),
        actions: [Icon(Icons.pets,color: Colors.black,),Text("  ")],
        title: Text("Animais", style: TextStyle(color: Colors.black, fontSize: 22,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),

      body: SingleChildScrollView(child: Center(child: Column(children: [
        SizedBox(height: 20,),
        Text("Bem-Vindo a página de animais",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        SizedBox(height: 15,),
        Text("Aqui podemos ver os algumas características dos animais",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
        SizedBox(height: 10,),
        Text("(Nome, Filo, Tempo de Vida)", style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
        SizedBox(height: 20,),
        Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxTRto4T6_zPfgXiPeTxiCSlwdMfzc6PWhd-sOfsp72I2dMY1aHJmLUXdcu6H7aNEt2fc&usqp=CAU',),
        SizedBox(height: 20,),
        SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.lightGreen,
              textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
            ),
              onPressed: () {
                requisicao();
              },
              child: Text("Buscar Dados")),
          ),
          SizedBox(height: 20,),
          SizedBox(
            height: 400,
            child: ListView.builder(
              itemCount: anRepo.listaAn.length,
              itemBuilder: (context, index){
                return ListTile(
                  title: Text(anRepo.listaAn[index].nome.toString(),style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Filo: " + anRepo.listaAn[index].filo.toString(),style: TextStyle(fontSize: 16),),
                  trailing: Text(anRepo.listaAn[index].tempoVida.toString(),style: TextStyle(fontSize: 15),),
                );
              }
            ),
          ),
      ],),),
    ),);
  }
}