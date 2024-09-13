// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_ex_viacep/info.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class MyCep extends StatefulWidget {
  const MyCep({super.key});

  @override
  State<MyCep> createState() => _MyCepState();
}

class _MyCepState extends State<MyCep> {

  TextEditingController controllerCep = TextEditingController();
  String apiData = "teste";
  Info information = Info();

  Future<void> request() async{
    var url = Uri.parse("https://viacep.com.br/ws/${controllerCep.text}/json/");
    http.Response response;
    response = await http.get(url);
    apiData = response.body;
    if(response.statusCode == 200){
      Map<String, dynamic> formatedData = jsonDecode(apiData);
      information = Info.fromJson(formatedData);
      apiData = "Bairro: ${information.getBairro}\nLocalidade: ${information.getLocalidade}\nEstado: ${information.getEstado}\nRegião: ${information.getRegiao}\nComplemento: ${information.getComplemento}";
    }
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Viacep",style: TextStyle(color: Colors.white,fontSize: 45,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.green[600],
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Center(child: Column(children: [
          SizedBox(height: 15,),
          TextFormField(
            controller: controllerCep,
            style: TextStyle(color: Colors.green[600]),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50),borderSide: BorderSide(color: Colors.black)),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50),borderSide: BorderSide(color: Colors.black)),
              filled: true,
              labelText: "CEP",
              labelStyle: TextStyle(color: const Color.fromARGB(255, 18, 109, 65), ),
            ),
          ),
          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.start,children: [
            Text("Informações do CEP:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ],),
          SizedBox(height: 25,),
          Text(apiData,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
          SizedBox(height: 40,),
          SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.green,
              textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
            ),
              onPressed: () {
                request();
                setState(() {
                  
                });
              },
              child: Text("Buscar Dados")),
          ),
        ],),),
      ),
    );
  }
}