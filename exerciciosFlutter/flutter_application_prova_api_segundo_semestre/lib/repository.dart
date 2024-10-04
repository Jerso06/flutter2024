import 'package:flutter_application_prova_api_segundo_semestre/animal.dart';

class AnimalRepository{

  List<Animal> _listaAn = [];
 
 List<Animal> get listaAn => this._listaAn;

 set listaAn(List<Animal> value) => this._listaAn = value;

  AnimalRepository();


}