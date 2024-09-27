// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_ex_navigator/temporadas.dart';

class MyAnsatsu extends StatefulWidget {
  List<Temporadas> lista = [];
  MyAnsatsu(this.lista, {super.key});

  @override
  State<MyAnsatsu> createState() => _MyAnsatsuState();
}

class _MyAnsatsuState extends State<MyAnsatsu> {
  String escrita = "";
  
  @override
  Widget build(BuildContext context) {
    mostrar();
    return Scaffold(
      appBar: AppBar(
        title: Text("Ansatsu Kyoushitsu", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://img.freepik.com/fotos-premium/antigos-fundos-de-papel_196038-18919.jpg"),
          fit: BoxFit.cover
          ),
        ),
        padding: EdgeInsets.all(10),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,children: [
            Text("Sinópse:",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ],),

          SizedBox(height: 10,),

          Text("Esqueça lições de casa e provas relâmpago. A Classe 3-E tem uma tarefa muito mais importante: matar seu professor antes do fim do ano!", style: TextStyle(fontSize: 16),),

          SizedBox(height: 15,),

          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text("Temporadas e episódios:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
          ],),
        
        SizedBox(height: 15,),

        Text(escrita, style: TextStyle(fontSize: 16),),
        ],),),
    );
  }
  void mostrar(){
    for(int i = 0; i<widget.lista.length; i++){
      escrita = escrita + widget.lista[i].getNome + ": " + widget.lista[i].getNEp.toString() + "\n";
    }
  }
}