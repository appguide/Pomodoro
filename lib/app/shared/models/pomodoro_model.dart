class PomodoroModel {
  int _concentracao;
  int _intervaloCurto;
  int _intervaloLongo;

  PomodoroModel({int concentracao, int intervaloCurto, int intervaloLongo}) {
    this._concentracao = concentracao;
    this._intervaloCurto = intervaloCurto;
    this._intervaloLongo = intervaloLongo;
  }

  int get concentracao => _concentracao;
  set concentracao(int concentracao) => _concentracao = concentracao;
  int get intervaloCurto => _intervaloCurto;
  set intervaloCurto(int intervaloCurto) => _intervaloCurto = intervaloCurto;
  int get intervaloLongo => _intervaloLongo;
  set intervaloLongo(int intervaloLongo) => _intervaloLongo = intervaloLongo;

  int increment(int tempo) {
    return tempo++;
  }

  int decrement(int tempo) {
    return tempo--;
  }

  PomodoroModel.fromJson(Map<String, dynamic> json) {
    _concentracao = json['concentracao'];
    _intervaloCurto = json['intervaloCurto'];
    _intervaloLongo = json['intervaloLongo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['concentracao'] = this._concentracao;
    data['intervaloCurto'] = this._intervaloCurto;
    data['intervaloLongo'] = this._intervaloLongo;
    return data;
  }
}
