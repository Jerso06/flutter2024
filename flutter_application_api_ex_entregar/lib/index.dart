// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_import, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyIndex extends StatefulWidget {
  const MyIndex({super.key});

  @override
  State<MyIndex> createState() => _MyIndexState();
}

class _MyIndexState extends State<MyIndex> {
  String dadosApi = "";

  Future<void> request() async {
    var url;
    if(strRadio == "People"){
      url = Uri.parse("https://swapi.dev/api/people/${controllerId.text}");
    }else if(strRadio == "Planet"){
      url = Uri.parse("https://swapi.dev/api/planets/${controllerId.text}");
    }else if(strRadio == "Starships"){
      url = Uri.parse("https://swapi.dev/api/starships/${controllerId.text}");
    }
    http.Response response;
      response = await http.get(url);
      dadosApi = response.body;
      if(response.statusCode == 200){

      }
  }

  String strRadio = "";

  TextEditingController controllerId = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Star Wars",style: TextStyle(color: Colors.yellow, fontSize: 20, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Center(child: Column(children: [
        SizedBox(height: 20,),

        TextFormField(
          controller: controllerId,
           decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            filled: true,
            fillColor: Colors.white,
            labelText: "Id",
          ),
        ),

        SizedBox(height: 20,),

        Text("Tipo de Dados:",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        Row(mainAxisAlignment: MainAxisAlignment.start,children: [
          Text("People", style: TextStyle(fontSize: 16),),
          Radio(
            value: "People",
            groupValue: strRadio,
            onChanged: (value) {
              strRadio = value!;
              setState(() {
                
              });
            },),
        ],),
        SizedBox(height: 15,),
        Row(mainAxisAlignment: MainAxisAlignment.start,children: [
          Text("Planet", style: TextStyle(fontSize: 16),),
          Radio(
            value: "Planet",
            groupValue: strRadio,
            onChanged: (value) {
              strRadio = value!;
              setState(() {
                
              });
            },),
        ],),
        SizedBox(height: 15,),
        Row(mainAxisAlignment: MainAxisAlignment.start,children: [
          Text("Starships", style: TextStyle(fontSize: 16),),
          Radio(
            value: "Starships",
            groupValue: strRadio,
            onChanged: (value) {
              strRadio = value!;
              setState(() {
                
              });
            },)
        ],),

        SizedBox(height: 20,),

        SizedBox(
          height: 50,
          width: 200,
          child: ElevatedButton(style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.yellow,
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
          ),
            onPressed: () {
              
            },
            child: Text("Buscar Dados")),
        )
      ],),),
    ));
  }
}