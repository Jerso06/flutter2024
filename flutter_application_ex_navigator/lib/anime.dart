// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyAnime extends StatefulWidget {
  const MyAnime({super.key});

  @override
  State<MyAnime> createState() => _MyAnimeState();
}

class _MyAnimeState extends State<MyAnime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animes Favoritos", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.indigo,
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

          SizedBox(height: 40,),

          Image.network("https://image.spreadshirtmedia.net/image-server/v1/mp/products/T1459A839PA4459PT28D187144250W10000H4186/views/1,width=1200,height=630,appearanceId=839,backgroundColor=F2F2F2/anime-logo-sticker.jpg"),
      ],),),
    );
  }
}