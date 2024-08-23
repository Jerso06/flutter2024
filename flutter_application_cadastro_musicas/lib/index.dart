// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_cadastro_musicas/mostra.dart';
import 'package:flutter_application_cadastro_musicas/musicos.dart';

class MyMusic extends StatefulWidget {
  const MyMusic({super.key});

  @override
  State<MyMusic> createState() => _MyMusicState();
}

class _MyMusicState extends State<MyMusic> {

  TextEditingController controllerNome = TextEditingController();
  TextEditingController controllerArtist = TextEditingController();

  List<Musicos> listMusic = [];

  void limpar(){
    controllerArtist = TextEditingController();
    controllerNome = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Músicos",style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.lightBlue[600],

        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => Mymostra(listMusic))));
          }, icon: Icon(Icons.audiotrack, color: Colors.white,))
        ],
      ),

      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(children: [

        Image.network("https://static.vecteezy.com/system/resources/previews/001/207/718/original/band-performer-png.png", height: 250, width: 400,),

        SizedBox(height: 20,),

        TextFormField(
          controller: controllerNome,
          decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                filled: true,
                fillColor: Colors.white,
                labelText: "Música",
              ),
        ),

        SizedBox(height: 10,),

        TextFormField(
          controller: controllerArtist,
          decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                filled: true,
                fillColor: Colors.white,
                labelText: "Artista",
              ),
        ),

        SizedBox(height: 20,),

        Row(mainAxisAlignment: MainAxisAlignment.center,children: [
          SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.blue[200],
          ),
            onPressed: () {
            Musicos msc;
            listMusic.add(msc = Musicos(controllerNome.text, controllerArtist.text));
            limpar();
            setState(() {
              
            });
          }, child: Text("Cadastrar")),),
          SizedBox(width: 15,),
          SizedBox(
            height: 50,
            width: 200,
          child: ElevatedButton(style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.blue[200],
          ), 
          onPressed: () {
            limpar();
            setState(() {
              
            });
          }, child: Text("Limpar")),),
        ],)
      ],),), 
    );
  }
}