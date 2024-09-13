// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings
import 'package:flutter/material.dart';
import 'package:flutter_application_aula_api/tarefa.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyRequisicao extends StatefulWidget {
  const MyRequisicao({super.key});

  @override
  State<MyRequisicao> createState() => _MyRequisicaoState();
}

class _MyRequisicaoState extends State<MyRequisicao> {
  String dadosApi = "Teste";
  /*var userId;
  var taskId;
  var title;
  var completed;*/
  Tarefa trfTarefa = Tarefa();

  Future<void> fazerRequisicao() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/todos/120");
    http.Response response;
    response = await http.get(url);
    dadosApi = response.body;
    if(response.statusCode==200){
      Map<String, dynamic> dadosFormatados = jsonDecode(dadosApi);
      trfTarefa = Tarefa.fromJson(dadosFormatados);
      /*userId = (dadosFormatados["userId"]);
      taskId = (dadosFormatados["id"]);
      title = (dadosFormatados["title"]);
      completed = (dadosFormatados["completed"]);*/
      dadosApi = "ID do Usuário: " + trfTarefa.userId.toString() + " \n" +"ID da Tarefa: " + trfTarefa.taskId.toString() + " \n" + "Título da Tarefa: " + trfTarefa.title + " \n" + "Tarefa completa? " + trfTarefa.completed.toString();
      setState(() {
      
    });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste API", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(child: Column(children: [
        SizedBox(height: 20,),
        ElevatedButton(onPressed: () {
          fazerRequisicao();
        }, child: Text("Fazer Requisição")),

        SizedBox(height: 20,),

        Text(dadosApi),
      ],),),
    );
  }
}