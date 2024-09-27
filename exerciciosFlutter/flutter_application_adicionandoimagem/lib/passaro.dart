import 'package:flutter/material.dart';

class Passaro extends StatelessWidget {

  final figuraBird = SizedBox(
    child: Image.asset('assets/images/testando.jpg'),
    width: 40,
    height: 40,
  );
  
   Passaro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(children: [
        figuraBird,
        Text("Vamo testar", style: TextStyle(fontFamily: "Micro5-Regular"),)
      ],)),
    );
  }
}