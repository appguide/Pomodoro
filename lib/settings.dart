import 'package:pomodoro/app/shared/models/pomodoro_model.dart';

class Settings {
  PomodoroModel pomodoro = PomodoroModel();

  int concentracao() => pomodoro.concentracao = 25;
  int intervaloCurto() => pomodoro.intervaloCurto = 05;
  int intervaloLongo() => pomodoro.intervaloLongo = 15;

  Settings();

  decrementConcentracao(concentracao) => pomodoro.decrement(concentracao);
  incrementConcentracao(concentracao) => pomodoro.increment(concentracao);

  decrementIntervaloCurto(intervaloCurto) => pomodoro.decrement(intervaloCurto);
  incrementIntervaloCurto(intervaloCurto) => pomodoro.increment(intervaloCurto);

  decrementIntervaloLongo(intervaloLongo) => pomodoro.decrement(intervaloLongo);
  incrementIntervaloLongo(intervaloLongo) => pomodoro.increment(intervaloLongo);
}
