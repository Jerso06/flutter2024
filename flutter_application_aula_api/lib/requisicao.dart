// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyRequisicao extends StatefulWidget {
  const MyRequisicao({super.key});

  @override
  State<MyRequisicao> createState() => _MyRequisicaoState();
}

class _MyRequisicaoState extends State<MyRequisicao> {
  String dadosApi = "Teste";

  Future<void> fazerRequisicao() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/todos/200");
    http.Response response;
    response = await http.get(url);
    dadosApi = response.body;
    setState(() {
      
    });
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