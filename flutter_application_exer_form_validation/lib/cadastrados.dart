// ignore_for_file: empty_constructor_bodies

class Cadastrados{

  String _username = "";
  String _password = "";


  get getUsername => this._username;
  set setUsername( username) => this._username = username;

  get getPassword => this._password;
  set setPassword( password) => this._password = password;

  Cadastrados(String nome, String senha){
    this._username = nome;
    this._password = senha;
  }
}