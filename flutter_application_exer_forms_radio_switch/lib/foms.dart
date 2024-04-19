// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last


import 'package:flutter/material.dart';

class MyForms extends StatefulWidget {
  const MyForms({super.key});

  @override
  State<MyForms> createState() => _MyFormsState();
}

class _MyFormsState extends State<MyForms> {


  String strST = "";
  String strIM = "";

  TextEditingController controllerNome = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();

  bool boolEscritaCientifica = false;
  bool boolLiteraturaAfricana = false;
  bool boolArtes = false;
  bool boolEnvioNotificacoes = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulário de interesse em oficinas", style: TextStyle(color: Colors.white, fontSize: 20),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: Container(
        padding: EdgeInsets.all(10),

        child: Column(children: [
          
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [

          ],),

          SizedBox(height: 30,),

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
            controller: controllerEmail,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              filled: true,
              fillColor: Colors.white,
              labelText: "Email",
          ),),

          SizedBox(height: 15,),

          Text("Tipo de Curso", style: TextStyle(fontSize: 14, color: Colors.black, ),),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Somente Técnico"),
            Radio(
              value: "Somente Técnico",
              groupValue: strST,
              onChanged: (value) {
                  strST = value!;
                  setState(() {
                    
                  });
              },),
            Text("Integrado ao Médio"),
            Radio(
              value: "Integrado ao Médio",
              groupValue: strIM,
              onChanged: (value) {
                  strIM = value!;
                  setState(() {
                    
                  });
              },),
          ],),

          Divider(),

          SizedBox(height: 15,),

          Text("Oficinas de Interesse:"),
          SizedBox(height: 5,),
          CheckboxListTile(
              title: Text("Escrita científica"),
              value: boolEscritaCientifica, 
              onChanged: (value) {
                boolEscritaCientifica = value!;
                setState(() {
                  
                });
              },),
          CheckboxListTile(
              title: Text("Literatura Africana"),
              value: boolLiteraturaAfricana, 
              onChanged: (value) {
                boolLiteraturaAfricana = value!;
                setState(() {
                  
                });
              },),
          CheckboxListTile(
              title: Text("Artes"),
              value: boolArtes, 
              onChanged: (value) {
                boolArtes = value!;
                setState(() {
                  
                });
              },),

            Divider(),

              SwitchListTile(
              title: Text("Permitir envio de notificações no email."),
              value: boolEnvioNotificacoes, 
              onChanged: (value) {
                boolEnvioNotificacoes = value;
                setState(() {
                  
                });
              },),

              SizedBox(height: 20,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                ElevatedButton(onPressed: () {
                  
                }, child: Text("Enviar")),
                ElevatedButton(onPressed: () {
                  
                }, child: Text("Cancelar"))
              ],)
        ],),
      ),
    );
  }
}