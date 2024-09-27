class Info {
  String _bairro = "";
  String _localidade = "";
  String _estado = "";
  String _regiao = "";
  String _complemento = "";
 
  Info();

  Info.fromJson(Map<String, dynamic> json)
  :
    _bairro = json["bairro"],
    _estado = json["estado"],
    _localidade = json["localidade"],
    _regiao = json["regiao"],
    _complemento = json["complemento"]
  ;
 
 String get getBairro => this._bairro;

 set setBairro(String bairro) => this._bairro = bairro;

  get getLocalidade => this._localidade;

 set setLocalidade( localidade) => this._localidade = localidade;

  get getEstado => this._estado;

 set setEstado( estado) => this._estado = estado;

  get getRegiao => this._regiao;

 set setRegiao( regiao) => this._regiao = regiao;

 String get getComplemento => this._complemento;

 set complemento(String value) => this._complemento = value;

}