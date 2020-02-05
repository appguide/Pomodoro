import 'dart:async';

import 'package:flutter/material.dart';

class ClockModel {
  Timer _timer;
  Duration _duration;
  String _buttonText;

  ClockModel(
    this._buttonText,
    this._duration,
    this._timer,
  );

  factory ClockModel.fromJson(Map<String, dynamic> json) {
    return ClockModel(
        //field: json[''],
        );
  }

  Map<String, dynamic> toJson() => {};
}
