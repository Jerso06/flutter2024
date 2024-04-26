// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyValidation extends StatefulWidget {
  const MyValidation({super.key});

  @override
  State<MyValidation> createState() => _MyValidationState();
}

class _MyValidationState extends State<MyValidation> {

  GlobalKey<FormState> chaveValidacao = GlobalKey();

  TextEditingController raController = TextEditingController();
  TextEditingController nomeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Form(
          key: chaveValidacao,

          child: Column(children: [
            TextFormField(
              controller: raController,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                filled: true,
                fillColor: Colors.white,
                labelText: "RA",
              ),
              validator: (value) {
                //no if pode ser o value! ou oq eu coloquei ai
                if(raController.text.isEmpty){
                  return("O campo RA não deve ser vazio");
                }else{
                  if(int.parse(raController.text)<10){
                    return("O RA deve ser maior que 10");
                  }
                }
                return null;
              },
            ),

            SizedBox(height: 10,),

            TextFormField(
              controller: nomeController,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                filled: true,
                fillColor: Colors.white,
                labelText: "Nome",
              ),
              validator: (value) {
                if(nomeController.text.isEmpty){
                  return("O campo nome não deve estar vazio");
                }else{
                  if(value!.length<3){
                    return("O nome deve ter pelo menos 3 caracteres");
                  }
                }
              },
            ),

            SizedBox(height: 15,),

            ElevatedButton(onPressed: () {
              if(chaveValidacao.currentState!.validate()){
                print(nomeController.text + " " + raController.text);
              }
            }, child: Text("Confirmar"))
        ],
      ),
    ),
        
        
      ),
    );
  }
}