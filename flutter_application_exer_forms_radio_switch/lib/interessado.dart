// ignore_for_file: unnecessary_this

class Interessado{

  String _nome = "";
  String _email = "";
  String _tipoCurso = "";
  bool _not = false;
  List<String> _oficinas = [];

  Interessado(String nome, String email, String tipoCurso, bool not, List<String> oficinas){
    this._nome = nome;
    this._email = email;
    this._tipoCurso = tipoCurso;
    this._not = not;
    this._oficinas = oficinas;
  }

  String get nome => this._nome;
  set nome( value) => this._nome = value;

  String get email => this._email;
  set email( value) => this._email = value;

  String get tipoCurso => this._tipoCurso;
  set tipoCurso( value) => this._tipoCurso = value;

  bool get not => this._not;
  set not( value) => this._not = value;

  List<String> get oficinas => this._oficinas;

}