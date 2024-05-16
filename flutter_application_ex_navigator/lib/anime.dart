// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_ex_navigator/akudama.dart';
import 'package:flutter_application_ex_navigator/ansatsu.dart';
import 'package:flutter_application_ex_navigator/mob.dart';
import 'package:flutter_application_ex_navigator/temporadas.dart';

class MyAnime extends StatefulWidget {
  const MyAnime({super.key});

  @override
  State<MyAnime> createState() => _MyAnimeState();
}

class _MyAnimeState extends State<MyAnime> {

  List<Temporadas> listTemp = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animes Favoritos", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),

      bottomNavigationBar: BottomAppBar(
        height: 200,
        color: Colors.indigo,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                listTemp = [Temporadas("Assassination Classroom", 22), Temporadas("Assassination Classroom Second Season", 25)];
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyAnsatsu(listTemp)));
              },child: Image.network("https://cdn.myanimelist.net/images/anime/5/75639.jpg", height: 140,),
            ),),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                listTemp = [Temporadas("Mob Psycho 100", 12), Temporadas("Mob Psycho 100 II", 13), Temporadas("Mob Psycho 100 III", 12)];
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyMob(listTemp),));
              },child: Image.network("https://br.web.img3.acsta.net/c_310_420/pictures/20/11/12/14/25/3371142.jpg", height: 140,),
            ),),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                listTemp = [Temporadas("Akudama Drive", 12)];
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyAkudama(listTemp),));
              }, child: Image.network("https://imgsrv.crunchyroll.com/cdn-cgi/image/format=auto,fit=contain,width=480,height=720,quality=85/catalog/crunchyroll/6ffaa454c90d50b7cbd380d66f9dcd96.jpe", height: 140,),
            ),),
        ],),
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://i.pinimg.com/originals/a0/93/a9/a093a915f1336bc45fbd7ab2990bd6a0.jpg"),
          fit: BoxFit.cover
          ),
        ),
        child: Column(children: [
          Padding(padding: EdgeInsets.all(10)),

          SizedBox(height: 60,),

          Image.network("https://images.fineartamerica.com/images/artworkimages/medium/3/anime-manga-word-text-tony-rubino-transparent.png"),
      ],),),
    );
  }
}