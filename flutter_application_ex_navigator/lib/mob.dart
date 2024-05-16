// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_ex_navigator/temporadas.dart';

class MyMob extends StatefulWidget {
  List<Temporadas> lista = [];
  MyMob(this.lista,{super.key});

  @override
  State<MyMob> createState() => _MyMobState();
}

class _MyMobState extends State<MyMob> {
  String escrita = "";

  @override
  Widget build(BuildContext context) {
    mostrar();
    return Scaffold(
      appBar: AppBar(
        title: Text("Mob Psycho 100", style: TextStyle(color: Colors.deepPurple, fontSize: 24, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.grey,
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

          Text("Kageyama Shigeo, o \"Mob\", é um garoto que não leva muito jeito pra se expressar, mas que é um poderoso telepata. Decidido a levar uma vida normal, Mob suprime seus poderes extrasensoriais, mas quando suas emoções atingem um pico de 100%, algo terrível lhe acontece! Rodeado de falsos telepatas, espíritos do mal e misteriosas organizações, como Mob reagirá? Que decisões ele vai tomar?", style: TextStyle(fontSize: 16),),

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