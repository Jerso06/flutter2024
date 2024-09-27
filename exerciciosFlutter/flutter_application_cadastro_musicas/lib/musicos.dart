// ignore_for_file: prefer_final_fields, unused_field

class Musicos{

  String _nome = "";
  String _artista = "";
  
 Musicos(this._nome, this._artista);
 
 String get nome => this._nome;

 set nome(String value) => this._nome = value;

 String get artista => this._artista;

 set artista( value) => this._artista = value;


}