// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_listview/aluno.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List<Aluno> listaL = [Aluno("Jedson", 123), Aluno("Viole", 456), Aluno("Joana", 789)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView", style: TextStyle(color: Colors.white, fontSize: 16),),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(child: Column(children: [
        ListView.separated(
          shrinkWrap: true,
        separatorBuilder: (context, index) => Divider(thickness: 4,),
        itemCount: listaL.length,
        itemBuilder: (context, index)  {
            return ListTile(
              leading: CircleAvatar(
                child: Text(listaL[index].nome[0]),
              ),
              title: Text(listaL[index].nome),
              subtitle: Text(listaL[index].ra.toString()),
              trailing: Text(index.toString())
          );
        },
      ),
      ElevatedButton(onPressed: () {
        
      }, child: Text("Algo"))
      ],),) 
    );
  }
}