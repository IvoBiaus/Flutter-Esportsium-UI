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
  bool ended;

  Match({
    @required this.name,
    @required this.teamOne,
    @required this.teamTwo,
    @required this.game,
    this.isLive = false,
    this.teamOneScore = 0,
    this.teamTwoScore = 0,
    this.time = "00:00",
    this.ended = false,
  });

  bool teamOneWonOrTie() {
    return this.teamOneScore >= this.teamTwoScore;
  }

  bool teamTwoWonOrTie() {
    return this.teamTwoScore >= this.teamOneScore;
  }
}
