// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_import, unused_import, prefer_interpolation_to_compose_strings, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyIndex extends StatefulWidget {
  const MyIndex({super.key});

  @override
  State<MyIndex> createState() => _MyIndexState();
}

class _MyIndexState extends State<MyIndex> {
  String dadosApi = "teste";
  String strRadio = "";
  TextEditingController controllerId = TextEditingController();

  //people
  var namePeople;
  var height;
  var mass;
  var hairColor;
  var skinColor;

  //planets
  var namePlanets;
  var rotationPeriod;
  var orbitalPeriod;
  var diameter;
  var climate;

  //starships
  var nameStarships;
  var model;
  var manufacturer;
  var costInCredits;
  var length;

  Future<void> request() async {
    var url;
    if(strRadio == "People"){
      url = Uri.parse("https://swapi.dev/api/people/${controllerId.text}");
    }else if(strRadio == "Planets"){
      url = Uri.parse("https://swapi.dev/api/planets/${controllerId.text}");
    }else if(strRadio == "Starships"){
      url = Uri.parse("https://swapi.dev/api/starships/${controllerId.text}");
    }
    http.Response response;
    response = await http.get(url);
    dadosApi = response.body;
      if(response.statusCode == 200){
        Map<String, dynamic> formatedData = jsonDecode(dadosApi);
        if(strRadio == "People"){
          namePeople = formatedData["name"];
          height = formatedData["height"];
          mass = formatedData["mass"];
          hairColor = formatedData["hair_color"];
          skinColor = formatedData["skin_color"];
          dadosApi = "Name: " + namePeople + "\nHeight: " + height + "\nMass: " + mass + "\nHair Color: " + hairColor + "\nSkin Color: " + skinColor;
        }
        else if (strRadio == "Planets"){
          namePlanets = formatedData["name"];
          rotationPeriod = formatedData["rotation_period"];
          orbitalPeriod = formatedData["orbital_period"];
          diameter = formatedData["diameter"];
          climate = formatedData["climate"];
          dadosApi = "Name: " + namePlanets + "\nRotation Period: " + rotationPeriod + "\nOrbital Period: " + orbitalPeriod + "\nDiameter: " + diameter + "\nClimate: " + climate; 
        }
        else if(strRadio == "Starships"){
          nameStarships = formatedData["name"];
          model = formatedData["model"];
          manufacturer = formatedData["manufacturer"];
          costInCredits = formatedData["cost_in_credits"];
          length = formatedData["length"];
          dadosApi = "Name: "+ nameStarships + "\nModel: " + model + "\nManufacturer: "+ manufacturer + "\nCost In Credits: " + costInCredits + "\nLength: " + length;
        }
      }
    setState(() {
        
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Star Wars",style: TextStyle(color: Colors.yellow, fontSize: 20, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(10),
        child: Center(child: Column(children: [
          SizedBox(height: 20,),

          TextFormField(
            controller: controllerId,
            style: TextStyle(color: Colors.yellow),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50),borderSide: BorderSide(color: Colors.yellow)),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50),borderSide: BorderSide(color: Colors.yellow)),
              filled: true,
              fillColor: Colors.black,
              labelText: "ID",
              labelStyle: TextStyle(color: Colors.yellow, ),
            ),
          ),

          SizedBox(height: 20,),

          Text("Tipo de Dados:",style: TextStyle(color: Colors.yellow, fontSize: 20, fontWeight: FontWeight.bold),),
          Row(mainAxisAlignment: MainAxisAlignment.start,children: [
            Text("People", style: TextStyle(fontSize: 16, color: Colors.yellow),),
            Radio(
              value: "People",
              activeColor: Colors.yellow,
              groupValue: strRadio,
              onChanged: (value) {
                strRadio = value!;
                setState(() {
                  
                });
              },),
          ],),
          SizedBox(height: 15,),
          Row(mainAxisAlignment: MainAxisAlignment.start,children: [
            Text("Planets", style: TextStyle(fontSize: 16, color: Colors.yellow),),
            Radio(
              value: "Planets",
              groupValue: strRadio,
              activeColor: Colors.yellow,
              onChanged: (value) {
                strRadio = value!;
                setState(() {
                  
                });
              },),
          ],),
          SizedBox(height: 15,),
          Row(mainAxisAlignment: MainAxisAlignment.start,children: [
            Text("Starships", style: TextStyle(fontSize: 16,color: Colors.yellow),),
            Radio(
              value: "Starships",
              groupValue: strRadio,
              activeColor: Colors.yellow,
              onChanged: (value) {
                strRadio = value!;
                setState(() {
                  
                });
              },)
          ],),

          SizedBox(height: 20,),

          SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.yellow,
              textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
            ),
              onPressed: () {
                request();
              },
              child: Text("Buscar Dados")),
          ),

          SizedBox(height: 20,),

          Text(dadosApi, style: TextStyle(color: Colors.yellow, fontSize: 22, fontWeight: FontWeight.bold),)
      ],),),
    ));
  }
}