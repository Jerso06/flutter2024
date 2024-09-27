// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {

  bool messiSelecionado = false;
  bool ribamarSelecionado = false;
  bool audreiSelecionado = false;
  bool pedroHenriqueSelecionado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Text("Messi ou Ribamar"),

          SizedBox(height: 20,),
          Text("Messi 🤢"),
          Checkbox(
            value: messiSelecionado,
            onChanged: (value) {
              messiSelecionado = value!;
              setState(() {
                
              }); //o ! vai prevenir de ser atribuido null na variável
            },
          ),

          SizedBox(height: 15,),

          Text("Ribamar 😎"),
          Checkbox(
            value: ribamarSelecionado,
            onChanged: (value) {
              ribamarSelecionado = value!;
              setState(() {
                
              });
            },),

            SizedBox(height: 15,),

            Text("Escolha para o seu time: "),
            CheckboxListTile(
              title: Text("Audrei"),
              subtitle: Text("Mono Lux"),
              secondary: Icon(Icons.apple),
              value: audreiSelecionado, 
              onChanged: (value) {
                audreiSelecionado = value!;
                setState(() {
                  
                });
              },),

              SizedBox(height: 15,),

              CheckboxListTile(
              title: Text("Pedro Henrique"),
              subtitle: Text("Mono Jax"),
              secondary: Icon(Icons.telegram),
              value: pedroHenriqueSelecionado, 
              onChanged: (value) {
                pedroHenriqueSelecionado = value!;
                setState(() {
                  
                });
              },),

              SizedBox(height: 15,),

            ElevatedButton(onPressed: () {
              print(messiSelecionado.toString() + " " + ribamarSelecionado.toString() + " " + audreiSelecionado.toString() + " " + pedroHenriqueSelecionado.toString());
            }, child: Text("Jae"))
        ],),
      ),
    );
  }
}