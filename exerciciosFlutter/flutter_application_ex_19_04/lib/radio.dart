// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings


import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  const MyRadio({super.key});

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {

  String str1 = "";
  String str2 = "";
  bool bool1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(children: [
        Text("Rapaz ele ta sem zap?"),
        SizedBox(height: 10,),
        Text("Sim"),
        Radio(
          value: "SIM",
           groupValue: str1,
            onChanged: (value) {
          str1 = value!;
          setState(() {
            
          });
        },),
        Text("Não"),
        Radio(
          value: "NÃO",
          groupValue: str1,
          onChanged: (value) {
              str1 = value!;
              setState(() {
                
              });
            },),

        SizedBox(height: 10,),

        ElevatedButton(
              onPressed: () {
                print("Deu certo " + str1);
                print("Só falo uma coisa: " + str2);
                print("Vou tomar uma? " + bool1.toString());
            }, child: Text("OK")
          ),

          SizedBox(height: 15,),

        RadioListTile(
            title: Text("Hakuna Matata"),
            subtitle: Text("É lindo dizer"),
            secondary: Icon(Icons.discord),
            value: "Timão", 
            groupValue: str2, 
            onChanged: (value) {
              str2 = value!;
              setState(() {
                
              });
            },),

          RadioListTile(
            title: Text("Atum com Batata"),
            subtitle: Text("É bom pra comer"),
            secondary: Icon(Icons.facebook),
            value: "Pumba", 
            groupValue: str2, 
            onChanged: (value) {
              str2 = value!;
              setState(() {
                
              });
            },),

            SizedBox(height: 30,),

            Text("Switch"),
            SizedBox(height: 5,),

            SwitchListTile(
              title: Text("Bora tomar uma."),
              subtitle: Text("Num vai naum"),
              secondary: Icon(Icons.no_drinks),
              value: bool1, 
              onChanged: (value) {
                bool1 = value;
                setState(() {
                  
                });
              },)
      ],),),
    );
  }
}