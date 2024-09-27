// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_exer_forms_radio_switch/interessado.dart';

class MyForms extends StatefulWidget {
  const MyForms({super.key});

  @override
  State<MyForms> createState() => _MyFormsState();
}

class _MyFormsState extends State<MyForms> {


  String strRadio = "";

  TextEditingController controllerNome = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();

  bool boolEscritaCientifica = false;
  bool boolLiteraturaAfricana = false;
  bool boolArtes = false;
  bool boolEnvioNotificacoes = false;

  List<Interessado> listaInteressados =[];
  List<String> interesse =[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulário de interesse em oficinas", style: TextStyle(color: Colors.white, fontSize: 20),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: SingleChildScrollView(
        child:Container(
        padding: EdgeInsets.all(10),
        child: Column(children: [
          
          SizedBox(height: 30,),

          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7qA3AsbBrzLTXegdY-L8xC3FBUMbiqJ1qqF2t1UOoRncel51DfSoogSPkmdcWWmRVdPs&usqp=CAU", height: 130,),
            Image.network("https://i.pinimg.com/474x/a1/b0/d3/a1b0d3f92d2a24f7886d9292ace0a2c7.jpg", height: 130,),
            Image.network("https://i.pinimg.com/236x/1c/39/06/1c390656f302f231f4552c036602c19b.jpg", height: 130,)
          ],),

          SizedBox(height: 50,),

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
          SizedBox(height: 10,),
          Divider(),

          SizedBox(height: 40,),

          Row(mainAxisAlignment: MainAxisAlignment.start,children: [
            Text("Tipo de Curso", style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold ),),
          ],),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Somente Técnico", style: TextStyle(fontSize: 16),),
            Radio(
              value: "Somente Técnico",
              groupValue: strRadio,
              onChanged: (value) {
                  strRadio = value!;
                  setState(() {
                    
                  });
              },),
            Text("Integrado ao Médio", style: TextStyle(fontSize: 16),),
            Radio(
              value: "Integrado ao Médio",
              groupValue: strRadio,
              onChanged: (value) {
                  strRadio = value!;
                  setState(() {
                    
                  });
              },),
          ],),

          Divider(),

          SizedBox(height: 40,),

          Row(mainAxisAlignment: MainAxisAlignment.start,children: [
            Text("Oficinas de Interesse:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          ],),
          SizedBox(height: 10,),
          CheckboxListTile(
              title: Text("Escrita científica", style: TextStyle(fontSize: 16),),
              value: boolEscritaCientifica, 
              onChanged: (value) {
                boolEscritaCientifica = value!;
                setState(() {
                  
                });
              },),
          CheckboxListTile(
              title: Text("Literatura Africana", style: TextStyle(fontSize: 16),),
              value: boolLiteraturaAfricana, 
              onChanged: (value) {
                boolLiteraturaAfricana = value!;
                setState(() {
                  
                });
              },),
          CheckboxListTile(
              title: Text("Artes", style: TextStyle(fontSize: 16),),
              value: boolArtes, 
              onChanged: (value) {
                boolArtes = value!;
                setState(() {
                  
                });
              },),

            Divider(),

            SizedBox(height: 40,),

              SwitchListTile(
              title: Text("Permitir envio de notificações no email.", style: TextStyle(fontSize: 16),),
              value: boolEnvioNotificacoes, 
              onChanged: (value) {
                boolEnvioNotificacoes = value;
                setState(() {
                  
                });
              },),

              SizedBox(height: 20,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                ElevatedButton(onPressed: () {
                  if(boolEscritaCientifica){
                    interesse.add("Escrita Científica");
                  }
                  if(boolLiteraturaAfricana){
                    interesse.add("Literatura Africana");
                  }
                  if(boolArtes){
                    interesse.add("Artes");
                  }
                  Interessado inte;
                  listaInteressados.add(inte = Interessado(controllerNome.text, controllerEmail.text, strRadio, boolEnvioNotificacoes, interesse));
                  limpar();
                  interesse = [];
                  mostrar();

                  setState(() {
                    
                  });
                }, child: Text("Enviar")),
                ElevatedButton(onPressed: () {
                  limpar();
                  setState(() {

                  });
                }, child: Text("Cancelar"))
              ],)
        ],),
      ),
    ));
  }
 
    void limpar(){
      controllerNome = TextEditingController();
      controllerEmail = TextEditingController();
      strRadio = "";
      boolArtes = false;
      boolEnvioNotificacoes = false;
      boolEscritaCientifica = false;
      boolLiteraturaAfricana = false;
  }

  void mostrar(){
    for(var interes in listaInteressados){
      print("Nome: " + interes.nome);
      print("Email: " + interes.email);
      print("Tipo do Curso: " + interes.tipoCurso);
      print("Oficinas interessadas: " + interes.oficinas.toString());
      print("Notificações: " + interes.not.toString());
      print("----------------------");
    }
  }
}

