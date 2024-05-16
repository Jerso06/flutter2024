// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_ex_navigator/temporadas.dart';

class MyAkudama extends StatefulWidget {
  List<Temporadas> lista = [];
  MyAkudama(this.lista,{super.key});

  @override
  State<MyAkudama> createState() => _MyAkudamaState();
}

class _MyAkudamaState extends State<MyAkudama> {
  String escrita = "";

  @override
  Widget build(BuildContext context) {
    mostrar();
    return Scaffold(
      appBar: AppBar(
        title: Text("Akudama Drive", style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 24,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.orange,
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

          Text("Uma jornada perigosa está para começar quando uma civil se envolve no modo de vida Akudama e testemunha seus impulsos criminosos.", style: TextStyle(fontSize: 16),),

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
      escrita = escrita + widget.lista[i].getNome + ":" + widget.lista[i].getNEp.toString() + "\n";
    }
  }
}