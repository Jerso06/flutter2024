// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyOperations extends StatefulWidget {
  const MyOperations({super.key});

  @override
  State<MyOperations> createState() => _MyOperationsState();
}

class _MyOperationsState extends State<MyOperations> {

  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  double resultado = 0;
  String txtResult = "";

  void soma(){
    double n1 = double.parse(txt1.text);
    double n2 = double.parse(txt2.text);
    resultado = n1 + n2; 
  }

  void diferenca(){
    double n1 = double.parse(txt1.text);
    double n2 = double.parse(txt2.text);
    resultado = n1 - n2; 
  }

  void multiplicacao(){
    double n1 = double.parse(txt1.text);
    double n2 = double.parse(txt2.text);
    resultado = n1 * n2; 
  }

  void divisao(){
    double n1 = double.parse(txt1.text);
    double n2 = double.parse(txt2.text);
    resultado = n1 / n2; 
  }

  void limpar(){
    txt1.text = "";
    txt2.text = "";
    txtResult = "";
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Operações"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),

      body: Container(
        padding: EdgeInsets.all(20),

        child: Column(children: [
          SizedBox(height: 40,),

          Text("Operações para aprendizado do uso do Widget TextField"),

          SizedBox(height: 20,),

          TextField(
            controller: txt1,
            decoration: InputDecoration(
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            filled: true,
            fillColor: Colors.white,
            labelText: "Bota",
            ),
            onChanged: (value) {
              print(value);
            },
          ),

          SizedBox(height: 10,),

          TextField(
            controller: txt2,
            decoration: InputDecoration(
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            filled: true,
            fillColor: Colors.white,
            labelText: "Bota",
            ),
            onChanged: (value) {
              print(value);
            },
          ),

          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            ElevatedButton(onPressed: () {
              soma();
              txtResult = resultado.toString();
              setState(() {
                
              });
            }, child: Icon(Icons.add)),
            ElevatedButton(onPressed: () {
              diferenca();
              txtResult = resultado.toString();
              setState(() {
                
              });
            }, child: Icon(Icons.remove)),
            ElevatedButton(onPressed: () {
              multiplicacao();
              txtResult = resultado.toString();
              setState(() {
                
              });
            }, child: Icon(Icons.close)),
            ElevatedButton(onPressed: () {
              divisao();
              txtResult = resultado.toString();
              setState(() {
                
              });
            }, child: Icon(Icons.discord_rounded)),
            ElevatedButton(onPressed: () {
              limpar();
              setState(() {
                
              });
            }, child: Text("CE")),
            ],),
            SizedBox(height: 20,),
            Text("Resultado: " + txtResult),
        ],),
      ),
    );
  }
}