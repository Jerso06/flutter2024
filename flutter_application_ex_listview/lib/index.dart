// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_ex_listview/comida.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List<Comida> listaComidas = [
  Comida("Bolo de cenoura", "bolo e cenoura", 8.00, "https://recipesblob.oetker.com.br/assets/70c51771234240e4bca26a7703b09716/750x910/bolo-de-cenoura-com-cobertura-de-chocolate.jpg"),
  Comida("Sonho", "dormir", 4.00, "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFJxC3TYr1KbIe6y0nUvs4vbwLtG5syh7K9w&s"),
  Comida("Pizza de Muçarela", "telefone da pizzaria", 59.99, "https://obrima.com.br/wp-content/uploads/2023/12/pizza-de-mussarela-O-Brima.webp"),
  Comida("Banana", "bananeira", 0.0, "https://static.vecteezy.com/system/resources/previews/019/607/020/non_2x/banana-graphic-clipart-design-free-png.png")];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bar do Toba", style: TextStyle(color: Colors.black, fontSize: 18),),
        backgroundColor: Colors.orange,
      ),

      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(thickness: 4,color: Colors.orange,),
        itemCount: listaComidas.length,
        itemBuilder: (context, index)  {
          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Image.network(listaComidas[index].imagem,width: 35,),
            ),
            title: Text(listaComidas[index].nome),
            subtitle: Text(listaComidas[index].ingredientes),
            trailing: Text(listaComidas[index].valor.toString()),
          );
        },
      ),
    );
  }
}