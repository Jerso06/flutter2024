// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';

class MyLitros extends StatefulWidget {
  const MyLitros({super.key});

  @override
  State<MyLitros> createState() => _MyLitrosState();
}

class _MyLitrosState extends State<MyLitros>{
  TextEditingController controllertxtGasolina = TextEditingController();
  TextEditingController controllertxtAlcool = TextEditingController();
  String txtAlcool ="";
  String txtGasolina ="";
  String recomendacao ="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),

      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(children: [

          DecoratedBox(decoration: BoxDecoration(
            color: Colors.blue,
          ),
            child: Icon(
              Icons.local_gas_station, 
              color: Colors.white,
              size: 100,
            )
          ),

          SizedBox(height: 20,),

          TextField(
            controller: controllertxtGasolina,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              filled: true,
              fillColor: Colors.white,
              labelText: "Insira o preço da Gasolina"
            ),
          ),

          SizedBox(height: 20,),

          TextField(
            controller: controllertxtAlcool,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              filled: true,
              fillColor: Colors.white,
              labelText: "Insira o preço da Álcool"
            ),
          ),

          SizedBox(height: 25,),

          ElevatedButton(onPressed: () {
            txtGasolina = controllertxtGasolina.text;
            txtAlcool = controllertxtAlcool.text;
            calcula();

            setState(() {
              
            });

          }, child: Text("Calcular")),

          SizedBox(height: 20,),

          Text("Recomendação: " + recomendacao),
        
        ],),),
      );
    }
    void calcula(){
     double resultado = 0;
      resultado = double.parse(txtAlcool)/double.parse(txtGasolina);
      if(resultado>0.7){
        recomendacao = "Gasolina é melhor";
      }else{
        recomendacao = "Álcool é melhor";
      }
    }

}