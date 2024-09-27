class Aluno{
  int _ra = 0;
  String _nome = "";

  Aluno(this._nome, this._ra);
 
  int get ra => this._ra;
  set ra(int value) => this._ra = value;

  String get nome => this._nome;
  set nome( value) => this._nome = value;


}