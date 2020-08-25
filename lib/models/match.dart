import 'package:flutter/material.dart';
import 'package:flutteresportsiumui/models/game.dart';
import './team.dart';

class Match {
  String name;
  Team teamOne;
  Team teamTwo;
  bool isLive;
  int teamOneScore;
  int teamTwoScore;
  String time;
  Game game;

  Match({
    @required this.name,
    @required this.teamOne,
    @required this.teamTwo,
    @required this.game,
    this.isLive = false,
    this.teamOneScore = 0,
    this.teamTwoScore = 0,
    this.time = "00:00",
  });
}
