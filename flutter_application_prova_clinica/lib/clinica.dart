// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, dead_code, prefer_interpolation_to_compose_strings, avoid_print, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_application_prova_clinica/medicos.dart';

class MyClinica extends StatefulWidget {
  const MyClinica({super.key});

  @override
  State<MyClinica> createState() => _MyClinicaState();
}

class _MyClinicaState extends State<MyClinica> {

    TextEditingController controllerNome = TextEditingController();
    TextEditingController controllerCRM = TextEditingController();

    bool boolResidencia = false;
    bool boolEspecializacao = false;
    bool boolPos = false;
    bool boolChamadas = false;

    List<String> formacao = [];
    List<Medicos> listaMedicos = [];

      void limpar(){
      controllerCRM = TextEditingController();
      controllerNome = TextEditingController();
      boolChamadas = false;
      boolEspecializacao = false;
      boolResidencia = false;
      boolPos = false;
    }

    void mostrar(){
      for(var medic in listaMedicos){
      print("Nome: " + medic.nome);
      print("CRM: " + medic.crm);
      print("Formação: " + medic.getFormacao.toString());
      print("Chamadas: " + medic.chamadas.toString());
      print("----------------------");
      }
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar:AppBar(
          title: Text("Clínica do Audrei", style: TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(49, 34, 61, 1),
        ),

        body: Container(
          padding: EdgeInsets.all(10),

          child:Center(child: Column(children: [
            SizedBox(height: 10,),
            Image.asset("assets/images/medical.png", height: 200,), 

            SizedBox(height: 20,),

            TextField(
              controller: controllerNome,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              filled: true,
              fillColor: Colors.white,
              labelText: "Nome",
            ),),

            SizedBox(height: 15,),

            TextField(
              controller: controllerCRM,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              filled: true,
              fillColor: Colors.white,
              labelText: "Conselho Regional de Medicina",
            ),),

            SizedBox(height: 5,),

            Divider(),

            SizedBox(height: 5,),

            Row(mainAxisAlignment: MainAxisAlignment.start,children: [
              Text("Formação:", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)
            ],),

            SizedBox(height: 10,),

            CheckboxListTile(
              title: Text("Residência", style: TextStyle(fontSize: 16),),
              value: boolResidencia, 
              onChanged: (value) {
                boolResidencia = value!;
                setState(() {
                  
                });
              },),

              CheckboxListTile(
              title: Text("Especialização", style: TextStyle(fontSize: 16),),
              value: boolEspecializacao, 
              onChanged: (value) {
                boolEspecializacao = value!;
                setState(() {
                  
                });
              },),

              CheckboxListTile(
              title: Text("Pós Graduação", style: TextStyle(fontSize: 16),),
              value: boolPos, 
              onChanged: (value) {
                boolPos = value!;
                setState(() {
                  
                });
              },),

              SizedBox(height: 5,),

              Divider(),

              SizedBox(height: 5,),

              SwitchListTile(
              title: Text("Permitir chamadas de emergências.", style: TextStyle(fontSize: 16),),
              value: boolChamadas, 
              onChanged: (value) {
                boolChamadas = value;
                setState(() {
                  
                });
              },),

              SizedBox(height: 60,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                ElevatedButton(onPressed: () {
                  if(boolResidencia){
                    formacao.add("Residência");
                  }
                  if(boolEspecializacao){
                    formacao.add("Especialização");
                  }
                  if(boolPos){
                    formacao.add("Pós Graduação");
                  }
                  Medicos med;
                  listaMedicos.add(med = Medicos(controllerNome.text, controllerCRM.text, boolChamadas, formacao));
                  limpar();
                  formacao = [];
                  mostrar();

                  setState(() {
                    
                  });
                }, child: Text("Cadastrar")),
                ElevatedButton(onPressed: () {
                  limpar();
                  setState(() {

                  });
                }, child: Text("Cancelar"))
              ],),


          ],),
        ),
      )
    );
  }
  }