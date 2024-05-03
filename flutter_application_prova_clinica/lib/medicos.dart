// ignore_for_file: empty_constructor_bodies

class Medicos{

  String _nome = "";
  String _crm = "";
  bool _chamadas = false;
  List<String> _formacao = [];

  Medicos(String nome, String crm, bool chamadas, List<String> formacao){
    this._nome = nome;
    this._crm = crm;
    this._chamadas = chamadas;
    this._formacao = formacao;
  }

 String get nome => this._nome;

 set nome(value) => this._nome = value;

 String get crm => this._crm;

 set crm( value) => this._crm = value;

  bool get chamadas => this._chamadas;

 set chamadas( value) => this._chamadas = value;

 List<String> get getFormacao => this._formacao;

 set setFormacao( formacao) => this._formacao = formacao;
}