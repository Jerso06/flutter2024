// ignore_for_file: prefer_final_fields, unused_field, unnecessary_this

class Comida{
  String _nome = "";
  String _ingredientes = "";
  double _valor = 0;
  String _imagem = "";
  
  Comida(this._nome,this._ingredientes,this._valor, this._imagem);

  String get ingredientes => this._ingredientes;
  set ingredientes(String value) => this._ingredientes = value;
 
  String get nome => this._nome;
  set nome(String value) => this._nome = value;

  double get valor => this._valor;
  set valor( value) => this._valor = value;

  String get imagem => this._imagem;
  set imagem(String value) => this._imagem = value;
}