// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_exer_form_validation/cadastrados.dart';

class MyValidator extends StatefulWidget {
  const MyValidator({super.key});

  @override
  State<MyValidator> createState() => _MyValidatorState();
}

class _MyValidatorState extends State<MyValidator> {

  GlobalKey<FormState> chaveValidacao = GlobalKey();

  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();

  String conseguiu = "";

  List<Cadastrados> pessoas = [Cadastrados("Beatriz", "Beatriz123"), Cadastrados("Jozias", "Jozias456")];
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child:Form(
          key: chaveValidacao,

        child: Center(child:  Column(children: [
          Image.network("https://previews.123rf.com/images/sanek13744/sanek137442209/sanek13744220900018/191062866-vector-%C3%ADcone-de-cadeado-de-desenho-animado-em-estilo-c%C3%B4mico-bloquear-desbloquear-pictograma-de.jpg", height: 200,),

          SizedBox(height: 20,),

          Text("Login", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w300),),
          SizedBox(height: 5,),
          Divider(),

          SizedBox(height: 30,),

          TextFormField(
            controller: userController,
            decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                filled: true,
                fillColor: Colors.white,
                labelText: "Usuário",
              ),
              validator: (value) {
                //no if pode ser o value! ou oq eu coloquei ai
                if(userController.text.isEmpty){
                  return("O campo Username não deve ser vazio");
                }
                return null;
              },
            ),

            SizedBox(height: 20,),

            TextFormField(
            controller: passController,
            decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                filled: true,
                fillColor: Colors.white,
                labelText: "Senha",
              ),
              validator: (value) {
                //no if pode ser o value! ou oq eu coloquei ai
                if(passController.text.isEmpty){
                  return("O campo Senha não deve ser vazio");
                }
                return null;
              },
            ),

            SizedBox(height: 30,),

            Text(conseguiu),
            ElevatedButton(onPressed: () {
              for(var verifica in pessoas){
                if(userController.text == verifica.getUsername && passController.text == verifica.getPassword){
                  conseguiu = "Conectado com sucesso";
                }else{
                  conseguiu = "Usuário ou senha invalidos";
                }
              }
              setState(() {
                
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            ),
            child: Text("Conectar", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),)),
        ],
      ),
    ),
  ),
  ),
  );
  }
}