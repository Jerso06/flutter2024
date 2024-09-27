// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_cadastro_musicas/musicos.dart';

class Mymostra extends StatefulWidget {
  List<Musicos> lista =[];
  Mymostra(this.lista,{super.key});

  @override
  State<Mymostra> createState() => _MymostraState();
}

class _MymostraState extends State<Mymostra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.audiotrack_rounded,color: Colors.white,),
        title: Text("Músicas Cadastradas", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.indigo[600],
        actions: [
          Icon(Icons.audiotrack_rounded,color: Colors.white,),
        ],
      ),

      body: Container(
        padding: EdgeInsets.all(5),
        child: Column(children: [
        ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (context, index) => Divider(thickness: 1,color: Colors.white,),
          itemCount: widget.lista.length,
          itemBuilder: (context, index){

            return Container(
              decoration: BoxDecoration(
                color: Colors.indigo[300],
                borderRadius: BorderRadius.circular(30),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(widget.lista[index].artista[0]),
                ),
                title: Text(widget.lista[index].nome,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                subtitle: Text(widget.lista[index].artista,style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold)),
              ),
            );
          }
        ),
        SizedBox(height: 20,),

        SizedBox(
          height: 50,
          width: 200,
        child: ElevatedButton(style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.indigo[100],
          ), 
          onPressed: () {
            Navigator.pop(context);
          }, child: Text("Voltar")),),
      ],)),
    );
  }
}