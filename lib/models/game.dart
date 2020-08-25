import 'package:flutter/material.dart';

class Game {
  String name;
  int followers;
  bool isSelected;
  String image;
  Color color;

  Game({
    @required this.name,
    @required this.image,
    @required this.followers,
    @required this.color,
    this.isSelected = false,
  });
}
