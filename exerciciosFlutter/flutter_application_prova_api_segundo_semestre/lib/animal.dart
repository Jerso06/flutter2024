class Animal {

  String _nome = "";
  String _filo = "";
  int _tempoVida = 0;
 
 String get nome => this._nome;

 set nome(String value) => this._nome = value;

  get filo => this._filo;

 set filo( value) => this._filo = value;

  get tempoVida => this._tempoVida;

 set tempoVida( value) => this._tempoVida = value;

 Animal();

 Animal.fromJson(Map<String, dynamic> json):
 _nome = json['nome'],
 _filo = json['filo'],
 _tempoVida = json['tempoVida']
 ;


}