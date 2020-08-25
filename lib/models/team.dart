import 'package:flutter/material.dart';
import './game.dart';

class Team {
  String name;
  int followers;
  Color teamColor;
  Game game;

  Team({
    @required this.name,
    @required this.teamColor,
    @required this.game,
    this.followers = 0,
  });
}
