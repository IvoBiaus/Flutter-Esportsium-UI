import 'package:flutter/material.dart';

class Team {
  String name;
  int followers;
  Color teamColor;
  Color gameColor;

  Team({
    @required this.name,
    @required this.teamColor,
    @required this.gameColor,
    this.followers = 0,
  });
}
