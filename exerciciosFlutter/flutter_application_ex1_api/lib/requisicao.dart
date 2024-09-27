import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyRequisicao extends StatefulWidget {
  const MyRequisicao({super.key});

  @override
  State<MyRequisicao> createState() => _MyRequisicaoState();
}

class _MyRequisicaoState extends State<MyRequisicao> {
  
  String dadosApi = "Teste";
  var userId;
  var taskId;
  var title;
  var completed;

  TextEditingController controllerText = TextEditingController();

  Future<void> fazerRequisicao() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/todos/"+controllerText.text);
    http.Response response;
    response = await http.get(url);
    dadosApi = response.body;
    if(response.statusCode==200){
      Map<String, dynamic> dadosFormatados = jsonDecode(dadosApi);
      userId = (dadosFormatados["userId"]);
      taskId = (dadosFormatados["id"]);
      title = (dadosFormatados["title"]);
      completed = (dadosFormatados["completed"]);
      dadosApi = "ID do Usuário: " + userId.toString() + " \n" +"ID da Tarefa: " + taskId.toString() + " \n" + "Título da Tarefa: " + title.toString() + " \n" + "Tarefa completa? " + completed.toString();
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

        TextFormField(
          controller: controllerText,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            filled: true,
            fillColor: Colors.white,
            labelText: "Id",
          ),
        ),

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